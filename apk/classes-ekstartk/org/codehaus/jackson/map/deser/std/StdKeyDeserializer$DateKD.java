package org.codehaus.jackson.map.deser.std;

import java.util.Date;
import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$DateKD extends StdKeyDeserializer
{
  protected StdKeyDeserializer$DateKD()
  {
    super(Date.class);
  }

  public final Date _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    return paramDeserializationContext.parseDate(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.DateKD
 * JD-Core Version:    0.6.2
 */