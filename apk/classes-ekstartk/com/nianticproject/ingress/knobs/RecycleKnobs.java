package com.nianticproject.ingress.knobs;

import com.google.a.a.an;
import com.google.a.a.ap;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.google.a.c.ee;
import com.google.a.c.eq;
import com.google.a.c.jc;
import com.nianticproject.ingress.shared.af;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.codehaus.jackson.annotate.JsonProperty;

public final class RecycleKnobs
  implements g
{
  public static final List<Integer> a;
  public static final dh<af, List<Integer>> b;
  public static final RecycleKnobs c;
  private static final Logger d = Logger.getLogger(RecycleKnobs.class.getName());
  private static final du<af> e;
  private static final du<af> f = du.a(ee.c(jc.a(af.values()), ap.a(ap.a(e))));

  @JsonProperty
  private final Map<af, List<Integer>> recycleValuesMap = b;

  static
  {
    Integer[] arrayOfInteger = new Integer[8];
    arrayOfInteger[0] = Integer.valueOf(20);
    arrayOfInteger[1] = Integer.valueOf(40);
    arrayOfInteger[2] = Integer.valueOf(60);
    arrayOfInteger[3] = Integer.valueOf(80);
    arrayOfInteger[4] = Integer.valueOf(100);
    arrayOfInteger[5] = Integer.valueOf(120);
    arrayOfInteger[6] = Integer.valueOf(140);
    arrayOfInteger[7] = Integer.valueOf(160);
    a = eq.a(arrayOfInteger);
    b = new di().a(af.a, a).a(af.b, a).a(af.c, a).a(af.g, a).a(af.i, a).a(af.j, a).a(af.k, a).a(af.m, a).a();
    dv localdv = du.h();
    af[] arrayOfaf = new af[7];
    arrayOfaf[0] = af.n;
    arrayOfaf[1] = af.d;
    arrayOfaf[2] = af.e;
    arrayOfaf[3] = af.f;
    arrayOfaf[4] = af.h;
    arrayOfaf[5] = af.l;
    arrayOfaf[6] = af.m;
    e = localdv.b(arrayOfaf).a();
    c = new RecycleKnobs();
    af.values();
  }

  public final int a(af paramaf, int paramInt)
  {
    an.a(paramaf);
    if (this.recycleValuesMap.containsKey(paramaf))
      return ((Integer)((List)this.recycleValuesMap.get(paramaf)).get(paramInt - 1)).intValue();
    d.log(Level.SEVERE, "Recycle for resource has no recycle value: ", paramaf.toString());
    return 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.RecycleKnobs
 * JD-Core Version:    0.6.2
 */