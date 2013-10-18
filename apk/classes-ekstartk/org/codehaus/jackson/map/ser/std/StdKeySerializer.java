package org.codehaus.jackson.map.ser.std;

import java.util.Date;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public class StdKeySerializer extends SerializerBase<Object>
{
  static final StdKeySerializer instace = new StdKeySerializer();

  public StdKeySerializer()
  {
    super(Object.class);
  }

  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if ((paramObject instanceof Date))
    {
      paramSerializerProvider.defaultSerializeDateKey((Date)paramObject, paramJsonGenerator);
      return;
    }
    paramJsonGenerator.writeFieldName(paramObject.toString());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializer
 * JD-Core Version:    0.6.2
 */