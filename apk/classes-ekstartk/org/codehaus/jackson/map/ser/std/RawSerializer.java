package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class RawSerializer<T> extends SerializerBase<T>
{
  public RawSerializer(Class<?> paramClass)
  {
    super(paramClass, false);
  }

  public void serialize(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeRawValue(paramT.toString());
  }

  public void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramT, paramJsonGenerator);
    serialize(paramT, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(paramT, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.RawSerializer
 * JD-Core Version:    0.6.2
 */