package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializable;
import org.codehaus.jackson.map.JsonSerializableWithType;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.SerializerBase;

@JacksonStdImpl
public class SerializableSerializer extends SerializerBase<JsonSerializable>
{
  public static final SerializableSerializer instance = new SerializableSerializer();

  protected SerializableSerializer()
  {
    super(JsonSerializable.class);
  }

  public void serialize(JsonSerializable paramJsonSerializable, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonSerializable.serialize(paramJsonGenerator, paramSerializerProvider);
  }

  public final void serializeWithType(JsonSerializable paramJsonSerializable, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    if ((paramJsonSerializable instanceof JsonSerializableWithType))
    {
      ((JsonSerializableWithType)paramJsonSerializable).serializeWithType(paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
      return;
    }
    serialize(paramJsonSerializable, paramJsonGenerator, paramSerializerProvider);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.SerializableSerializer
 * JD-Core Version:    0.6.2
 */