package com.nianticproject.ingress.common.k;

import com.badlogic.gdx.math.MathUtils;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;

final class u
  implements b
{
  u(s params)
  {
  }

  public final void a()
  {
    if (!s.g(this.a))
    {
      s.f(this.a).a(s.h(this.a) + 120.0F * (MathUtils.random() - 0.5F), 30.0F + (s.i(this.a) + 90.0F * (MathUtils.random() - 0.5F)));
      s.j(this.a).a(bs.aY);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.u
 * JD-Core Version:    0.6.2
 */