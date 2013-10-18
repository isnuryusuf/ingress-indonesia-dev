package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$ShortDeserializer extends StdDeserializer.PrimitiveOrWrapperDeserializer<Short>
{
  public StdDeserializer$ShortDeserializer(Class<Short> paramClass, Short paramShort)
  {
    super(paramClass, paramShort);
  }

  public final Short deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseShort(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.ShortDeserializer
 * JD-Core Version:    0.6.2
 */