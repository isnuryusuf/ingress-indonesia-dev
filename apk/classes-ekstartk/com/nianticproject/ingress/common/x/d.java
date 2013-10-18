package com.nianticproject.ingress.common.x;

import com.google.a.a.an;
import com.google.a.c.eq;
import java.util.LinkedList;

public final class d
{
  private final LinkedList<e> a = eq.b();
  private final i b;
  private final int c;

  public d(i parami)
  {
    this.b = ((i)an.a(parami));
    an.a(true);
    this.c = 1;
  }

  public final void a(f paramf)
  {
    synchronized (this.a)
    {
      if (this.a.size() >= this.c)
      {
        ((e)this.a.getLast()).a = paramf;
        return;
      }
      e locale = new e(this, (byte)0);
      locale.a = paramf;
      this.a.addLast(locale);
      this.b.a(locale);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x.d
 * JD-Core Version:    0.6.2
 */