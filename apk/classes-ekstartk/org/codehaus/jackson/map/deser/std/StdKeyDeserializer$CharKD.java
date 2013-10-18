package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$CharKD extends StdKeyDeserializer
{
  StdKeyDeserializer$CharKD()
  {
    super(Character.class);
  }

  public final Character _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    if (paramString.length() == 1)
      return Character.valueOf(paramString.charAt(0));
    throw paramDeserializationContext.weirdKeyException(this._keyClass, paramString, "can only convert 1-character Strings");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.CharKD
 * JD-Core Version:    0.6.2
 */