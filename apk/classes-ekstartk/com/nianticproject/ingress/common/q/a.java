package com.nianticproject.ingress.common.q;

import com.google.a.a.ag;
import com.google.a.d.u;

public final class a
  implements Comparable<a>
{
  private final int a;
  private final int b;

  public a(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  private int a(a parama)
  {
    if (this.a == parama.a)
      return this.b - parama.b;
    return this.a - parama.a;
  }

  public static a a(u paramu)
  {
    double d = paramu.b();
    return new a(b.d(paramu.e()), b.e(d));
  }

  public final int a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.b;
  }

  public final u c()
  {
    return u.a(b.c(this.b), b.b(this.a));
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof a)) && (a((a)paramObject) == 0);
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.a);
    arrayOfObject[1] = Integer.valueOf(this.b);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return "(" + this.a + "," + this.b + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.a
 * JD-Core Version:    0.6.2
 */