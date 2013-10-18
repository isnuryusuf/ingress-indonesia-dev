package com.nianticproject.ingress.knobs;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.google.a.c.jc;
import com.nianticproject.ingress.shared.ResonatorLevelBand;
import com.nianticproject.ingress.shared.ResonatorLimits;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalKnobBundle
  implements g
{
  public static final ResonatorLimits a = new ResonatorLimits(jc.a(arrayOfResonatorLevelBand));

  @Deprecated
  @JsonProperty
  private final boolean canPlayerRemoveMod;

  @JsonProperty
  private final int maxModsPerPlayer;

  @JsonProperty
  private final ResonatorLimits resonatorLimits;

  static
  {
    ResonatorLevelBand[] arrayOfResonatorLevelBand = new ResonatorLevelBand[8];
    arrayOfResonatorLevelBand[0] = new ResonatorLevelBand(8, Integer.valueOf(1));
    arrayOfResonatorLevelBand[1] = new ResonatorLevelBand(4, Integer.valueOf(2));
    arrayOfResonatorLevelBand[2] = new ResonatorLevelBand(4, Integer.valueOf(3));
    arrayOfResonatorLevelBand[3] = new ResonatorLevelBand(4, Integer.valueOf(4));
    arrayOfResonatorLevelBand[4] = new ResonatorLevelBand(2, Integer.valueOf(5));
    arrayOfResonatorLevelBand[5] = new ResonatorLevelBand(2, Integer.valueOf(6));
    arrayOfResonatorLevelBand[6] = new ResonatorLevelBand(1, Integer.valueOf(7));
    arrayOfResonatorLevelBand[7] = new ResonatorLevelBand(1, Integer.valueOf(8));
  }

  public PortalKnobBundle()
  {
    this(a);
  }

  private PortalKnobBundle(ResonatorLimits paramResonatorLimits)
  {
    this.resonatorLimits = paramResonatorLimits;
    this.maxModsPerPlayer = 4;
    this.canPlayerRemoveMod = false;
    an.b(this.resonatorLimits.a());
    boolean bool2;
    if (this.maxModsPerPlayer >= 0)
    {
      bool2 = bool1;
      an.b(bool2);
      if (this.maxModsPerPlayer > 4)
        break label62;
    }
    while (true)
    {
      an.b(bool1);
      return;
      bool2 = false;
      break;
      label62: bool1 = false;
    }
  }

  public final ResonatorLimits a()
  {
    return this.resonatorLimits;
  }

  public final int b()
  {
    return this.maxModsPerPlayer;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof PortalKnobBundle)));
    PortalKnobBundle localPortalKnobBundle;
    do
    {
      return false;
      localPortalKnobBundle = (PortalKnobBundle)paramObject;
    }
    while ((!ag.a(this.resonatorLimits, localPortalKnobBundle.resonatorLimits)) || (!ag.a(Integer.valueOf(this.maxModsPerPlayer), Integer.valueOf(localPortalKnobBundle.maxModsPerPlayer))) || (!ag.a(Boolean.valueOf(this.canPlayerRemoveMod), Boolean.valueOf(localPortalKnobBundle.canPlayerRemoveMod))));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.resonatorLimits;
    arrayOfObject[1] = Integer.valueOf(this.maxModsPerPlayer);
    arrayOfObject[2] = Boolean.valueOf(this.canPlayerRemoveMod);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return ag.a(this).a("resonatorLimits", this.resonatorLimits).a("maxModsPerPlayer", this.maxModsPerPlayer).a("canPlayerRemoveMod", this.canPlayerRemoveMod).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.PortalKnobBundle
 * JD-Core Version:    0.6.2
 */