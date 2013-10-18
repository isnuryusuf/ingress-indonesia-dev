package com.nianticproject.ingress.shared;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.google.a.c.jc;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ResonatorLevelBand
{

  @JsonProperty
  private final du<Integer> applicableLevels;

  @JsonProperty
  private final int remaining;

  private ResonatorLevelBand()
  {
    this.remaining = 0;
    this.applicableLevels = null;
  }

  public ResonatorLevelBand(int paramInt, Integer paramInteger)
  {
    this(paramInt, jc.a(new Integer[] { paramInteger }));
  }

  private ResonatorLevelBand(int paramInt, Set<Integer> paramSet)
  {
    boolean bool2;
    if (paramInt >= 0)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramInt > 8)
        break label54;
    }
    while (true)
    {
      an.a(bool1);
      this.remaining = paramInt;
      this.applicableLevels = du.h().b(paramSet).a();
      return;
      bool2 = false;
      break;
      label54: bool1 = false;
    }
  }

  public final ResonatorLevelBand a()
  {
    if (this.remaining > 0);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      return new ResonatorLevelBand(-1 + this.remaining, this.applicableLevels);
    }
  }

  public final boolean a(Integer paramInteger)
  {
    return this.applicableLevels.contains(paramInteger);
  }

  final du<Integer> b()
  {
    return this.applicableLevels;
  }

  public final int c()
  {
    return this.remaining;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof ResonatorLevelBand)));
    ResonatorLevelBand localResonatorLevelBand;
    do
    {
      return false;
      localResonatorLevelBand = (ResonatorLevelBand)paramObject;
    }
    while ((!ag.a(Integer.valueOf(this.remaining), Integer.valueOf(localResonatorLevelBand.remaining))) || (!ag.a(this.applicableLevels, localResonatorLevelBand.applicableLevels)));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.remaining);
    arrayOfObject[1] = this.applicableLevels;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return "Band remaining slots: " + this.remaining + ", levels: " + this.applicableLevels;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.ResonatorLevelBand
 * JD-Core Version:    0.6.2
 */