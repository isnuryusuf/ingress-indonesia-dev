package com.nianticproject.ingress.shared.plext;

import com.google.a.a.ag;
import java.io.Serializable;

public final class c
  implements Serializable
{
  private final d a;
  private final a b;

  private c()
  {
    this.a = null;
    this.b = null;
  }

  public c(d paramd, a parama)
  {
    this.a = paramd;
    this.b = parama;
  }

  public final d a()
  {
    return this.a;
  }

  public final a b()
  {
    return this.b;
  }

  public final a c()
  {
    return this.b;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    c localc;
    do
    {
      return true;
      if (!(paramObject instanceof c))
        return false;
      localc = (c)paramObject;
    }
    while ((ag.a(this.a, localc.a)) && (ag.a(this.b, localc.b)));
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    return String.format("(%s) '%s'", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.plext.c
 * JD-Core Version:    0.6.2
 */