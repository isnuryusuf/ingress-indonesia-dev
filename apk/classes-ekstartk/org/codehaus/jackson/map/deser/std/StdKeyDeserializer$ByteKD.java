package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$ByteKD extends StdKeyDeserializer
{
  StdKeyDeserializer$ByteKD()
  {
    super(Byte.class);
  }

  public final Byte _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    int i = _parseInt(paramString);
    if ((i < -128) || (i > 127))
      throw paramDeserializationContext.weirdKeyException(this._keyClass, paramString, "overflow, value can not be represented as 8-bit value");
    return Byte.valueOf((byte)i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.ByteKD
 * JD-Core Version:    0.6.2
 */