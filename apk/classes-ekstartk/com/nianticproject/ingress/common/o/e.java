package com.nianticproject.ingress.common.o;

import com.nianticproject.ingress.gameentity.components.m;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.KeyDeserializer;

final class e extends KeyDeserializer
{
  public final Object deserializeKey(String paramString, DeserializationContext paramDeserializationContext)
  {
    return m.a(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.o.e
 * JD-Core Version:    0.6.2
 */