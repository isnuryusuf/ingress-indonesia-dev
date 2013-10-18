package com.nianticproject.ingress.common.o;

import com.nianticproject.ingress.shared.af;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.KeyDeserializer;

final class d extends KeyDeserializer
{
  public final Object deserializeKey(String paramString, DeserializationContext paramDeserializationContext)
  {
    return af.a(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.o.d
 * JD-Core Version:    0.6.2
 */