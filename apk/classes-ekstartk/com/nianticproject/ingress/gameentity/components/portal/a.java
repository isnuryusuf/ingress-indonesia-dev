package com.nianticproject.ingress.gameentity.components.portal;

import com.google.a.c.dc;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.g;
import com.nianticproject.ingress.gameentity.components.m;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.PortalModSharedKnobs;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.shared.ai;

public final class a
{
  public static final dc<Integer> a = dc.a(Integer.valueOf(16), Integer.valueOf(24), Integer.valueOf(32), Integer.valueOf(40), Integer.valueOf(48), Integer.valueOf(56), Integer.valueOf(64));

  public static int a(f paramf)
  {
    return a(((ResonatorArray)paramf.getComponent(ResonatorArray.class)).getResonatorLevels());
  }

  public static int a(XmCostKnobs paramXmCostKnobs, ai paramai1, int paramInt, ai paramai2)
  {
    if (paramai1 == ai.c)
      return paramXmCostKnobs.e(paramInt);
    if (paramai1 == paramai2)
      return paramXmCostKnobs.d(paramInt);
    return paramXmCostKnobs.f(paramInt);
  }

  public static int a(Iterable<Integer> paramIterable)
  {
    int i = b.a(paramIterable);
    if (i == 0)
      return 1;
    for (int j = 0; j < 7; j++)
      if (i < ((Integer)a.get(j)).intValue())
        return j + 1;
    return 8;
  }

  public static long a(Modable paramModable, PortalModSharedKnobs paramPortalModSharedKnobs)
  {
    m localm = m.i;
    if (g.a(paramModable, localm) > 0)
      return g.a(paramModable, localm, paramPortalModSharedKnobs);
    return 0L;
  }

  public static long a(Iterable<Integer> paramIterable, Modable paramModable, PortalModSharedKnobs paramPortalModSharedKnobs)
  {
    long l1 = (int)(10.0D * Math.pow(b.a(paramIterable) / 4.0D, 4.0D));
    m localm = m.d;
    if (g.a(paramModable, localm) > 0);
    for (long l2 = g.a(paramModable, localm, paramPortalModSharedKnobs); ; l2 = 1000L)
      return l2 * l1 / 1000L;
  }

  public static long b(Modable paramModable, PortalModSharedKnobs paramPortalModSharedKnobs)
  {
    m localm = m.k;
    if (g.a(paramModable, localm) > 0)
      return g.a(paramModable, localm, paramPortalModSharedKnobs);
    return 0L;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.a
 * JD-Core Version:    0.6.2
 */