package org.codehaus.jackson.map.ser.std;

import java.util.concurrent.atomic.AtomicBoolean;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$AtomicBooleanSerializer extends ScalarSerializerBase<AtomicBoolean>
{
  public StdJdkSerializers$AtomicBooleanSerializer()
  {
    super(AtomicBoolean.class, false);
  }

  public final void serialize(AtomicBoolean paramAtomicBoolean, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeBoolean(paramAtomicBoolean.get());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.AtomicBooleanSerializer
 * JD-Core Version:    0.6.2
 */