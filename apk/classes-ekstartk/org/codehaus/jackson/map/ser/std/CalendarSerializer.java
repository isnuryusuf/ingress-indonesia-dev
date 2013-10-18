package org.codehaus.jackson.map.ser.std;

import java.util.Calendar;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class CalendarSerializer extends ScalarSerializerBase<Calendar>
{
  public static CalendarSerializer instance = new CalendarSerializer();

  public CalendarSerializer()
  {
    super(Calendar.class);
  }

  public void serialize(Calendar paramCalendar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramSerializerProvider.defaultSerializeDateValue(paramCalendar.getTimeInMillis(), paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.CalendarSerializer
 * JD-Core Version:    0.6.2
 */