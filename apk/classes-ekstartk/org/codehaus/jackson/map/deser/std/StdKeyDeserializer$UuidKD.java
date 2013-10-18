package org.codehaus.jackson.map.deser.std;

import java.util.UUID;
import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$UuidKD extends StdKeyDeserializer
{
  protected StdKeyDeserializer$UuidKD()
  {
    super(UUID.class);
  }

  public final UUID _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    return UUID.fromString(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.UuidKD
 * JD-Core Version:    0.6.2
 */