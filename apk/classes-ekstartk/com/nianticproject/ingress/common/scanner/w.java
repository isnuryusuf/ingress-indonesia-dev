package com.nianticproject.ingress.common.scanner;

import com.nianticproject.ingress.common.m.e;
import com.nianticproject.ingress.common.x.a;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.i;

final class w extends a
{
  boolean a = false;

  w(k paramk, String paramString)
  {
    super(paramString);
  }

  private void b()
  {
    i.a().a(this, 5000L);
  }

  public final f a(com.nianticproject.ingress.common.x.p paramp)
  {
    if (!this.a)
    {
      this.a = true;
      com.nianticproject.ingress.common.g.p.a().A().d();
      b();
    }
    do
    {
      return null;
      boolean bool1 = this.b.v();
      boolean bool2 = com.nianticproject.ingress.common.g.p.a().A().b();
      if ((!bool1) || (!bool2))
      {
        b();
        return null;
      }
    }
    while (!com.nianticproject.ingress.common.g.p.a().A().a());
    k.i(this.b).a(new x(this));
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.w
 * JD-Core Version:    0.6.2
 */