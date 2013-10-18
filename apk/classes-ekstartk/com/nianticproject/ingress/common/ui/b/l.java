package com.nianticproject.ingress.common.ui.b;

import com.google.a.a.an;
import java.util.ArrayList;

public final class l
{
  private ArrayList<m> a = new ArrayList();
  private final c b;
  private boolean c;

  public l(c paramc)
  {
    this.b = ((c)an.a(paramc));
    this.c = false;
  }

  public final l a(int paramInt)
  {
    synchronized (this.a)
    {
      this.a.add(new p(this, paramInt));
      return this;
    }
  }

  public final l a(int paramInt, b paramb)
  {
    synchronized (this.a)
    {
      this.a.add(new o(this, paramInt, paramb));
      return this;
    }
  }

  public final void a()
  {
    boolean bool = true;
    synchronized (this.a)
    {
      if (!this.c)
      {
        an.a(bool, "Cannot commit a transaction that was already committed");
        this.b.a(this);
        this.a.clear();
        this.c = true;
        return;
      }
      bool = false;
    }
  }

  final ArrayList<m> b()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.b.l
 * JD-Core Version:    0.6.2
 */