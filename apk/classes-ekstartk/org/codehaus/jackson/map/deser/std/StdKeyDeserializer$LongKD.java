package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$LongKD extends StdKeyDeserializer
{
  StdKeyDeserializer$LongKD()
  {
    super(Long.class);
  }

  public final Long _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    return Long.valueOf(_parseLong(paramString));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.LongKD
 * JD-Core Version:    0.6.2
 */