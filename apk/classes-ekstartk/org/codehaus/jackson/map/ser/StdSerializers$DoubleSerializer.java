package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.NonTypedScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$DoubleSerializer extends NonTypedScalarSerializerBase<Double>
{
  static final DoubleSerializer instance = new DoubleSerializer();

  public StdSerializers$DoubleSerializer()
  {
    super(Double.class);
  }

  public final void serialize(Double paramDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramDouble.doubleValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.DoubleSerializer
 * JD-Core Version:    0.6.2
 */