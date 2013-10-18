package com.nianticproject.ingress.common.c;

public final class an
{
  private static final bs[] a = arrayOfbs;
  private int b;

  static
  {
    bs[] arrayOfbs = new bs[5];
    arrayOfbs[0] = bs.ao;
    arrayOfbs[1] = bs.ap;
    arrayOfbs[2] = bs.aq;
    arrayOfbs[3] = bs.ar;
    arrayOfbs[4] = bs.as;
  }

  public final void a()
  {
    this.b = ((1 + (int)(Math.random() * (-1 + a.length)) + this.b) % a.length);
    o.a().a(bs.an);
    o.a().a(a[this.b]);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.an
 * JD-Core Version:    0.6.2
 */