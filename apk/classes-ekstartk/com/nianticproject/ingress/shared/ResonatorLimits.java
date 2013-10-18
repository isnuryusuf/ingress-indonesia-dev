package com.nianticproject.ingress.shared;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.google.a.c.ht;
import com.google.a.c.jc;
import com.nianticproject.ingress.gameentity.components.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ResonatorLimits
{

  @JsonProperty
  private final du<ResonatorLevelBand> bands;

  private ResonatorLimits()
  {
    this.bands = null;
  }

  public ResonatorLimits(Set<ResonatorLevelBand> paramSet)
  {
    an.a(a(paramSet));
    this.bands = du.h().b(paramSet).a();
  }

  private static boolean a(Set<ResonatorLevelBand> paramSet)
  {
    HashSet localHashSet = jc.a();
    Iterator localIterator1 = paramSet.iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((ResonatorLevelBand)localIterator1.next()).b().iterator();
      while (localIterator2.hasNext())
      {
        int i = ((Integer)localIterator2.next()).intValue();
        if ((!a.a(i)) || (localHashSet.contains(Integer.valueOf(i))))
          return false;
        localHashSet.add(Integer.valueOf(i));
      }
    }
    return localHashSet.size() == 8;
  }

  public final int a(int paramInt)
  {
    Iterator localIterator = this.bands.iterator();
    while (localIterator.hasNext())
    {
      ResonatorLevelBand localResonatorLevelBand = (ResonatorLevelBand)localIterator.next();
      if (localResonatorLevelBand.a(Integer.valueOf(paramInt)))
        return localResonatorLevelBand.c();
    }
    throw new IllegalStateException("All Levels are required to be present in ResonatorLimits");
  }

  public final boolean a()
  {
    return a(this.bands);
  }

  public final boolean a(ht<Integer> paramht)
  {
    if (paramht.size() > 8)
      return false;
    HashSet localHashSet = jc.a(this.bands);
    Iterator localIterator1 = paramht.iterator();
    while (localIterator1.hasNext())
    {
      int i = ((Integer)localIterator1.next()).intValue();
      Iterator localIterator2 = localHashSet.iterator();
      while (true)
        if (localIterator2.hasNext())
        {
          ResonatorLevelBand localResonatorLevelBand = (ResonatorLevelBand)localIterator2.next();
          if (localResonatorLevelBand.a(Integer.valueOf(i)))
          {
            if (localResonatorLevelBand.c() > 0)
            {
              localHashSet.remove(localResonatorLevelBand);
              localHashSet.add(localResonatorLevelBand.a());
            }
            for (int j = 1; j == 0; j = 0)
              return false;
            break;
          }
        }
      throw new IllegalStateException("All Levels are required to be present in ResonatorLimits");
    }
    return true;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof ResonatorLimits)))
      return false;
    ResonatorLimits localResonatorLimits = (ResonatorLimits)paramObject;
    return ag.a(this.bands, localResonatorLimits.bands);
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.bands;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return "ResonatorLimits(" + this.bands.toString() + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.ResonatorLimits
 * JD-Core Version:    0.6.2
 */