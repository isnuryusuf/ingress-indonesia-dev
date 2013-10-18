package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$ShortArraySerializer extends StdArraySerializers.ArraySerializerBase<short[]>
{
  public StdArraySerializers$ShortArraySerializer()
  {
    this(null);
  }

  public StdArraySerializers$ShortArraySerializer(TypeSerializer paramTypeSerializer)
  {
    super([S.class, paramTypeSerializer, null);
  }

  public final ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new ShortArraySerializer(paramTypeSerializer);
  }

  public final void serializeContents(short[] paramArrayOfShort, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = 0;
    int j = paramArrayOfShort.length;
    while (i < j)
    {
      paramJsonGenerator.writeNumber(paramArrayOfShort[i]);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.ShortArraySerializer
 * JD-Core Version:    0.6.2
 */