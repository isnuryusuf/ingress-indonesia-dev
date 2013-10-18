package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$DoubleKD extends StdKeyDeserializer
{
  StdKeyDeserializer$DoubleKD()
  {
    super(Double.class);
  }

  public final Double _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    return Double.valueOf(_parseDouble(paramString));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.DoubleKD
 * JD-Core Version:    0.6.2
 */