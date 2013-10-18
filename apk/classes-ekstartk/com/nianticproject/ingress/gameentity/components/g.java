package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.knobs.PortalModSharedKnobs;
import com.nianticproject.ingress.shared.Mod;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class g
{
  public static int a(Modable paramModable, m paramm)
  {
    int i = 0;
    int j = 0;
    while (i < paramModable.maxModCount())
    {
      Mod localMod = paramModable.getLinkedMod(i);
      if ((localMod != null) && ((Long)localMod.getStatModifiers().get(paramm) != null))
        j++;
      i++;
    }
    return j;
  }

  public static long a(Modable paramModable, m paramm, PortalModSharedKnobs paramPortalModSharedKnobs)
  {
    long l3;
    if (paramModable.linkedModCount() == 0)
      l3 = 0L;
    int n;
    do
    {
      return l3;
      switch (h.a[paramm.ordinal()])
      {
      default:
        return 0L;
      case 1:
      case 2:
        l3 = 0L;
        n = 0;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      }
    }
    while (n >= paramModable.maxModCount());
    Mod localMod2 = paramModable.getLinkedMod(n);
    if (localMod2 == null);
    for (Long localLong3 = null; ; localLong3 = (Long)localMod2.getStatModifiers().get(paramm))
    {
      if (localLong3 != null)
        l3 += localLong3.longValue();
      n++;
      break;
    }
    List localList2 = a(paramModable, paramm, paramModable.maxModCount());
    if (localList2.size() <= 0)
      return 0L;
    double d2 = 0.0D;
    for (int m = 0; m < localList2.size(); m++)
      d2 += ((Long)localList2.get(m)).longValue() * paramPortalModSharedKnobs.a(m + 1, paramm);
    return Math.round(d2 / 1000.0D);
    int j = 0;
    long l2 = 0L;
    int k = 0;
    if (j < paramModable.maxModCount())
    {
      Mod localMod1 = paramModable.getLinkedMod(j);
      if (localMod1 == null);
      for (Long localLong2 = null; ; localLong2 = (Long)localMod1.getStatModifiers().get(paramm))
      {
        if (localLong2 != null)
        {
          l2 += localLong2.longValue();
          k++;
        }
        j++;
        break;
      }
    }
    if (k > 0)
      return Math.round(l2 / k * (paramPortalModSharedKnobs.a(k, paramm) / 1000.0D));
    return 0L;
    an.a(o.b.equals(paramm.a()));
    List localList1 = a(paramModable, paramm, paramModable.maxModCount());
    if (localList1.size() <= 0)
      return 0L;
    long l1 = paramm.b();
    for (int i = 0; i < localList1.size(); i++)
    {
      Long localLong1 = (Long)localList1.get(i);
      double d1 = paramPortalModSharedKnobs.a(i + 1, paramm) / 1000.0D;
      l1 = ()(l1 * (paramm.b() - d1 * localLong1.longValue())) / paramm.b();
    }
    return paramm.b() - l1;
    return 0L;
  }

  private static List<Long> a(Modable paramModable, m paramm, int paramInt)
  {
    ArrayList localArrayList = eq.b(paramInt);
    int i = 0;
    if (i < paramInt)
    {
      Mod localMod = paramModable.getLinkedMod(i);
      if (localMod == null);
      for (Object localObject = null; ; localObject = (Long)localMod.getStatModifiers().get(paramm))
      {
        if (localObject != null)
          localArrayList.add(localObject);
        i++;
        break;
      }
    }
    Collections.sort(localArrayList, Collections.reverseOrder());
    return localArrayList;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.g
 * JD-Core Version:    0.6.2
 */