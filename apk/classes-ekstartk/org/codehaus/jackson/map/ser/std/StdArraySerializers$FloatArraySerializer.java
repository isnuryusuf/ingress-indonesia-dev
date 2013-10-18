package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$FloatArraySerializer extends StdArraySerializers.ArraySerializerBase<float[]>
{
  public StdArraySerializers$FloatArraySerializer()
  {
    this(null);
  }

  public StdArraySerializers$FloatArraySerializer(TypeSerializer paramTypeSerializer)
  {
    super([F.class, paramTypeSerializer, null);
  }

  public final ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new FloatArraySerializer(paramTypeSerializer);
  }

  public final void serializeContents(float[] paramArrayOfFloat, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = 0;
    int j = paramArrayOfFloat.length;
    while (i < j)
    {
      paramJsonGenerator.writeNumber(paramArrayOfFloat[i]);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.FloatArraySerializer
 * JD-Core Version:    0.6.2
 */