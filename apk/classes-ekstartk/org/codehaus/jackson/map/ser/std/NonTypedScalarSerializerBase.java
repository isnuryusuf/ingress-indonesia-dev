package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public abstract class NonTypedScalarSerializerBase<T> extends ScalarSerializerBase<T>
{
  protected NonTypedScalarSerializerBase(Class<T> paramClass)
  {
    super(paramClass);
  }

  public final void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    serialize(paramT, paramJsonGenerator, paramSerializerProvider);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.NonTypedScalarSerializerBase
 * JD-Core Version:    0.6.2
 */