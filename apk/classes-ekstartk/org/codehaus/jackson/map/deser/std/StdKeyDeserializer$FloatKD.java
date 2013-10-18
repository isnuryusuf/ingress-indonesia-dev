package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$FloatKD extends StdKeyDeserializer
{
  StdKeyDeserializer$FloatKD()
  {
    super(Float.class);
  }

  public final Float _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    return Float.valueOf((float)_parseDouble(paramString));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.FloatKD
 * JD-Core Version:    0.6.2
 */