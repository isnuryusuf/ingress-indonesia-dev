package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializableWithType;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class SerializableWithTypeSerializer extends SerializerBase<JsonSerializableWithType>
{
  public static final SerializableWithTypeSerializer instance = new SerializableWithTypeSerializer();

  protected SerializableWithTypeSerializer()
  {
    super(JsonSerializableWithType.class);
  }

  public void serialize(JsonSerializableWithType paramJsonSerializableWithType, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonSerializableWithType.serialize(paramJsonGenerator, paramSerializerProvider);
  }

  public final void serializeWithType(JsonSerializableWithType paramJsonSerializableWithType, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramJsonSerializableWithType.serializeWithType(paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.SerializableWithTypeSerializer
 * JD-Core Version:    0.6.2
 */