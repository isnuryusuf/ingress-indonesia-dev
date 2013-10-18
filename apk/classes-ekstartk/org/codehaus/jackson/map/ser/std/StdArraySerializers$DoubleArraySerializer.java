package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$DoubleArraySerializer extends StdArraySerializers.ArraySerializerBase<double[]>
{
  public StdArraySerializers$DoubleArraySerializer()
  {
    super([D.class, null, null);
  }

  public final ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }

  public final void serializeContents(double[] paramArrayOfDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = 0;
    int j = paramArrayOfDouble.length;
    while (i < j)
    {
      paramJsonGenerator.writeNumber(paramArrayOfDouble[i]);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.DoubleArraySerializer
 * JD-Core Version:    0.6.2
 */