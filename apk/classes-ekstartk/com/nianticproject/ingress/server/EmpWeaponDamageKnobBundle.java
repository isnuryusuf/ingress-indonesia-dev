package com.nianticproject.ingress.server;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.nianticproject.ingress.gameentity.components.EmpWeapon;
import com.nianticproject.ingress.knobs.g;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public final class EmpWeaponDamageKnobBundle
  implements g
{
  public static final EmpWeaponDamageKnobBundle a = new EmpWeaponDamageKnobBundle(b, c);
  private static final Map<Integer, EmpDamageSpec> b = dh.j().a(Integer.valueOf(1), new EmpDamageSpec(136, 180, 0.01F)).a(Integer.valueOf(2), new EmpDamageSpec(226, 300, 0.02F)).a(Integer.valueOf(3), new EmpDamageSpec(406, 540, 0.04F)).a(Integer.valueOf(4), new EmpDamageSpec(630, 840, 0.06F)).a(Integer.valueOf(5), new EmpDamageSpec(855, 1140, 0.1F)).a(Integer.valueOf(6), new EmpDamageSpec(1071, 1428, 0.14F)).a(Integer.valueOf(7), new EmpDamageSpec(1350, 1800, 0.18F)).a(Integer.valueOf(8), new EmpDamageSpec(1755, 2340, 0.2F)).a();
  private static final Map<Integer, EmpDamageSpec> c = dh.j().a(Integer.valueOf(1), new EmpDamageSpec(272, 360, 0.01F)).a(Integer.valueOf(2), new EmpDamageSpec(452, 600, 0.02F)).a(Integer.valueOf(3), new EmpDamageSpec(812, 1080, 0.04F)).a(Integer.valueOf(4), new EmpDamageSpec(1260, 1680, 0.06F)).a(Integer.valueOf(5), new EmpDamageSpec(1710, 2280, 0.1F)).a(Integer.valueOf(6), new EmpDamageSpec(2142, 2856, 0.14F)).a(Integer.valueOf(7), new EmpDamageSpec(2700, 3600, 0.18F)).a(Integer.valueOf(8), new EmpDamageSpec(3510, 4680, 0.2F)).a();

  @JsonProperty
  private final Map<Integer, EmpDamageSpec> ultraStrikeDamageSpecMap;

  @JsonProperty
  private final Map<Integer, EmpDamageSpec> xmpDamageSpecMap;

  private EmpWeaponDamageKnobBundle()
  {
    this.xmpDamageSpecMap = b;
    this.ultraStrikeDamageSpecMap = c;
  }

  private EmpWeaponDamageKnobBundle(Map<Integer, EmpDamageSpec> paramMap1, Map<Integer, EmpDamageSpec> paramMap2)
  {
    this.xmpDamageSpecMap = paramMap1;
    this.ultraStrikeDamageSpecMap = paramMap2;
  }

  public final EmpDamageSpec a(EmpWeapon paramEmpWeapon)
  {
    return (EmpDamageSpec)this.ultraStrikeDamageSpecMap.get(Integer.valueOf(paramEmpWeapon.getLevel()));
  }

  public final EmpDamageSpec b(EmpWeapon paramEmpWeapon)
  {
    return (EmpDamageSpec)this.xmpDamageSpecMap.get(Integer.valueOf(paramEmpWeapon.getLevel()));
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof EmpWeaponDamageKnobBundle));
    EmpWeaponDamageKnobBundle localEmpWeaponDamageKnobBundle;
    do
    {
      return false;
      localEmpWeaponDamageKnobBundle = (EmpWeaponDamageKnobBundle)paramObject;
    }
    while ((!ag.a(this.xmpDamageSpecMap, localEmpWeaponDamageKnobBundle.xmpDamageSpecMap)) || (!ag.a(this.ultraStrikeDamageSpecMap, localEmpWeaponDamageKnobBundle.ultraStrikeDamageSpecMap)));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.xmpDamageSpecMap;
    arrayOfObject[1] = this.ultraStrikeDamageSpecMap;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return ag.a(this).a("xmpDamageSpecMap: ", this.xmpDamageSpecMap).a("ultraStrikeDamageSpecMap", this.ultraStrikeDamageSpecMap).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.server.EmpWeaponDamageKnobBundle
 * JD-Core Version:    0.6.2
 */