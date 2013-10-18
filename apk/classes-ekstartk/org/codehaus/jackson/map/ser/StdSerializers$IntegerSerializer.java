package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.NonTypedScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$IntegerSerializer extends NonTypedScalarSerializerBase<Integer>
{
  public StdSerializers$IntegerSerializer()
  {
    super(Integer.class);
  }

  public final void serialize(Integer paramInteger, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramInteger.intValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.IntegerSerializer
 * JD-Core Version:    0.6.2
 */