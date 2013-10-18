package com.google.a.c;

import com.google.a.a.ao;
import java.util.Iterator;
import java.util.Set;

final class jd extends ji<E>
{
  jd(Set paramSet1, ao paramao, Set paramSet2)
  {
    super((byte)0);
  }

  public final boolean contains(Object paramObject)
  {
    return (this.a.contains(paramObject)) && (!this.c.contains(paramObject));
  }

  public final boolean isEmpty()
  {
    return this.c.containsAll(this.a);
  }

  public final Iterator<E> iterator()
  {
    return eg.b(this.a.iterator(), this.b);
  }

  public final int size()
  {
    return eg.b(iterator());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jd
 * JD-Core Version:    0.6.2
 */