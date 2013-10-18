package com.google.a.c;

import com.google.a.a.aa;
import com.google.a.a.an;
import java.io.Serializable;
import java.util.Arrays;

final class aq<F, T> extends ih<F>
  implements Serializable
{
  final aa<F, ? extends T> a;
  final ih<T> b;

  aq(aa<F, ? extends T> paramaa, ih<T> paramih)
  {
    this.a = ((aa)an.a(paramaa));
    this.b = ((ih)an.a(paramih));
  }

  public final int compare(F paramF1, F paramF2)
  {
    return this.b.compare(this.a.a(paramF1), this.a.a(paramF2));
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    aq localaq;
    do
    {
      return true;
      if (!(paramObject instanceof aq))
        break;
      localaq = (aq)paramObject;
    }
    while ((this.a.equals(localaq.a)) && (this.b.equals(localaq.b)));
    return false;
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    return this.b + ".onResultOf(" + this.a + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.aq
 * JD-Core Version:    0.6.2
 */