package com.nianticproject.ingress.common.g;

import com.google.a.a.ak;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.model.i;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.j;
import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.ai;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public class b
  implements ad
{
  private static final aa a = new aa(b.class);
  private final Set<f> b = j.a();
  private final Set<g> c = j.a();
  private e d;
  private boolean e;
  private ad f;

  public final ak<i, Long> a(h paramh, long paramLong)
  {
    return this.d.a(paramh, paramLong);
  }

  public final com.nianticproject.ingress.gameentity.f a(u paramu, ai paramai, int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3)
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    return this.f.a(paramu, paramai, paramInt1, paramInt2, paramInt3, paramString1, paramString2, paramString3);
  }

  public final com.nianticproject.ingress.gameentity.f a(Portal paramPortal, u paramu, int paramInt1, int paramInt2, String paramString, ai paramai)
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    return this.f.a(paramPortal, paramu, paramInt1, paramInt2, paramString, paramai);
  }

  public final com.nianticproject.ingress.gameentity.f a(com.nianticproject.ingress.gameentity.f paramf)
  {
    return this.d.a(paramf);
  }

  public final com.nianticproject.ingress.gameentity.f a(ai paramai, Portal paramPortal1, Portal paramPortal2)
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    return this.f.a(paramai, paramPortal1, paramPortal2);
  }

  public final com.nianticproject.ingress.gameentity.f a(ai paramai, Collection<Portal> paramCollection, long paramLong)
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    return this.f.a(paramai, paramCollection, paramLong);
  }

  public final com.nianticproject.ingress.gameentity.f a(String paramString)
  {
    return this.d.a(paramString);
  }

  public final <T extends a> Collection<T> a(Class<T> paramClass, h paramh)
  {
    return this.d.a(paramClass, paramh);
  }

  public final Collection<com.nianticproject.ingress.gameentity.f> a(Collection<af> paramCollection)
  {
    return this.d.a(paramCollection);
  }

  public final void a(long paramLong)
  {
    this.d.a(paramLong);
  }

  public final void a(u paramu, int paramInt)
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    this.f.a(paramu, paramInt);
  }

  public final void a(e parame)
  {
    this.d = ((e)an.a(parame));
    this.e = (parame instanceof ad);
    if (this.e);
    for (ad localad = (ad)parame; ; localad = null)
    {
      this.f = localad;
      Iterator localIterator1 = this.b.iterator();
      while (localIterator1.hasNext())
      {
        f localf = (f)localIterator1.next();
        parame.a(localf);
        localf.a();
      }
    }
    Iterator localIterator2 = this.c.iterator();
    while (localIterator2.hasNext())
    {
      g localg = (g)localIterator2.next();
      parame.a(localg);
      localg.a();
    }
  }

  public final void a(f paramf)
  {
    this.b.add(paramf);
    if (this.d != null)
      this.d.a(paramf);
  }

  public final void a(g paramg)
  {
    this.c.add(paramg);
    if (this.d != null)
      this.d.a(paramg);
  }

  public final void a(com.nianticproject.ingress.shared.model.e parame)
  {
    this.d.a(parame);
  }

  public final void a(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    this.d.a(paramArrayOfLong1, paramArrayOfLong2);
  }

  public final boolean a()
  {
    return this.e;
  }

  public final boolean a(Set<String> paramSet)
  {
    return this.d.a(paramSet);
  }

  public final long[] a(long[] paramArrayOfLong)
  {
    return this.d.a(paramArrayOfLong);
  }

  public final com.nianticproject.ingress.gameentity.f b(String paramString)
  {
    return this.d.b(paramString);
  }

  public final void b()
  {
    this.d.b();
  }

  public final void b(f paramf)
  {
    this.b.remove(paramf);
    if (this.d != null)
      this.d.b(paramf);
  }

  public final void b(g paramg)
  {
    this.c.remove(paramg);
    if (this.d != null)
      this.d.b(paramg);
  }

  public final void b(com.nianticproject.ingress.gameentity.f paramf)
  {
    this.d.b(paramf);
  }

  public final void b(Collection<com.nianticproject.ingress.gameentity.f> paramCollection)
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    this.f.b(paramCollection);
  }

  public final boolean b(Set<String> paramSet)
  {
    return this.d.b(paramSet);
  }

  public final void c()
  {
    this.d.c();
  }

  public final void c(Set<String> paramSet)
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    this.f.c(paramSet);
  }

  public final void d()
  {
    this.d.d();
  }

  public final void d(Set<com.nianticproject.ingress.gameentity.f> paramSet)
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    this.f.d(paramSet);
  }

  public final Collection<com.nianticproject.ingress.gameentity.f> e()
  {
    return this.d.e();
  }

  public final int f()
  {
    return this.d.f();
  }

  public final long g()
  {
    return this.d.g();
  }

  public final e h()
  {
    an.b(this.e, "delegate is not TrainingNemesisCache");
    return this.f.h();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.b
 * JD-Core Version:    0.6.2
 */