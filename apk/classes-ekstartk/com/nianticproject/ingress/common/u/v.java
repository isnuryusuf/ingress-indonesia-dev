package com.nianticproject.ingress.common.u;

import com.google.a.f.d;
import com.nianticproject.ingress.common.z;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.a;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.x;
import com.nianticproject.ingress.shared.rpc.y;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;

public final class v extends x
{
  private w c;

  public v(URI paramURI, a parama)
  {
    super(paramURI, parama);
  }

  protected final y a(ab<?, ?> paramab, y paramy, String paramString)
  {
    return super.a(paramab, paramy, paramString);
  }

  protected final <R, E> InputStream a(ab<R, E> paramab)
  {
    try
    {
      this.c = ((w)paramab);
      String str = d.a(new InputStreamReader(a(this.a, this.b, null), "UTF-8"));
      if (str.startsWith("while(1);"))
        str = str.substring(9);
      ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(str.getBytes());
      return localByteArrayInputStream;
    }
    catch (y localy)
    {
      throw super.a(paramab, localy, null);
    }
    catch (Exception localException)
    {
      throw super.a(paramab, new y(localException), null);
    }
  }

  protected final InputStream a(URI paramURI, a parama, String paramString)
  {
    return z.a(this.c.a(paramURI), parama);
  }

  protected final void a(GameBasket paramGameBasket)
  {
    throw new UnsupportedOperationException("Handshake may not have a gameBasket, but got " + paramGameBasket);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.v
 * JD-Core Version:    0.6.2
 */