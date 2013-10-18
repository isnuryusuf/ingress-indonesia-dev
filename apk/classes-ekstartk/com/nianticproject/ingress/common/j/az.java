package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.google.a.a.an;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicBoolean;

final class az
  implements d, Comparable<az>
{
  private final aw b;
  private final String c;
  private final int d;
  private final bc e;
  private final AtomicBoolean f = new AtomicBoolean();
  private Texture g;
  private TextureRegion h;
  private int i;
  private boolean j = false;
  private int k;
  private long l;
  private ba m = null;
  private final Object n = new Object();
  private boolean o = false;

  private az(av paramav, aw paramaw, String paramString, int paramInt, bc parambc)
  {
    this.c = ((String)an.a(paramString));
    this.d = ((Integer)an.a(Integer.valueOf(paramInt))).intValue();
    this.e = ((bc)an.a(parambc));
    this.b = ((aw)an.a(paramaw));
  }

  public final boolean a()
  {
    return this.f.get();
  }

  public final TextureRegion b()
  {
    return this.h;
  }

  public final boolean c()
  {
    return this.j;
  }

  public final void d()
  {
    boolean bool;
    if (this.k > 0)
      bool = true;
    while (true)
    {
      an.b(bool);
      int i1 = -1 + this.k;
      this.k = i1;
      if (i1 == 0);
      synchronized (this.n)
      {
        if (this.m != null)
          ba.a(this.m);
        bc localbc = this.e;
        av.a(localbc.a, this);
        localbc.a.a();
        return;
        bool = false;
      }
    }
  }

  public final aw e()
  {
    return this.b;
  }

  final boolean f()
  {
    return this.k > 0;
  }

  final void g()
  {
    if (this.k == 0)
    {
      av.a(this.a).remove(this);
      if (this.f.get());
    }
    synchronized (this.n)
    {
      if (this.m == null)
      {
        this.m = new ba(this);
        this.m.e();
      }
      this.k = (1 + this.k);
      return;
    }
  }

  final int h()
  {
    return 1024 + this.i;
  }

  public final void i()
  {
    this.o = true;
    if (this.f.get())
    {
      av.b(this.e.a, h());
      this.g.dispose();
      this.g = null;
      this.h = null;
      this.i = 0;
      this.f.set(false);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.az
 * JD-Core Version:    0.6.2
 */