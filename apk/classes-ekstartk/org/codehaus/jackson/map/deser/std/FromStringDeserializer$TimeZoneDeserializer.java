package org.codehaus.jackson.map.deser.std;

import java.util.TimeZone;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$TimeZoneDeserializer extends FromStringDeserializer<TimeZone>
{
  public FromStringDeserializer$TimeZoneDeserializer()
  {
    super(TimeZone.class);
  }

  protected TimeZone _deserialize(String paramString, DeserializationContext paramDeserializationContext)
  {
    return TimeZone.getTimeZone(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.TimeZoneDeserializer
 * JD-Core Version:    0.6.2
 */