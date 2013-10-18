package org.codehaus.jackson.map.deser;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.InternCache;

public abstract class SettableBeanProperty
  implements BeanProperty
{
  protected final Annotations _contextAnnotations;
  protected String _managedReferenceName;
  protected SettableBeanProperty.NullProvider _nullProvider;
  protected final String _propName;
  protected int _propertyIndex = -1;
  protected final JavaType _type;
  protected JsonDeserializer<Object> _valueDeserializer;
  protected TypeDeserializer _valueTypeDeserializer;

  protected SettableBeanProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations)
  {
    if ((paramString == null) || (paramString.length() == 0));
    for (this._propName = ""; ; this._propName = InternCache.instance.intern(paramString))
    {
      this._type = paramJavaType;
      this._contextAnnotations = paramAnnotations;
      this._valueTypeDeserializer = paramTypeDeserializer;
      return;
    }
  }

  protected SettableBeanProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    this._propName = paramSettableBeanProperty._propName;
    this._type = paramSettableBeanProperty._type;
    this._contextAnnotations = paramSettableBeanProperty._contextAnnotations;
    this._valueDeserializer = paramSettableBeanProperty._valueDeserializer;
    this._valueTypeDeserializer = paramSettableBeanProperty._valueTypeDeserializer;
    this._nullProvider = paramSettableBeanProperty._nullProvider;
    this._managedReferenceName = paramSettableBeanProperty._managedReferenceName;
    this._propertyIndex = paramSettableBeanProperty._propertyIndex;
  }

  protected SettableBeanProperty(SettableBeanProperty paramSettableBeanProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    this._propName = paramSettableBeanProperty._propName;
    this._type = paramSettableBeanProperty._type;
    this._contextAnnotations = paramSettableBeanProperty._contextAnnotations;
    this._valueTypeDeserializer = paramSettableBeanProperty._valueTypeDeserializer;
    this._managedReferenceName = paramSettableBeanProperty._managedReferenceName;
    this._propertyIndex = paramSettableBeanProperty._propertyIndex;
    this._valueDeserializer = paramJsonDeserializer;
    SettableBeanProperty.NullProvider localNullProvider = null;
    if (paramJsonDeserializer == null);
    while (true)
    {
      this._nullProvider = localNullProvider;
      return;
      Object localObject = paramJsonDeserializer.getNullValue();
      localNullProvider = null;
      if (localObject != null)
        localNullProvider = new SettableBeanProperty.NullProvider(this._type, localObject);
    }
  }

  protected IOException _throwAsIOE(Exception paramException)
  {
    if ((paramException instanceof IOException))
      throw ((IOException)paramException);
    if ((paramException instanceof RuntimeException))
      throw ((RuntimeException)paramException);
    while (paramException.getCause() != null)
      paramException = paramException.getCause();
    throw new JsonMappingException(paramException.getMessage(), null, paramException);
  }

  protected void _throwAsIOE(Exception paramException, Object paramObject)
  {
    if ((paramException instanceof IllegalArgumentException))
    {
      String str1;
      StringBuilder localStringBuilder;
      if (paramObject == null)
      {
        str1 = "[NULL]";
        localStringBuilder = new StringBuilder("Problem deserializing property '").append(getPropertyName());
        localStringBuilder.append("' (expected type: ").append(getType());
        localStringBuilder.append("; actual type: ").append(str1).append(")");
        String str2 = paramException.getMessage();
        if (str2 == null)
          break label117;
        localStringBuilder.append(", problem: ").append(str2);
      }
      while (true)
      {
        throw new JsonMappingException(localStringBuilder.toString(), null, paramException);
        str1 = paramObject.getClass().getName();
        break;
        label117: localStringBuilder.append(" (no error message provided)");
      }
    }
    _throwAsIOE(paramException);
  }

  public void assignIndex(int paramInt)
  {
    if (this._propertyIndex != -1)
      throw new IllegalStateException("Property '" + getName() + "' already had index (" + this._propertyIndex + "), trying to assign " + paramInt);
    this._propertyIndex = paramInt;
  }

  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
    {
      if (this._nullProvider == null)
        return null;
      return this._nullProvider.nullValue(paramDeserializationContext);
    }
    if (this._valueTypeDeserializer != null)
      return this._valueDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, this._valueTypeDeserializer);
    return this._valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
  }

  public abstract void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject);

  public Object getInjectableValueId()
  {
    return null;
  }

  public String getManagedReferenceName()
  {
    return this._managedReferenceName;
  }

  public abstract AnnotatedMember getMember();

  public final String getName()
  {
    return this._propName;
  }

  public int getPropertyIndex()
  {
    return this._propertyIndex;
  }

  @Deprecated
  public String getPropertyName()
  {
    return this._propName;
  }

  public JavaType getType()
  {
    return this._type;
  }

  public JsonDeserializer<Object> getValueDeserializer()
  {
    return this._valueDeserializer;
  }

  public TypeDeserializer getValueTypeDeserializer()
  {
    return this._valueTypeDeserializer;
  }

  public boolean hasValueDeserializer()
  {
    return this._valueDeserializer != null;
  }

  public boolean hasValueTypeDeserializer()
  {
    return this._valueTypeDeserializer != null;
  }

  public abstract void set(Object paramObject1, Object paramObject2);

  public void setManagedReferenceName(String paramString)
  {
    this._managedReferenceName = paramString;
  }

  public String toString()
  {
    return "[property '" + getName() + "']";
  }

  public abstract SettableBeanProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty
 * JD-Core Version:    0.6.2
 */