package com.nianticproject.ingress.common.missions;

import com.google.a.a.an;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.model.a.e;
import com.nianticproject.ingress.common.model.a.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class co
{
  private static final HashMap<Class<? extends ca>, i> a = hc.b();
  private static final cp[] b;
  private static final cp[] c = arrayOfcp2;
  private static final cp[] d = (cp[])b;

  static
  {
    cp[] arrayOfcp1 = new cp[8];
    arrayOfcp1[0] = cp.a;
    arrayOfcp1[1] = cp.b;
    arrayOfcp1[2] = cp.c;
    arrayOfcp1[3] = cp.d;
    arrayOfcp1[4] = cp.e;
    arrayOfcp1[5] = cp.f;
    arrayOfcp1[6] = cp.g;
    arrayOfcp1[7] = cp.h;
    b = arrayOfcp1;
    cp[] arrayOfcp2 = new cp[5];
    arrayOfcp2[0] = cp.a;
    arrayOfcp2[1] = cp.i;
    arrayOfcp2[2] = cp.c;
    arrayOfcp2[3] = cp.d;
    arrayOfcp2[4] = cp.e;
  }

  public static i a(ca paramca)
  {
    an.a(paramca);
    return (i)a.get(paramca.getClass());
  }

  public static List<ca> a()
  {
    ArrayList localArrayList = new ArrayList(d.length);
    for (int i = 0; i < d.length; i++)
      localArrayList.add(d[i].l);
    return localArrayList;
  }

  public static boolean a(e parame)
  {
    cp[] arrayOfcp = d;
    int i = arrayOfcp.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (parame.c(arrayOfcp[j].k) == ck.d)
          bool = true;
      }
      else
        return bool;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.co
 * JD-Core Version:    0.6.2
 */