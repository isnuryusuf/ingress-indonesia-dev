package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.type.JavaType;

public class AsExternalTypeDeserializer extends AsArrayTypeDeserializer
{
  protected final String _typePropertyName;

  public AsExternalTypeDeserializer(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, Class<?> paramClass, String paramString)
  {
    super(paramJavaType, paramTypeIdResolver, paramBeanProperty, paramClass);
    this._typePropertyName = paramString;
  }

  public String getPropertyName()
  {
    return this._typePropertyName;
  }

  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.EXTERNAL_PROPERTY;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsExternalTypeDeserializer
 * JD-Core Version:    0.6.2
 */