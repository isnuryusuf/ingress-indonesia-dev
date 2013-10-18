package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$ShortKD extends StdKeyDeserializer
{
  StdKeyDeserializer$ShortKD()
  {
    super(Integer.class);
  }

  public final Short _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    int i = _parseInt(paramString);
    if ((i < -32768) || (i > 32767))
      throw paramDeserializationContext.weirdKeyException(this._keyClass, paramString, "overflow, value can not be represented as 16-bit value");
    return Short.valueOf((short)i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.ShortKD
 * JD-Core Version:    0.6.2
 */