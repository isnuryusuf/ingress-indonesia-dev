package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.type.JavaType;

public final class SettableAnyProperty
{
  protected final BeanProperty _property;
  protected final Method _setter;
  protected final JavaType _type;
  protected JsonDeserializer<Object> _valueDeserializer;

  public SettableAnyProperty(BeanProperty paramBeanProperty, Method paramMethod, JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer)
  {
    this._property = paramBeanProperty;
    this._type = paramJavaType;
    this._setter = paramMethod;
    this._valueDeserializer = paramJsonDeserializer;
  }

  public SettableAnyProperty(BeanProperty paramBeanProperty, AnnotatedMethod paramAnnotatedMethod, JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer)
  {
    this(paramBeanProperty, paramAnnotatedMethod.getAnnotated(), paramJavaType, paramJsonDeserializer);
  }

  private String getClassName()
  {
    return this._setter.getDeclaringClass().getName();
  }

  protected final void _throwAsIOE(Exception paramException, String paramString, Object paramObject)
  {
    if ((paramException instanceof IllegalArgumentException))
    {
      String str1;
      StringBuilder localStringBuilder;
      if (paramObject == null)
      {
        str1 = "[NULL]";
        localStringBuilder = new StringBuilder("Problem deserializing \"any\" property '").append(paramString);
        localStringBuilder.append("' of class " + getClassName() + " (expected type: ").append(this._type);
        localStringBuilder.append("; actual type: ").append(str1).append(")");
        String str2 = paramException.getMessage();
        if (str2 == null)
          break label136;
        localStringBuilder.append(", problem: ").append(str2);
      }
      while (true)
      {
        throw new JsonMappingException(localStringBuilder.toString(), null, paramException);
        str1 = paramObject.getClass().getName();
        break;
        label136: localStringBuilder.append(" (no error message provided)");
      }
    }
    if ((paramException instanceof IOException))
      throw ((IOException)paramException);
    if ((paramException instanceof RuntimeException))
      throw ((RuntimeException)paramException);
    while (paramException.getCause() != null)
      paramException = paramException.getCause();
    throw new JsonMappingException(paramException.getMessage(), null, paramException);
  }

  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
      return null;
    return this._valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
  }

  public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
  {
    set(paramObject, paramString, deserialize(paramJsonParser, paramDeserializationContext));
  }

  public final BeanProperty getProperty()
  {
    return this._property;
  }

  public final JavaType getType()
  {
    return this._type;
  }

  public final boolean hasValueDeserializer()
  {
    return this._valueDeserializer != null;
  }

  public final void set(Object paramObject1, String paramString, Object paramObject2)
  {
    try
    {
      this._setter.invoke(paramObject1, new Object[] { paramString, paramObject2 });
      return;
    }
    catch (Exception localException)
    {
      _throwAsIOE(localException, paramString, paramObject2);
    }
  }

  public final String toString()
  {
    return "[any property on class " + getClassName() + "]";
  }

  public final SettableAnyProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new SettableAnyProperty(this._property, this._setter, this._type, paramJsonDeserializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableAnyProperty
 * JD-Core Version:    0.6.2
 */