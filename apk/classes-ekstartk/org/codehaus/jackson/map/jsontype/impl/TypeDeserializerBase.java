package org.codehaus.jackson.map.jsontype.impl;

import java.util.HashMap;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.type.JavaType;

public abstract class TypeDeserializerBase extends TypeDeserializer
{
  protected final JavaType _baseType;
  protected final JavaType _defaultImpl;
  protected JsonDeserializer<Object> _defaultImplDeserializer;
  protected final HashMap<String, JsonDeserializer<Object>> _deserializers;
  protected final TypeIdResolver _idResolver;
  protected final BeanProperty _property;

  protected TypeDeserializerBase(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, Class<?> paramClass)
  {
    this._baseType = paramJavaType;
    this._idResolver = paramTypeIdResolver;
    this._property = paramBeanProperty;
    this._deserializers = new HashMap();
    if (paramClass == null)
    {
      this._defaultImpl = null;
      return;
    }
    this._defaultImpl = paramJavaType.forcedNarrowBy(paramClass);
  }

  protected final JsonDeserializer<Object> _findDefaultImplDeserializer(DeserializationContext paramDeserializationContext)
  {
    if (this._defaultImpl == null)
      return null;
    synchronized (this._defaultImpl)
    {
      if (this._defaultImplDeserializer == null)
        this._defaultImplDeserializer = paramDeserializationContext.getDeserializerProvider().findValueDeserializer(paramDeserializationContext.getConfig(), this._defaultImpl, this._property);
      JsonDeserializer localJsonDeserializer = this._defaultImplDeserializer;
      return localJsonDeserializer;
    }
  }

  protected final JsonDeserializer<Object> _findDeserializer(DeserializationContext paramDeserializationContext, String paramString)
  {
    JavaType localJavaType;
    synchronized (this._deserializers)
    {
      localObject2 = (JsonDeserializer)this._deserializers.get(paramString);
      if (localObject2 == null)
      {
        localJavaType = this._idResolver.typeFromId(paramString);
        if (localJavaType != null)
          break label89;
        if (this._defaultImpl == null)
          throw paramDeserializationContext.unknownTypeException(this._baseType, paramString);
      }
    }
    label89: JsonDeserializer localJsonDeserializer;
    for (Object localObject2 = _findDefaultImplDeserializer(paramDeserializationContext); ; localObject2 = localJsonDeserializer)
    {
      this._deserializers.put(paramString, localObject2);
      return localObject2;
      if ((this._baseType != null) && (this._baseType.getClass() == localJavaType.getClass()))
        localJavaType = this._baseType.narrowBy(localJavaType.getRawClass());
      localJsonDeserializer = paramDeserializationContext.getDeserializerProvider().findValueDeserializer(paramDeserializationContext.getConfig(), localJavaType, this._property);
    }
  }

  public String baseTypeName()
  {
    return this._baseType.getRawClass().getName();
  }

  public String getPropertyName()
  {
    return null;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[').append(getClass().getName());
    localStringBuilder.append("; base-type:").append(this._baseType);
    localStringBuilder.append("; id-resolver: ").append(this._idResolver);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.TypeDeserializerBase
 * JD-Core Version:    0.6.2
 */