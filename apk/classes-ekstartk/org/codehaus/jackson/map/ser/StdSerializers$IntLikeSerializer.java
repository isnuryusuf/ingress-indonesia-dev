package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.ScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$IntLikeSerializer extends ScalarSerializerBase<Number>
{
  static final IntLikeSerializer instance = new IntLikeSerializer();

  public StdSerializers$IntLikeSerializer()
  {
    super(Number.class);
  }

  public final void serialize(Number paramNumber, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramNumber.intValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.IntLikeSerializer
 * JD-Core Version:    0.6.2
 */