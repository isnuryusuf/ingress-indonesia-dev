package com.nianticproject.ingress.common.w;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.c.ba;
import java.util.ArrayList;
import java.util.List;

public final class aj
{
  public static List<ba> a(double paramDouble)
  {
    if (paramDouble >= 0.0D);
    ArrayList localArrayList;
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      localArrayList = eq.a();
      if (paramDouble <= 999999.0D)
      {
        if (paramDouble < 1000.0D)
          break;
        localArrayList.addAll(ak.a(paramDouble / 1000.0D, 1));
        localArrayList.add(ba.bT);
      }
      return localArrayList;
    }
    localArrayList.addAll(ak.a(paramDouble));
    localArrayList.add(ba.bY);
    return localArrayList;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.aj
 * JD-Core Version:    0.6.2
 */