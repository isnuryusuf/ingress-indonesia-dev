package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public class AsExternalTypeSerializer extends TypeSerializerBase
{
  protected final String _typePropertyName;

  public AsExternalTypeSerializer(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, String paramString)
  {
    super(paramTypeIdResolver, paramBeanProperty);
    this._typePropertyName = paramString;
  }

  protected final void _writeSuffix(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeEndObject();
    paramJsonGenerator.writeStringField(this._typePropertyName, this._idResolver.idFromValue(paramObject));
  }

  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeStartObject();
  }

  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeStartObject();
  }

  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeStartObject();
  }

  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    paramJsonGenerator.writeStartObject();
  }

  public void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    _writeSuffix(paramObject, paramJsonGenerator);
  }

  public void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    _writeSuffix(paramObject, paramJsonGenerator);
  }

  public void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    _writeSuffix(paramObject, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsExternalTypeSerializer
 * JD-Core Version:    0.6.2
 */