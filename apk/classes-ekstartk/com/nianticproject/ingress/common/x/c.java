package com.nianticproject.ingress.common.x;

import com.nianticproject.ingress.shared.aj;

final class c
  implements f
{
  private c(b paramb)
  {
  }

  public final f a(p paramp)
  {
    try
    {
      aj.a("AbstractGameTaskReceiver(", b.b(this.a), ")");
      f localf = this.a.b(b.a(this.a));
      return localf;
    }
    finally
    {
      aj.b();
    }
  }

  public final String n_()
  {
    return b.b(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x.c
 * JD-Core Version:    0.6.2
 */