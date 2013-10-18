package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$BoolKD extends StdKeyDeserializer
{
  StdKeyDeserializer$BoolKD()
  {
    super(Boolean.class);
  }

  public final Boolean _parse(String paramString, DeserializationContext paramDeserializationContext)
  {
    if ("true".equals(paramString))
      return Boolean.TRUE;
    if ("false".equals(paramString))
      return Boolean.FALSE;
    throw paramDeserializationContext.weirdKeyException(this._keyClass, paramString, "value not 'true' or 'false'");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.BoolKD
 * JD-Core Version:    0.6.2
 */