package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$ByteDeserializer extends StdDeserializer.PrimitiveOrWrapperDeserializer<Byte>
{
  public StdDeserializer$ByteDeserializer(Class<Byte> paramClass, Byte paramByte)
  {
    super(paramClass, paramByte);
  }

  public final Byte deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseByte(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.ByteDeserializer
 * JD-Core Version:    0.6.2
 */