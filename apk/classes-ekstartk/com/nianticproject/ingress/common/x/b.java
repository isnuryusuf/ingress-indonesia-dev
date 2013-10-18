package com.nianticproject.ingress.common.x;

import com.google.a.a.an;

public abstract class b<R>
  implements g<R>
{
  private final String a;
  private R b;

  protected b(String paramString)
  {
    this.a = ((String)an.a(paramString));
  }

  public final void a(R paramR)
  {
    if (paramR == null)
      return;
    this.b = paramR;
    i.a().a(new c(this, (byte)0));
  }

  protected abstract f b(R paramR);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x.b
 * JD-Core Version:    0.6.2
 */