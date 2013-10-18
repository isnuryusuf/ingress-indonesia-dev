package com.google.a.c;

import java.util.Iterator;

final class ch extends hl<V, K>
{
  ch(cd paramcd)
  {
    super(paramcd);
  }

  public final Iterator<V> iterator()
  {
    return new ci(this);
  }

  public final boolean remove(Object paramObject)
  {
    bz localbz = by.b(this.a.a, paramObject, by.a(paramObject));
    if (localbz == null)
      return false;
    by.a(this.a.a, localbz);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ch
 * JD-Core Version:    0.6.2
 */