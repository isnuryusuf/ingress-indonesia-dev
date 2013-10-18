package org.codehaus.jackson.map.ser.std;

import java.util.concurrent.atomic.AtomicInteger;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$AtomicIntegerSerializer extends ScalarSerializerBase<AtomicInteger>
{
  public StdJdkSerializers$AtomicIntegerSerializer()
  {
    super(AtomicInteger.class, false);
  }

  public final void serialize(AtomicInteger paramAtomicInteger, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramAtomicInteger.get());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.AtomicIntegerSerializer
 * JD-Core Version:    0.6.2
 */