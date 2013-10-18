package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$ByteArraySerializer extends SerializerBase<byte[]>
{
  public StdArraySerializers$ByteArraySerializer()
  {
    super([B.class);
  }

  public final void serializeWithType(byte[] paramArrayOfByte, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramArrayOfByte, paramJsonGenerator);
    paramJsonGenerator.writeBinary(paramArrayOfByte);
    paramTypeSerializer.writeTypeSuffixForScalar(paramArrayOfByte, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.ByteArraySerializer
 * JD-Core Version:    0.6.2
 */