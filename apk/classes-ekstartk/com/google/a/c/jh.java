package com.google.a.c;

import com.google.a.a.an;
import java.util.AbstractSet;
import java.util.Collection;

abstract class jh<E> extends AbstractSet<E>
{
  public boolean removeAll(Collection<?> paramCollection)
  {
    return jc.a(this, paramCollection);
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    return super.retainAll((Collection)an.a(paramCollection));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jh
 * JD-Core Version:    0.6.2
 */