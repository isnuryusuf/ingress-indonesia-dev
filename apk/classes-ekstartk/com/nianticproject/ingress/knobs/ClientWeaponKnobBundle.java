package com.nianticproject.ingress.knobs;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.nianticproject.ingress.gameentity.components.EmpWeapon;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ClientWeaponKnobBundle
  implements g
{
  public static final ClientWeaponKnobBundle a = new ClientWeaponKnobBundle(b, c);
  private static final Map<Integer, Integer> b = dh.j().a(Integer.valueOf(1), Integer.valueOf(a(1))).a(Integer.valueOf(2), Integer.valueOf(a(2))).a(Integer.valueOf(3), Integer.valueOf(a(3))).a(Integer.valueOf(4), Integer.valueOf(a(4))).a(Integer.valueOf(5), Integer.valueOf(a(5))).a(Integer.valueOf(6), Integer.valueOf(a(6))).a(Integer.valueOf(7), Integer.valueOf(a(7))).a(Integer.valueOf(8), Integer.valueOf(a(8))).a();
  private static final Map<Integer, Integer> c = dh.j().a(Integer.valueOf(1), Integer.valueOf(10)).a(Integer.valueOf(2), Integer.valueOf(13)).a(Integer.valueOf(3), Integer.valueOf(16)).a(Integer.valueOf(4), Integer.valueOf(18)).a(Integer.valueOf(5), Integer.valueOf(21)).a(Integer.valueOf(6), Integer.valueOf(24)).a(Integer.valueOf(7), Integer.valueOf(27)).a(Integer.valueOf(8), Integer.valueOf(30)).a();

  @JsonProperty
  private final Map<Integer, Integer> ultraStrikeDamageRangeMap;

  @JsonProperty
  private final Map<Integer, Integer> xmpDamageRangeMap;

  private ClientWeaponKnobBundle()
  {
    this.xmpDamageRangeMap = b;
    this.ultraStrikeDamageRangeMap = c;
  }

  private ClientWeaponKnobBundle(Map<Integer, Integer> paramMap1, Map<Integer, Integer> paramMap2)
  {
    this.xmpDamageRangeMap = paramMap1;
    this.ultraStrikeDamageRangeMap = paramMap2;
  }

  private static int a(int paramInt)
  {
    return 40 + 2 * (paramInt * paramInt);
  }

  private static Float a(Map<Integer, Integer> paramMap)
  {
    Iterator localIterator = paramMap.values().iterator();
    float f1 = 0.0F;
    if (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      if (localInteger != null);
      for (float f2 = localInteger.intValue(); ; f2 = 0.0F)
      {
        f1 = f2 + f1;
        break;
      }
    }
    return Float.valueOf(f1 / paramMap.size());
  }

  public final float a()
  {
    return a(this.ultraStrikeDamageRangeMap).floatValue();
  }

  public final Integer a(EmpWeapon paramEmpWeapon)
  {
    return (Integer)this.ultraStrikeDamageRangeMap.get(Integer.valueOf(paramEmpWeapon.getLevel()));
  }

  public final Float b()
  {
    return a(this.xmpDamageRangeMap);
  }

  public final Integer b(EmpWeapon paramEmpWeapon)
  {
    return (Integer)this.xmpDamageRangeMap.get(Integer.valueOf(paramEmpWeapon.getLevel()));
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ClientWeaponKnobBundle));
    ClientWeaponKnobBundle localClientWeaponKnobBundle;
    do
    {
      return false;
      localClientWeaponKnobBundle = (ClientWeaponKnobBundle)paramObject;
    }
    while ((!ag.a(this.xmpDamageRangeMap, localClientWeaponKnobBundle.xmpDamageRangeMap)) || (!ag.a(this.ultraStrikeDamageRangeMap, localClientWeaponKnobBundle.ultraStrikeDamageRangeMap)));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.xmpDamageRangeMap;
    arrayOfObject[1] = this.ultraStrikeDamageRangeMap;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return ag.a(this).a("xmpDamageRangeMap", this.xmpDamageRangeMap).a("ultraStrikeDamageRangeMap", this.ultraStrikeDamageRangeMap).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.ClientWeaponKnobBundle
 * JD-Core Version:    0.6.2
 */