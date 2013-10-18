package com.google.c.a.a.b;

public final class c
{
  private static final d[] b = new d['¨'];
  private final com.google.c.a.b.c a = new com.google.c.a.b.c();
  private final String c = null;

  static
  {
    int i = 0;
    int j = 0;
    while (i <= 7)
    {
      int k = 16;
      while (k < 37)
      {
        d[] arrayOfd = b;
        int m = j + 1;
        arrayOfd[j] = new d(k + (i << 8), null);
        k++;
        j = m;
      }
      i++;
    }
  }

  public final int a(int paramInt)
  {
    d locald = (d)this.a.a(paramInt);
    if (locald == null)
      return 16;
    return 0xFF & d.a(locald);
  }

  public final c a(int paramInt1, int paramInt2, Object paramObject)
  {
    com.google.c.a.b.c localc = this.a;
    int i;
    if (paramObject == null)
      i = 21 * ((0xFF00 & paramInt1) >> 8) + (-16 + (paramInt1 & 0xFF));
    for (d locald = b[i]; ; locald = new d(paramInt1, paramObject))
    {
      localc.a(paramInt2, locald);
      return this;
    }
  }

  public final Object b(int paramInt)
  {
    d locald = (d)this.a.a(paramInt);
    if (locald == null)
      return locald;
    return d.b(locald);
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
    {
      return false;
      if (this == paramObject)
        return true;
    }
    while (getClass() != paramObject.getClass());
    c localc = (c)paramObject;
    return this.a.equals(localc.a);
  }

  public final int hashCode()
  {
    if (this.a != null)
      return this.a.hashCode();
    return super.hashCode();
  }

  public final String toString()
  {
    return "ProtoBufType Name: " + this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.b.c
 * JD-Core Version:    0.6.2
 */