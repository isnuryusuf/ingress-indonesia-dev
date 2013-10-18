package com.nianticproject.ingress.shared;

import com.google.a.a.an;
import com.nianticproject.ingress.gameentity.components.ImmutableLocationE6;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.f;
import org.codehaus.jackson.annotate.JsonProperty;

public class RegionPoint
  implements Comparable<RegionPoint>
{

  @JsonProperty
  private final String guid;

  @JsonProperty
  private final ImmutableLocationE6 location;

  private RegionPoint()
  {
    this.guid = null;
    this.location = null;
  }

  private RegionPoint(String paramString, LocationE6 paramLocationE6)
  {
    this.guid = paramString;
    this.location = ImmutableLocationE6.copyOf(paramLocationE6);
  }

  public static RegionPoint a(f paramf)
  {
    LocationE6 localLocationE6 = (LocationE6)paramf.getComponent(LocationE6.class);
    an.a(localLocationE6, "Entity does not have a location component");
    return new RegionPoint(paramf.getGuid(), localLocationE6);
  }

  public final String a()
  {
    return this.guid;
  }

  public final LocationE6 b()
  {
    return this.location;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1;
    if (this == paramObject)
      bool1 = true;
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        bool1 = false;
      }
      while (paramObject == null);
      bool2 = paramObject instanceof RegionPoint;
      bool1 = false;
    }
    while (!bool2);
    RegionPoint localRegionPoint = (RegionPoint)paramObject;
    return this.guid.equals(localRegionPoint.guid);
  }

  public int hashCode()
  {
    return this.guid.hashCode();
  }

  public String toString()
  {
    return this.guid + " at " + this.location;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.RegionPoint
 * JD-Core Version:    0.6.2
 */