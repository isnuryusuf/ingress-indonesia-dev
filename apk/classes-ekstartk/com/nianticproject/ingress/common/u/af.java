package com.nianticproject.ingress.common.u;

import com.google.a.a.an;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.z;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.a;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.x;
import com.nianticproject.ingress.shared.rpc.y;
import java.io.InputStream;
import java.net.URI;

public class af extends x
{
  private static final aa c = new aa(af.class);
  private final h d;

  public af(URI paramURI, a parama, h paramh)
  {
    super(paramURI, parama);
    this.d = paramh;
  }

  protected final y a(ab<?, ?> paramab, y paramy, String paramString)
  {
    aa localaa = c;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramab.c();
    localaa.b(paramy, "RPC for %s", arrayOfObject);
    return paramy;
  }

  protected final InputStream a(URI paramURI, a parama, String paramString)
  {
    return z.a(paramURI, parama, paramString);
  }

  protected final void a(GameBasket paramGameBasket)
  {
    an.a(this.d);
    this.d.a(paramGameBasket);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.af
 * JD-Core Version:    0.6.2
 */