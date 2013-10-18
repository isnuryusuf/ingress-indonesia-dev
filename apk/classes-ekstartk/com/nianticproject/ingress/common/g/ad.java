package com.nianticproject.ingress.common.g;

import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ai;
import java.util.Collection;
import java.util.Set;

public abstract interface ad extends e
{
  public abstract f a(u paramu, ai paramai, int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3);

  public abstract f a(Portal paramPortal, u paramu, int paramInt1, int paramInt2, String paramString, ai paramai);

  public abstract f a(ai paramai, Portal paramPortal1, Portal paramPortal2);

  public abstract f a(ai paramai, Collection<Portal> paramCollection, long paramLong);

  public abstract void a(u paramu, int paramInt);

  public abstract void b(Collection<f> paramCollection);

  public abstract void c(Set<String> paramSet);

  public abstract void d(Set<f> paramSet);

  public abstract e h();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.ad
 * JD-Core Version:    0.6.2
 */