package com.nianticproject.ingress.common.o;

import com.nianticproject.ingress.shared.rpc.push.a;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.JsonDeserializer;

public final class j extends JsonDeserializer<a>
{
  private static a a(JsonParser paramJsonParser)
  {
    try
    {
      a locala = a.valueOf(paramJsonParser.getText());
      return locala;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.o.j
 * JD-Core Version:    0.6.2
 */