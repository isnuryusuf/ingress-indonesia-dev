package com.google.a.c;

import java.util.Iterator;

final class ck extends hl<K, V>
{
  ck(by paramby)
  {
    super(paramby);
  }

  public final Iterator<K> iterator()
  {
    return new cl(this);
  }

  public final boolean remove(Object paramObject)
  {
    bz localbz = by.a(this.a, paramObject, by.a(paramObject));
    if (localbz == null)
      return false;
    by.a(this.a, localbz);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ck
 * JD-Core Version:    0.6.2
 */