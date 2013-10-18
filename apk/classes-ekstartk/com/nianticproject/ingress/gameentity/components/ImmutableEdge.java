package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.d.ad;
import com.google.a.d.ae;
import com.google.a.d.j;
import com.google.a.d.k;
import com.google.a.d.v;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.b.a;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ImmutableEdge
  implements CachingRegionIndex, Edge
{
  private transient f containingEntity;
  private transient dc<j> coveringCache;

  @JsonProperty
  private final String destinationPortalGuid;

  @JsonProperty
  private final ImmutableLocationE6 destinationPortalLocation;

  @JsonProperty
  private final String originPortalGuid;

  @JsonProperty
  private final ImmutableLocationE6 originPortalLocation;

  private ImmutableEdge()
  {
    this.originPortalGuid = null;
    this.originPortalLocation = null;
    this.destinationPortalGuid = null;
    this.destinationPortalLocation = null;
  }

  public ImmutableEdge(String paramString1, String paramString2, LocationE6 paramLocationE61, LocationE6 paramLocationE62)
  {
    if (!paramString1.equals(paramString2));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Portal guids cannot be equal guid=%s" + paramString2);
      this.originPortalGuid = paramString1;
      this.originPortalLocation = ImmutableLocationE6.copyOf(paramLocationE61);
      this.destinationPortalGuid = ((String)an.a(paramString2));
      this.destinationPortalLocation = ImmutableLocationE6.copyOf(paramLocationE62);
      return;
    }
  }

  public final void computeCovering()
  {
    if (this.coveringCache == null)
    {
      ae localae = new ae();
      localae.a(18);
      this.coveringCache = dc.a(localae.a(getIndexRegion()).a());
    }
  }

  public final double computeMapAreaBoundM2()
  {
    return a.a(getIndexRegion());
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    ImmutableEdge localImmutableEdge;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!(paramObject instanceof ImmutableEdge))
        return false;
      localImmutableEdge = (ImmutableEdge)paramObject;
    }
    while ((this.originPortalGuid.equals(localImmutableEdge.originPortalGuid)) && (this.originPortalLocation.equals(localImmutableEdge.originPortalLocation)) && (this.destinationPortalGuid.equals(localImmutableEdge.destinationPortalGuid)) && (this.destinationPortalLocation.equals(localImmutableEdge.destinationPortalLocation)));
    return false;
  }

  public final dc<j> getCovering()
  {
    return this.coveringCache;
  }

  public final String getDestinationPortalGuid()
  {
    return this.destinationPortalGuid;
  }

  public final LocationE6 getDestinationPortalLocation()
  {
    return this.destinationPortalLocation;
  }

  public final f getEntity()
  {
    return this.containingEntity;
  }

  public final String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public final ad getIndexRegion()
  {
    return v.a(this.originPortalLocation.getLatLng(), this.destinationPortalLocation.getLatLng());
  }

  public final String getOriginPortalGuid()
  {
    return this.originPortalGuid;
  }

  public final LocationE6 getOriginPortalLocation()
  {
    return this.originPortalLocation;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.originPortalGuid;
    arrayOfObject[1] = this.destinationPortalGuid;
    arrayOfObject[2] = this.originPortalLocation;
    arrayOfObject[3] = this.destinationPortalLocation;
    return ag.a(arrayOfObject);
  }

  public final void setEntity(f paramf)
  {
    this.containingEntity = e.a(this.containingEntity, this, Edge.class, paramf);
  }

  public final String toString()
  {
    return "Origin: " + this.originPortalGuid + " at " + this.originPortalLocation + ", Destination: " + this.destinationPortalGuid + " at " + this.destinationPortalLocation;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.ImmutableEdge
 * JD-Core Version:    0.6.2
 */