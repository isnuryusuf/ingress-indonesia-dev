package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public class StdKeySerializers$StringKeySerializer extends SerializerBase<String>
{
  public StdKeySerializers$StringKeySerializer()
  {
    super(String.class);
  }

  public void serialize(String paramString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeFieldName(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializers.StringKeySerializer
 * JD-Core Version:    0.6.2
 */