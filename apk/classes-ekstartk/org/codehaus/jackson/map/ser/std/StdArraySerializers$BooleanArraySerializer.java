package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$BooleanArraySerializer extends StdArraySerializers.ArraySerializerBase<boolean[]>
{
  public StdArraySerializers$BooleanArraySerializer()
  {
    super([Z.class, null, null);
  }

  public final ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }

  public final void serializeContents(boolean[] paramArrayOfBoolean, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = 0;
    int j = paramArrayOfBoolean.length;
    while (i < j)
    {
      paramJsonGenerator.writeBoolean(paramArrayOfBoolean[i]);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.BooleanArraySerializer
 * JD-Core Version:    0.6.2
 */