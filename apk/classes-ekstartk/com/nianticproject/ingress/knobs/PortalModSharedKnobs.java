package com.nianticproject.ingress.knobs;

import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.gameentity.components.m;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class PortalModSharedKnobs
  implements g
{
  public static final List<Integer> a;
  public static final List<Integer> b;
  public static final List<Integer> c;
  public static final List<Integer> d;
  public static final List<Integer> e = eq.a(arrayOfInteger5);
  public static final du<m> f = du.h().c(m.d).c(m.i).c(m.k).c(m.g).c(m.h).a();
  public static final PortalModSharedKnobs g = new PortalModSharedKnobs();

  @JsonProperty
  private final Map<m, List<Integer>> diminishingValues = hc.b();

  @JsonProperty
  private final List<Integer> multiForceAmpDiminishingValues;

  @JsonProperty
  private final List<Integer> multiLinkAmpDiminishingValues;

  @JsonProperty
  private final List<Integer> multiTurretFreqDiminishingValues;

  static
  {
    Integer[] arrayOfInteger1 = new Integer[4];
    arrayOfInteger1[0] = Integer.valueOf(1000);
    arrayOfInteger1[1] = Integer.valueOf(1250);
    arrayOfInteger1[2] = Integer.valueOf(1375);
    arrayOfInteger1[3] = Integer.valueOf(1500);
    a = eq.a(arrayOfInteger1);
    Integer[] arrayOfInteger2 = new Integer[4];
    arrayOfInteger2[0] = Integer.valueOf(1000);
    arrayOfInteger2[1] = Integer.valueOf(1250);
    arrayOfInteger2[2] = Integer.valueOf(1375);
    arrayOfInteger2[3] = Integer.valueOf(1500);
    b = eq.a(arrayOfInteger2);
    Integer[] arrayOfInteger3 = new Integer[4];
    arrayOfInteger3[0] = Integer.valueOf(1000);
    arrayOfInteger3[1] = Integer.valueOf(1250);
    arrayOfInteger3[2] = Integer.valueOf(1375);
    arrayOfInteger3[3] = Integer.valueOf(1500);
    c = eq.a(arrayOfInteger3);
    Integer[] arrayOfInteger4 = new Integer[4];
    arrayOfInteger4[0] = Integer.valueOf(1000);
    arrayOfInteger4[1] = Integer.valueOf(500);
    arrayOfInteger4[2] = Integer.valueOf(500);
    arrayOfInteger4[3] = Integer.valueOf(500);
    d = eq.a(arrayOfInteger4);
    Integer[] arrayOfInteger5 = new Integer[4];
    arrayOfInteger5[0] = Integer.valueOf(1000);
    arrayOfInteger5[1] = Integer.valueOf(500);
    arrayOfInteger5[2] = Integer.valueOf(500);
    arrayOfInteger5[3] = Integer.valueOf(500);
  }

  public PortalModSharedKnobs()
  {
    this.diminishingValues.put(m.d, a);
    this.diminishingValues.put(m.i, b);
    this.diminishingValues.put(m.k, c);
    this.diminishingValues.put(m.h, e);
    this.diminishingValues.put(m.g, d);
    this.multiLinkAmpDiminishingValues = ((List)this.diminishingValues.get(m.d));
    this.multiForceAmpDiminishingValues = ((List)this.diminishingValues.get(m.i));
    this.multiTurretFreqDiminishingValues = ((List)this.diminishingValues.get(m.k));
    a();
  }

  private void a()
  {
    Iterator localIterator1 = f.iterator();
    while (localIterator1.hasNext())
    {
      m localm2 = (m)localIterator1.next();
      an.b(this.diminishingValues.containsKey(localm2));
    }
    Iterator localIterator2 = this.diminishingValues.keySet().iterator();
    if (localIterator2.hasNext())
    {
      m localm1 = (m)localIterator2.next();
      List localList = (List)this.diminishingValues.get(localm1);
      an.a(localList);
      boolean bool1;
      if (localList.size() == 4)
      {
        bool1 = true;
        label113: an.b(bool1);
        Iterator localIterator3 = localList.iterator();
        label127: if (localIterator3.hasNext())
          if (((Integer)localIterator3.next()).intValue() < 0)
            break label170;
      }
      label170: for (boolean bool2 = true; ; bool2 = false)
      {
        an.b(bool2);
        break label127;
        break;
        bool1 = false;
        break label113;
      }
    }
  }

  public final int a(int paramInt, m paramm)
  {
    boolean bool1 = true;
    boolean bool2;
    List localList;
    if (paramInt > 0)
    {
      bool2 = bool1;
      an.a(bool2);
      localList = (List)this.diminishingValues.get(paramm);
      an.a(localList);
      if (paramInt > localList.size())
        break label73;
    }
    while (true)
    {
      an.a(bool1);
      return ((Integer)localList.get(paramInt - 1)).intValue();
      bool2 = false;
      break;
      label73: bool1 = false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.PortalModSharedKnobs
 * JD-Core Version:    0.6.2
 */