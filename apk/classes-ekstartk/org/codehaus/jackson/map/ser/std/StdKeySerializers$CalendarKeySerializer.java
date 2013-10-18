package org.codehaus.jackson.map.ser.std;

import java.util.Calendar;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

public class StdKeySerializers$CalendarKeySerializer extends SerializerBase<Calendar>
{
  protected static final JsonSerializer<?> instance = new CalendarKeySerializer();

  public StdKeySerializers$CalendarKeySerializer()
  {
    super(Calendar.class);
  }

  public void serialize(Calendar paramCalendar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramSerializerProvider.defaultSerializeDateKey(paramCalendar.getTimeInMillis(), paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializers.CalendarKeySerializer
 * JD-Core Version:    0.6.2
 */