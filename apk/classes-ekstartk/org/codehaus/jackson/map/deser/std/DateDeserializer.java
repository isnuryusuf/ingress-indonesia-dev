package org.codehaus.jackson.map.deser.std;

import java.util.Date;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;

public class DateDeserializer extends StdScalarDeserializer<Date>
{
  public DateDeserializer()
  {
    super(Date.class);
  }

  public Date deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseDate(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.DateDeserializer
 * JD-Core Version:    0.6.2
 */