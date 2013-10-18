package org.codehaus.jackson.map.deser.std;

import java.sql.Timestamp;
import java.util.Date;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;

public class TimestampDeserializer extends StdScalarDeserializer<Timestamp>
{
  public TimestampDeserializer()
  {
    super(Timestamp.class);
  }

  public Timestamp deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return new Timestamp(_parseDate(paramJsonParser, paramDeserializationContext).getTime());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.TimestampDeserializer
 * JD-Core Version:    0.6.2
 */