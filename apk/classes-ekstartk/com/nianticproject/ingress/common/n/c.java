package com.nianticproject.ingress.common.n;

import java.io.FileOutputStream;
import java.io.OutputStream;

public final class c
{
  private final e b;
  private boolean c;

  private c(a parama, e parame)
  {
    this.b = parame;
  }

  public final OutputStream a()
  {
    synchronized (this.a)
    {
      if (e.a(this.b) != this)
        throw new IllegalStateException();
    }
    d locald = new d(this, new FileOutputStream(this.b.b(0)), (byte)0);
    return locald;
  }

  public final void b()
  {
    if (this.c)
    {
      a.a(this.a, this, false);
      a.a(this.a, e.c(this.b));
      return;
    }
    a.a(this.a, this, true);
  }

  public final void c()
  {
    a.a(this.a, this, false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.n.c
 * JD-Core Version:    0.6.2
 */