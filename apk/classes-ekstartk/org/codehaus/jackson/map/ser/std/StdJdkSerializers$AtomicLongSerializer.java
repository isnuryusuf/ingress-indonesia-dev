package org.codehaus.jackson.map.ser.std;

import java.util.concurrent.atomic.AtomicLong;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$AtomicLongSerializer extends ScalarSerializerBase<AtomicLong>
{
  public StdJdkSerializers$AtomicLongSerializer()
  {
    super(AtomicLong.class, false);
  }

  public final void serialize(AtomicLong paramAtomicLong, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramAtomicLong.get());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.AtomicLongSerializer
 * JD-Core Version:    0.6.2
 */