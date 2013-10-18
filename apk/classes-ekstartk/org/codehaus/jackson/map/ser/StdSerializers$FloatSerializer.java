package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.ScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$FloatSerializer extends ScalarSerializerBase<Float>
{
  static final FloatSerializer instance = new FloatSerializer();

  public StdSerializers$FloatSerializer()
  {
    super(Float.class);
  }

  public final void serialize(Float paramFloat, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramFloat.floatValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.FloatSerializer
 * JD-Core Version:    0.6.2
 */