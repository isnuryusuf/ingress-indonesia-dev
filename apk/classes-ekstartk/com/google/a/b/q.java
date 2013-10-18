package com.google.a.b;

import com.google.a.c.eg;
import java.util.AbstractQueue;
import java.util.Iterator;

final class q extends AbstractQueue<Object>
{
  public final Iterator<Object> iterator()
  {
    return eg.a();
  }

  public final boolean offer(Object paramObject)
  {
    return true;
  }

  public final Object peek()
  {
    return null;
  }

  public final Object poll()
  {
    return null;
  }

  public final int size()
  {
    return 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.q
 * JD-Core Version:    0.6.2
 */