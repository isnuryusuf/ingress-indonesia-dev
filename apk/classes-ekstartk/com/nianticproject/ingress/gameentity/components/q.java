package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ag;
import com.google.a.a.an;

public final class q
{
  public static final q a = new q(0.0D, false);
  public final double b;
  public final boolean c;

  public q(double paramDouble, boolean paramBoolean)
  {
    if (paramDouble >= 0.0D);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.b = paramDouble;
      this.c = paramBoolean;
      return;
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof q));
    q localq;
    do
    {
      return false;
      localq = (q)paramObject;
    }
    while ((this.b != localq.b) || (this.c != localq.c));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Double.valueOf(this.b);
    arrayOfObject[1] = Boolean.valueOf(this.c);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(this.b);
    if (this.c);
    for (String str = " (critical)"; ; str = "")
      return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.q
 * JD-Core Version:    0.6.2
 */