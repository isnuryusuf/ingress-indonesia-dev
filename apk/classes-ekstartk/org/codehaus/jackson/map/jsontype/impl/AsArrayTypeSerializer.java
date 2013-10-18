package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public class AsArrayTypeSerializer extends TypeSerializerBase
{
  public AsArrayTypeSerializer(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    super(paramTypeIdResolver, paramBeanProperty);
  }

  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(this._idResolver.idFromValue(paramObject));
    paramJsonGenerator.writeStartArray();
  }

  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(this._idResolver.idFromValue(paramObject));
    paramJsonGenerator.writeStartObject();
  }

  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(this._idResolver.idFromValue(paramObject));
  }

  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(this._idResolver.idFromValueAndType(paramObject, paramClass));
  }

  public void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeEndArray();
    paramJsonGenerator.writeEndArray();
  }

  public void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeEndObject();
    paramJsonGenerator.writeEndArray();
  }

  public void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeEndArray();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsArrayTypeSerializer
 * JD-Core Version:    0.6.2
 */