package com.nianticproject.ingress.common.c;

import com.google.a.c.eq;
import com.nianticproject.ingress.common.aa;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.shared.f;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public final class ak extends n
  implements aa
{
  private long a = 0L;
  private final e b;
  private final k c;
  private am d;
  private final Object e = new Object();
  private final Random f = new Random(System.currentTimeMillis());
  private boolean g = true;

  public ak(e parame, k paramk)
  {
    this.b = parame;
    this.c = paramk;
    paramk.a(this);
  }

  private void a(bn parambn)
  {
    if (this.g)
      this.b.a(parambn);
  }

  private void a(bs parambs, boolean paramBoolean)
  {
    if ((this.g) || (paramBoolean))
      this.b.a(parambs);
  }

  private boolean a(bo parambo)
  {
    long l1 = System.currentTimeMillis();
    synchronized (this.e)
    {
      boolean bool1 = l1 < this.a;
      boolean bool2 = false;
      if (bool1)
      {
        this.a = (l1 + 20000L);
        bool2 = true;
      }
      if (bool2)
      {
        ArrayList localArrayList = eq.a();
        long l2 = Math.max(1L, 100L * this.c.d() / this.c.c());
        localArrayList.add(ba.eo);
        localArrayList.addAll(com.nianticproject.ingress.common.w.ak.a((int)l2));
        localArrayList.add(ba.dy);
        parambo.a(localArrayList);
        parambo.a(true);
        parambo.a(bp.a);
      }
      return bool2;
    }
  }

  public final String a()
  {
    return "PlayerAudio";
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
      a(bs.a, false);
  }

  public final void a(long paramLong1, long paramLong2, long paramLong3, z paramz)
  {
    switch (al.a[paramz.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    long l;
    do
    {
      bo localbo;
      do
      {
        return;
        a(bs.aS, true);
        localbo = new bo();
      }
      while (!a(localbo));
      a(localbo.f());
      return;
      a(bs.am, false);
      l = -paramLong3;
    }
    while ((this.d != null) && (this.d.a(l)));
    this.d = new am(this, l);
    this.d.e();
  }

  public final void a(f paramf1, f paramf2)
  {
    if ((paramf2 == paramf1) || (paramf1 == null) || (paramf1 == f.a));
    do
    {
      return;
      if (paramf2 == f.b)
      {
        a(bs.aR, false);
        return;
      }
    }
    while (paramf2 != f.c);
    a(bs.aQ, false);
  }

  public final void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public final void b()
  {
    this.c.b(this);
  }

  public final void c()
  {
    if (this.d != null)
    {
      this.d.b(true);
      this.d = null;
    }
  }

  public final void f_()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.ak
 * JD-Core Version:    0.6.2
 */