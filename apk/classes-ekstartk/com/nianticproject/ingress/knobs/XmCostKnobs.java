package com.nianticproject.ingress.knobs;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.google.a.c.du;
import com.google.a.c.eq;
import com.nianticproject.ingress.shared.af;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class XmCostKnobs
  implements g
{
  public static final dh<af, List<Integer>> a = new di().a(af.k, q).a(af.f, q).a(af.d, q).a(af.e, q).a(af.h, q).a(af.l, q).a();
  public static final XmCostKnobs b = new XmCostKnobs();
  private static final du<af> c = du.a(af.f, af.e, af.h, af.d, af.l, af.k, new af[0]);
  private static final int[] d = { 50, 100, 150, 200, 250, 300, 350, 400 };
  private static final int[] e = { 200, 400, 600, 800, 1000, 1200, 1400, 1600 };
  private static final int[] f = { 200, 400, 600, 800, 1000, 1200, 1400, 1600 };
  private static final int[] g = { 200, 400, 600, 800, 1000, 1200, 1400, 1600 };
  private static final int[] h = { 200, 400, 600, 800, 1000, 1200, 1400, 1600 };
  private static final int[] i = { 200, 400, 600, 800, 1000, 1200, 1400, 1600 };
  private static final int[] j = { 200, 400, 600, 800, 1000, 1200, 1400, 1600 };
  private static final int[] k = { 50, 100, 150, 200, 250, 300, 350, 400 };
  private static final int[] l = { 50, 100, 150, 200, 250, 300, 350, 400 };
  private static final int[] m = { 50, 100, 150, 200, 250, 300, 350, 400 };
  private static final int[] n = { 50, 100, 150, 200, 250, 300, 350, 400 };
  private static final int[] o = { 50, 100, 150, 200, 250, 300, 350, 400 };
  private static final int[] p = { 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000 };
  private static final List<Integer> q;

  @JsonProperty
  private int[] flipCardCostByLevel = p;

  @Deprecated
  @JsonProperty
  private int[] forceAmplifierDeployCostByLevel = g;

  @Deprecated
  @JsonProperty
  private int[] heatsinkDeployCostByLevel = h;

  @Deprecated
  @JsonProperty
  private int[] linkAmplifierDeployCostByLevel = f;

  @Deprecated
  @JsonProperty
  private int[] multihackDeployCostByLevel = i;

  @JsonProperty
  private int[] portalHackEnemyCostByLevel = o;

  @JsonProperty
  private int[] portalHackFriendlyCostByLevel = m;

  @JsonProperty
  private int[] portalHackNeutralCostByLevel = n;

  @JsonProperty
  private Map<af, List<Integer>> portalModByLevel = a;

  @JsonProperty
  private int[] resonatorDeployCostByLevel = k;

  @JsonProperty
  private int[] resonatorUpgradeCostByLevel = l;

  @Deprecated
  @JsonProperty
  private int[] shieldDeployCostByLevel = e;

  @Deprecated
  @JsonProperty
  private int[] turretDeployCostByLevel = j;

  @JsonProperty
  private int[] xmpFiringCostByLevel = d;

  static
  {
    Integer[] arrayOfInteger = new Integer[8];
    arrayOfInteger[0] = Integer.valueOf(200);
    arrayOfInteger[1] = Integer.valueOf(400);
    arrayOfInteger[2] = Integer.valueOf(600);
    arrayOfInteger[3] = Integer.valueOf(800);
    arrayOfInteger[4] = Integer.valueOf(1000);
    arrayOfInteger[5] = Integer.valueOf(1200);
    arrayOfInteger[6] = Integer.valueOf(1400);
    arrayOfInteger[7] = Integer.valueOf(1600);
    q = eq.a(arrayOfInteger);
  }

  public XmCostKnobs()
  {
    a();
  }

  private void a()
  {
    an.a(a(this.xmpFiringCostByLevel));
    an.a(a(this.resonatorDeployCostByLevel));
    an.a(a(this.resonatorUpgradeCostByLevel));
    an.a(a(this.portalHackFriendlyCostByLevel));
    an.a(a(this.portalHackNeutralCostByLevel));
    an.a(a(this.portalHackEnemyCostByLevel));
    an.a(a(this.flipCardCostByLevel));
    Iterator localIterator1 = this.portalModByLevel.keySet().iterator();
    while (localIterator1.hasNext())
    {
      af localaf2 = (af)localIterator1.next();
      List localList = (List)this.portalModByLevel.get(localaf2);
      an.a(localList);
      an.a(a(localList));
    }
    Iterator localIterator2 = c.iterator();
    while (localIterator2.hasNext())
    {
      af localaf1 = (af)localIterator2.next();
      an.a(this.portalModByLevel.containsKey(localaf1));
    }
  }

  private static boolean a(List<Integer> paramList)
  {
    if (paramList.size() != 8)
      return false;
    for (int i1 = 1; i1 <= 8; i1++)
      if (((Integer)paramList.get(i1 - 1)).intValue() < 0)
        return false;
    return true;
  }

  private static boolean a(int[] paramArrayOfInt)
  {
    ArrayList localArrayList = eq.a();
    for (int i1 = 0; i1 < paramArrayOfInt.length; i1++)
      localArrayList.add(Integer.valueOf(paramArrayOfInt[i1]));
    return a(localArrayList);
  }

  public final int a(int paramInt)
  {
    if ((paramInt > 0) && (8 >= paramInt));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "level must be between AccessLevel's min and max");
      return this.xmpFiringCostByLevel[(paramInt - 1)];
    }
  }

  public final int a(af paramaf, int paramInt)
  {
    if ((paramInt > 0) && (8 >= paramInt));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "level must be between AccessLevel's min and max");
      an.a(this.portalModByLevel.containsKey(paramaf));
      return ((Integer)((List)this.portalModByLevel.get(paramaf)).get(paramInt - 1)).intValue();
    }
  }

  public final int b(int paramInt)
  {
    if ((paramInt > 0) && (8 >= paramInt));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "level must be between AccessLevel's min and max");
      return this.resonatorDeployCostByLevel[(paramInt - 1)];
    }
  }

  public final int c(int paramInt)
  {
    if ((paramInt > 0) && (8 >= paramInt));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "level must be between AccessLevel's min and max");
      return this.resonatorUpgradeCostByLevel[(paramInt - 1)];
    }
  }

  public final int d(int paramInt)
  {
    if ((paramInt > 0) && (8 >= paramInt));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "level must be between AccessLevel's min and max");
      return this.portalHackFriendlyCostByLevel[(paramInt - 1)];
    }
  }

  public final int e(int paramInt)
  {
    if ((paramInt > 0) && (8 >= paramInt));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "level must be between AccessLevel's min and max");
      return this.portalHackNeutralCostByLevel[(paramInt - 1)];
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    XmCostKnobs localXmCostKnobs;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localXmCostKnobs = (XmCostKnobs)paramObject;
    }
    while ((Arrays.equals(this.portalHackEnemyCostByLevel, localXmCostKnobs.portalHackEnemyCostByLevel)) && (Arrays.equals(this.portalHackFriendlyCostByLevel, localXmCostKnobs.portalHackFriendlyCostByLevel)) && (Arrays.equals(this.portalHackNeutralCostByLevel, localXmCostKnobs.portalHackNeutralCostByLevel)) && (Arrays.equals(this.resonatorDeployCostByLevel, localXmCostKnobs.resonatorDeployCostByLevel)) && (Arrays.equals(this.resonatorUpgradeCostByLevel, localXmCostKnobs.resonatorUpgradeCostByLevel)) && (Arrays.equals(this.shieldDeployCostByLevel, localXmCostKnobs.shieldDeployCostByLevel)) && (Arrays.equals(this.linkAmplifierDeployCostByLevel, localXmCostKnobs.linkAmplifierDeployCostByLevel)) && (Arrays.equals(this.xmpFiringCostByLevel, localXmCostKnobs.xmpFiringCostByLevel)) && (Arrays.equals(this.flipCardCostByLevel, localXmCostKnobs.flipCardCostByLevel)));
    return false;
  }

  public final int f(int paramInt)
  {
    if ((paramInt > 0) && (8 >= paramInt));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "level must be between AccessLevel's min and max");
      return this.portalHackEnemyCostByLevel[(paramInt - 1)];
    }
  }

  public final int g(int paramInt)
  {
    if ((paramInt > 0) && (8 >= paramInt));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "level must be between AccessLevel's min and max");
      return this.flipCardCostByLevel[(paramInt - 1)];
    }
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[9];
    arrayOfObject[0] = this.portalHackEnemyCostByLevel;
    arrayOfObject[1] = this.portalHackFriendlyCostByLevel;
    arrayOfObject[2] = this.portalHackNeutralCostByLevel;
    arrayOfObject[3] = this.resonatorDeployCostByLevel;
    arrayOfObject[4] = this.resonatorUpgradeCostByLevel;
    arrayOfObject[5] = this.shieldDeployCostByLevel;
    arrayOfObject[6] = this.linkAmplifierDeployCostByLevel;
    arrayOfObject[7] = this.xmpFiringCostByLevel;
    arrayOfObject[8] = this.flipCardCostByLevel;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[9];
    arrayOfObject[0] = this.xmpFiringCostByLevel;
    arrayOfObject[1] = this.shieldDeployCostByLevel;
    arrayOfObject[2] = this.linkAmplifierDeployCostByLevel;
    arrayOfObject[3] = this.resonatorDeployCostByLevel;
    arrayOfObject[4] = this.resonatorUpgradeCostByLevel;
    arrayOfObject[5] = this.portalHackFriendlyCostByLevel;
    arrayOfObject[6] = this.portalHackNeutralCostByLevel;
    arrayOfObject[7] = this.portalHackEnemyCostByLevel;
    arrayOfObject[8] = this.flipCardCostByLevel;
    return String.format("xmpFiringCostByLevel: %s shieldDeployCostByLevel: %s linkAmplifierDeployCostByLevel: %s resonatorDeployCostByLevel: %s resonatorUpgradeCostByLevel: %s portalHackFriendlyCostByLevel: %s portalHackNeutralCostByLevel: %s portalHackEnemyCostByLevel: %s flipCardCostByLevel: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.XmCostKnobs
 * JD-Core Version:    0.6.2
 */