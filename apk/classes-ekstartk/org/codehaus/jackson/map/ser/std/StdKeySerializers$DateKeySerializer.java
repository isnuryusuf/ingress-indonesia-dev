package org.codehaus.jackson.map.ser.std;

import java.util.Date;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

public class StdKeySerializers$DateKeySerializer extends SerializerBase<Date>
{
  protected static final JsonSerializer<?> instance = new DateKeySerializer();

  public StdKeySerializers$DateKeySerializer()
  {
    super(Date.class);
  }

  public void serialize(Date paramDate, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramSerializerProvider.defaultSerializeDateKey(paramDate, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializers.DateKeySerializer
 * JD-Core Version:    0.6.2
 */