package com.nianticproject.ingress.common.o;

import com.google.a.a.br;
import com.google.a.c.dh;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.plext.TextMarkupArgSet;
import com.nianticproject.ingress.shared.plext.a;
import com.nianticproject.ingress.shared.plext.b;
import com.nianticproject.ingress.shared.plext.c;
import com.nianticproject.ingress.shared.plext.d;
import java.util.Map;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;

public class h extends JsonDeserializer<c>
{
  private static final aa a = new aa(h.class);

  private c a(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getCurrentToken() != JsonToken.START_ARRAY)
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_ARRAY, "Expected markup object.  Unexpected text: " + paramJsonParser.getText());
    paramJsonParser.nextToken();
    c localc;
    try
    {
      d locald2 = d.valueOf(paramJsonParser.getText());
      locald1 = locald2;
      paramJsonParser.nextToken();
      if (locald1 != null)
      {
        localc = new c(locald1, (a)paramJsonParser.readValueAs((Class)b.a.get(locald1)));
        if (paramJsonParser.nextToken() == JsonToken.END_ARRAY)
          break label273;
        throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Expected components object, unexpected text: " + paramJsonParser.getText());
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
      {
        aa localaa = a;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = paramJsonParser.getText();
        localaa.a(localIllegalArgumentException, "Unknown MarkupType (%s), treating as text...", arrayOfObject1);
        d locald1 = null;
        continue;
        Map localMap = (Map)paramJsonParser.readValueAs(new i(this));
        String str = (String)localMap.get("plain");
        if (br.b(str))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localMap.keySet().toString();
          throw new JsonParseException(String.format("Plain text fallback failed, could not find \"plain\" key in argument set, keySet: %s", arrayOfObject2), paramJsonParser.getCurrentLocation());
        }
        localc = new c(d.a, new TextMarkupArgSet(str));
      }
    }
    label273: return localc;
  }

  private c b(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    try
    {
      aj.a("MarkupEntryDeserializer.deserialize");
      c localc = a(paramJsonParser, paramDeserializationContext);
      return localc;
    }
    catch (Exception localException)
    {
      a.a(localException, "Exception while deserializing MarkupEntry");
      return b.b;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.o.h
 * JD-Core Version:    0.6.2
 */