package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.std.SerializerBase;

public class UnknownSerializer extends SerializerBase<Object>
{
  public UnknownSerializer()
  {
    super(Object.class);
  }

  protected void failForEmpty(Object paramObject)
  {
    throw new JsonMappingException("No serializer found for class " + paramObject.getClass().getName() + " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) )");
  }

  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS))
      failForEmpty(paramObject);
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeEndObject();
  }

  public final void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS))
      failForEmpty(paramObject);
    paramTypeSerializer.writeTypePrefixForObject(paramObject, paramJsonGenerator);
    paramTypeSerializer.writeTypeSuffixForObject(paramObject, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.UnknownSerializer
 * JD-Core Version:    0.6.2
 */