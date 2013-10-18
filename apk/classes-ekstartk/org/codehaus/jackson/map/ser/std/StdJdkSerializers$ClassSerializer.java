package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$ClassSerializer extends ScalarSerializerBase<Class<?>>
{
  public StdJdkSerializers$ClassSerializer()
  {
    super(Class.class, false);
  }

  public final void serialize(Class<?> paramClass, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeString(paramClass.getName());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.ClassSerializer
 * JD-Core Version:    0.6.2
 */