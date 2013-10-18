package org.codehaus.jackson.map.ser.std;

import java.util.concurrent.atomic.AtomicReference;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$AtomicReferenceSerializer extends SerializerBase<AtomicReference<?>>
{
  public StdJdkSerializers$AtomicReferenceSerializer()
  {
    super(AtomicReference.class, false);
  }

  public final void serialize(AtomicReference<?> paramAtomicReference, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramSerializerProvider.defaultSerializeValue(paramAtomicReference.get(), paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.AtomicReferenceSerializer
 * JD-Core Version:    0.6.2
 */