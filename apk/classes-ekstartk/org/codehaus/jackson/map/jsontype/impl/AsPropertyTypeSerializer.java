package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public class AsPropertyTypeSerializer extends AsArrayTypeSerializer
{
  protected final String _typePropertyName;

  public AsPropertyTypeSerializer(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, String paramString)
  {
    super(paramTypeIdResolver, paramBeanProperty);
    this._typePropertyName = paramString;
  }

  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeStringField(this._typePropertyName, this._idResolver.idFromValue(paramObject));
  }

  public void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeEndObject();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsPropertyTypeSerializer
 * JD-Core Version:    0.6.2
 */