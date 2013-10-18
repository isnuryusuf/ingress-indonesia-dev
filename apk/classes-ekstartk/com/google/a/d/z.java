package com.google.a.d;

import java.util.Arrays;
import java.util.logging.Logger;

public final class z
  implements ad
{
  private static final Logger a = Logger.getLogger(z.class.getCanonicalName());
  private final int b;
  private final y[] c;

  public final strictfp boolean a(i parami)
  {
    throw new UnsupportedOperationException("'containment' is not numerically well-defined except at the polyline vertices");
  }

  public final strictfp boolean b(i parami)
  {
    if (this.b == 0);
    while (true)
    {
      return false;
      for (int i = 0; i < this.b; i++)
        if (parami.a(this.c[i]))
          return true;
      y[] arrayOfy = new y[4];
      for (int j = 0; j < 4; j++)
        arrayOfy[j] = parami.b(j);
      for (int k = 0; k < 4; k++)
      {
        p localp = new p(arrayOfy[k], arrayOfy[(0x3 & k + 1)], this.c[0]);
        for (int m = 1; m < this.b; m++)
          if (localp.b(this.c[m]) >= 0)
            return true;
      }
    }
  }

  public final strictfp boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof z));
    z localz;
    do
    {
      return false;
      localz = (z)paramObject;
    }
    while (this.b != localz.b);
    for (int i = 0; ; i++)
    {
      if (i >= this.c.length)
        break label60;
      if (!this.c[i].f(localz.c[i]))
        break;
    }
    label60: return true;
  }

  public final strictfp h f()
  {
    q localq = new q();
    for (int i = 0; i < this.b; i++)
      localq.a(this.c[i]);
    return localq.a().f();
  }

  public final strictfp int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.b);
    arrayOfObject[1] = Integer.valueOf(Arrays.deepHashCode(this.c));
    return Arrays.hashCode(arrayOfObject);
  }

  public final strictfp String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("S2Polyline, ");
    localStringBuilder.append(this.c.length).append(" points. [");
    y[] arrayOfy = this.c;
    int i = arrayOfy.length;
    for (int j = 0; j < i; j++)
      localStringBuilder.append(arrayOfy[j].e()).append(" ");
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.z
 * JD-Core Version:    0.6.2
 */