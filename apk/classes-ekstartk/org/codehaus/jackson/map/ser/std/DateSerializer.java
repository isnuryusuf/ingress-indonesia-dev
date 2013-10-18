package org.codehaus.jackson.map.ser.std;

import java.util.Date;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class DateSerializer extends ScalarSerializerBase<Date>
{
  public static DateSerializer instance = new DateSerializer();

  public DateSerializer()
  {
    super(Date.class);
  }

  public void serialize(Date paramDate, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramSerializerProvider.defaultSerializeDateValue(paramDate, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.DateSerializer
 * JD-Core Version:    0.6.2
 */