package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$IntArraySerializer extends StdArraySerializers.ArraySerializerBase<int[]>
{
  public StdArraySerializers$IntArraySerializer()
  {
    super([I.class, null, null);
  }

  public final ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }

  public final void serializeContents(int[] paramArrayOfInt, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = 0;
    int j = paramArrayOfInt.length;
    while (i < j)
    {
      paramJsonGenerator.writeNumber(paramArrayOfInt[i]);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.IntArraySerializer
 * JD-Core Version:    0.6.2
 */