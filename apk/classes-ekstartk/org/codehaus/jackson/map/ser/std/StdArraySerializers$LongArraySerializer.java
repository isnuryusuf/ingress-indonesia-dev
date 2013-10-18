package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$LongArraySerializer extends StdArraySerializers.ArraySerializerBase<long[]>
{
  public StdArraySerializers$LongArraySerializer()
  {
    this(null);
  }

  public StdArraySerializers$LongArraySerializer(TypeSerializer paramTypeSerializer)
  {
    super([J.class, paramTypeSerializer, null);
  }

  public final ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new LongArraySerializer(paramTypeSerializer);
  }

  public final void serializeContents(long[] paramArrayOfLong, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = 0;
    int j = paramArrayOfLong.length;
    while (i < j)
    {
      paramJsonGenerator.writeNumber(paramArrayOfLong[i]);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.LongArraySerializer
 * JD-Core Version:    0.6.2
 */