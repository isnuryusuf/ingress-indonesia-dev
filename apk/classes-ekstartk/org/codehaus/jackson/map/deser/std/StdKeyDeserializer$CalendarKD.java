package org.codehaus.jackson.map.deser.std;

import java.util.Calendar;
import java.util.Date;
import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$CalendarKD extends StdKeyDeserializer
{
  protected StdKeyDeserializer$CalendarKD()
  {
    super(Calendar.class);
  }

  public final Calendar _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    Date localDate = paramDeserializationContext.parseDate(paramString);
    if (localDate == null)
      return null;
    return paramDeserializationContext.constructCalendar(localDate);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.CalendarKD
 * JD-Core Version:    0.6.2
 */