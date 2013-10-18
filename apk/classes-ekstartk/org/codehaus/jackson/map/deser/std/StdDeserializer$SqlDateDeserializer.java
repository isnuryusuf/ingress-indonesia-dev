package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;

public class StdDeserializer$SqlDateDeserializer extends StdScalarDeserializer<java.sql.Date>
{
  public StdDeserializer$SqlDateDeserializer()
  {
    super(java.sql.Date.class);
  }

  public java.sql.Date deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    java.util.Date localDate = _parseDate(paramJsonParser, paramDeserializationContext);
    if (localDate == null)
      return null;
    return new java.sql.Date(localDate.getTime());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.SqlDateDeserializer
 * JD-Core Version:    0.6.2
 */