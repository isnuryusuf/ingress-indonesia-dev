package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.ScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$LongSerializer extends ScalarSerializerBase<Long>
{
  static final LongSerializer instance = new LongSerializer();

  public StdSerializers$LongSerializer()
  {
    super(Long.class);
  }

  public final void serialize(Long paramLong, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramLong.longValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.LongSerializer
 * JD-Core Version:    0.6.2
 */