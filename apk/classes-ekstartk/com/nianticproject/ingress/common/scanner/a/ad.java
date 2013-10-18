package com.nianticproject.ingress.common.scanner.a;

import a.a.a.a.b.bj;
import a.a.a.a.b.bk;
import a.a.a.a.b.bl;
import a.a.a.a.b.bw;
import a.a.a.a.c.j;
import a.a.a.a.c.l;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.q.a;
import com.nianticproject.ingress.common.q.e;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Iterator;

public final class ad
  implements Disposable
{
  private static final com.nianticproject.ingress.common.t.b a = com.nianticproject.ingress.common.t.c.a("Map Setup");
  private static final com.nianticproject.ingress.common.t.b b = com.nianticproject.ingress.common.t.c.a("Map Render");
  private static final com.nianticproject.ingress.common.t.b c = com.nianticproject.ingress.common.t.c.a("Map Update");
  private static final com.nianticproject.ingress.common.t.b d = com.nianticproject.ingress.common.t.c.a("Map Cull");
  private static boolean e = true;
  private static boolean f = true;
  private static boolean g = true;
  private static boolean h = true;
  private static boolean i = true;
  private final u j;
  private final bl<ae> k = new bl((byte)0);
  private final ArrayList<n> l = eq.a();
  private final Matrix4 m = new Matrix4();
  private a n;
  private com.google.a.d.u o;
  private float p;
  private int q;

  public ad(e parame)
  {
    this.j = new u(parame);
  }

  public static void a()
  {
    n.b();
  }

  public static void b()
  {
    n.c();
  }

  public final void a(bw parambw)
  {
    an.a(this.n);
    an.a(this.o);
    an.a(parambw);
    a.b();
    int i1 = this.n.a() >> 13;
    int i2 = this.n.b() >> 13;
    long l1 = this.j.a();
    int i3 = parambw.size();
    int i4 = 0;
    if (i4 < i3)
    {
      long l2 = parambw.e(i4).longValue();
      double d1 = com.nianticproject.ingress.common.q.c.b(l2) - i1;
      double d2 = com.nianticproject.ingress.common.q.c.c(l2) - i2;
      float f1 = (float)(d1 * d1 + d2 * d2);
      ae localae1 = (ae)this.k.e(l2);
      if (localae1 == null)
      {
        ae localae2 = new ae(this.j.a(l2), f1, l1);
        this.k.a(l2, localae2);
      }
      while (true)
      {
        i4++;
        break;
        localae1.a(f1, l1);
      }
    }
    l locall = this.k.d().b();
    while (locall.hasNext())
      if (((ae)((bj)locall.next()).getValue()).d != l1)
        locall.remove();
    com.nianticproject.ingress.common.t.b.c();
  }

  public final void a(Matrix4 paramMatrix4, bw parambw)
  {
    while (true)
    {
      int i2;
      float f1;
      try
      {
        aj.a("MapVisuals.draw");
        if (this.n == null)
          break label550;
        d.b();
        this.m.set(paramMatrix4).scale(this.p, this.p, this.p);
        this.q = (1 + this.q);
        int i1 = parambw.size();
        i2 = 0;
        if (i2 < i1)
        {
          ae localae1 = (ae)this.k.a(parambw.e(i2));
          if (localae1 == null)
            break label554;
          localae1.a = this.q;
          break label554;
        }
        l locall = this.k.b().a();
        if (!locall.hasNext())
          break label236;
        ae localae2 = (ae)locall.next();
        if (localae2.a == this.q)
        {
          i9 = 1;
          f1 = localae2.c;
          ac localac = localae2.b;
          if (i9 == 0)
            break label226;
          f2 = f1;
          n localn = u.a(localac.a, localac, f2);
          if ((i9 == 0) || (localn == null))
            continue;
          this.l.add(localn);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      int i9 = 0;
      continue;
      label226: float f2 = 2200.0F + f1;
      continue;
      label236: com.nianticproject.ingress.common.t.b.a(b);
      ShaderProgram localShaderProgram = n.a(this.m);
      for (int i3 = 0; i3 < this.l.size(); i3++)
        ((n)this.l.get(i3)).a(this.n);
      if (i)
        for (int i4 = 0; i4 < this.l.size(); i4++)
          ((n)this.l.get(i4)).e(localShaderProgram);
      if (g)
        for (int i5 = 0; i5 < this.l.size(); i5++)
          ((n)this.l.get(i5)).c(localShaderProgram);
      if (h)
        for (int i6 = 0; i6 < this.l.size(); i6++)
          ((n)this.l.get(i6)).d(localShaderProgram);
      if (f)
        for (int i7 = 0; i7 < this.l.size(); i7++)
          ((n)this.l.get(i7)).b(localShaderProgram);
      boolean bool = e;
      int i8 = 0;
      if (bool)
        while (i8 < this.l.size())
        {
          ((n)this.l.get(i8)).a(localShaderProgram);
          i8++;
        }
      this.l.clear();
      com.nianticproject.ingress.common.t.b.a(c);
      this.j.b();
      com.nianticproject.ingress.common.t.b.c();
      label550: aj.b();
      return;
      label554: i2++;
    }
  }

  public final void a(com.google.a.d.u paramu)
  {
    if ((this.o != null) && (this.o.equals(paramu)))
      return;
    this.o = paramu;
    this.n = a.a(this.o);
    this.p = ((float)(1.0D / com.nianticproject.ingress.common.q.b.a(this.o.b())));
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.ad
 * JD-Core Version:    0.6.2
 */