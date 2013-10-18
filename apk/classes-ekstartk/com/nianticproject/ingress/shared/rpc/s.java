package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;
import com.google.a.c.du;
import java.util.Iterator;

public enum s
{
  private final int d;

  static
  {
    s[] arrayOfs = new s[3];
    arrayOfs[0] = a;
    arrayOfs[1] = b;
    arrayOfs[2] = c;
  }

  private s(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("non-positive number: " + paramInt);
    if ((paramInt & paramInt - 1) == 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Persisted Id value for a PlextCategory must be power of 2.");
      this.d = paramInt;
      return;
    }
  }

  public static int a(s[] paramArrayOfs)
  {
    Iterator localIterator = du.a(paramArrayOfs).iterator();
    int i = 0;
    while (localIterator.hasNext())
      i |= ((s)localIterator.next()).d;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.s
 * JD-Core Version:    0.6.2
 */