package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$LongDeserializer extends StdDeserializer.PrimitiveOrWrapperDeserializer<Long>
{
  public StdDeserializer$LongDeserializer(Class<Long> paramClass, Long paramLong)
  {
    super(paramClass, paramLong);
  }

  public final Long deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseLong(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.LongDeserializer
 * JD-Core Version:    0.6.2
 */