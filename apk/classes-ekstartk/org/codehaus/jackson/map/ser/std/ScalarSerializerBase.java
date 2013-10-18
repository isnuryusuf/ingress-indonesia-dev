package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public abstract class ScalarSerializerBase<T> extends SerializerBase<T>
{
  protected ScalarSerializerBase(Class<T> paramClass)
  {
    super(paramClass);
  }

  protected ScalarSerializerBase(Class<?> paramClass, boolean paramBoolean)
  {
    super(paramClass);
  }

  public void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramT, paramJsonGenerator);
    serialize(paramT, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(paramT, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.ScalarSerializerBase
 * JD-Core Version:    0.6.2
 */