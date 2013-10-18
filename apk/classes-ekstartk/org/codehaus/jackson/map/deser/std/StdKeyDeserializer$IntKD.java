package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$IntKD extends StdKeyDeserializer
{
  StdKeyDeserializer$IntKD()
  {
    super(Integer.class);
  }

  public final Integer _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    return Integer.valueOf(_parseInt(paramString));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.IntKD
 * JD-Core Version:    0.6.2
 */