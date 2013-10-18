package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class NullSerializer extends SerializerBase<Object>
{
  public static final NullSerializer instance = new NullSerializer();

  private NullSerializer()
  {
    super(Object.class);
  }

  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNull();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.NullSerializer
 * JD-Core Version:    0.6.2
 */