package com.nianticproject.ingress.common.k;

import com.nianticproject.ingress.common.c.a;
import com.nianticproject.ingress.common.c.ak;
import com.nianticproject.ingress.common.c.b;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bi;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;
import java.util.List;

public final class z
{
  public static final bs[] a = arrayOfbs;
  private static final b[] c;
  private final a b;
  private final e d = o.a();
  private final ak e;
  private final bn f;
  private boolean g;
  private boolean h;

  static
  {
    b[] arrayOfb = new b[7];
    arrayOfb[0] = new b(ba.aC, 0);
    arrayOfb[1] = new b(ba.aE, 0);
    arrayOfb[2] = new b(ba.aF, 0);
    arrayOfb[3] = new b(ba.aD, 0);
    arrayOfb[4] = new b(ba.aG, 0);
    arrayOfb[5] = new b(ba.aH, 0);
    arrayOfb[6] = new b(ba.aI, 0);
    c = arrayOfb;
    bs[] arrayOfbs = new bs[3];
    arrayOfbs[0] = bs.aV;
    arrayOfbs[1] = bs.aW;
    arrayOfbs[2] = bs.aX;
  }

  public z(ak paramak)
  {
    this.e = paramak;
    this.b = new a(ba.al, c, 1.0F);
    this.h = false;
    this.f = a[((int)(java.lang.Math.random() * a.length))].a();
    e();
  }

  private void e()
  {
    try
    {
      aj.a("PrecacheSpaceMixAssets");
      Iterator localIterator = this.f.a().iterator();
      while (localIterator.hasNext())
      {
        bi localbi = (bi)localIterator.next();
        this.d.b(localbi.a());
      }
    }
    finally
    {
      aj.b();
    }
    aj.b();
  }

  public final void a()
  {
    try
    {
      aj.a("DisposeSpaceMixAssets");
      this.d.a(ba.al);
      for (b localb : c)
        this.d.a(localb.a());
      Iterator localIterator = this.f.a().iterator();
      while (localIterator.hasNext())
      {
        bi localbi = (bi)localIterator.next();
        this.d.a(localbi.a());
      }
    }
    finally
    {
      aj.b();
    }
    aj.b();
  }

  public final void a(float paramFloat, boolean paramBoolean)
  {
    if (!this.h)
      return;
    if (paramBoolean);
    for (float f1 = 0.2F; ; f1 = 1.0F)
    {
      this.b.a();
      this.b.a(1.0F);
      this.b.a(paramFloat, f1);
      return;
    }
  }

  public final void b()
  {
    if (!this.h)
    {
      this.e.a(false);
      this.d.b(true);
      this.h = true;
    }
  }

  public final void c()
  {
    if (this.h)
    {
      this.b.c();
      this.e.a(true);
      this.d.b(false);
      this.h = false;
    }
  }

  public final void d()
  {
    if ((this.h) && (!this.g))
    {
      this.g = true;
      this.d.a(this.f);
      this.d.a(bs.ba);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.z
 * JD-Core Version:    0.6.2
 */