package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ImmutablePortalCoupler
  implements ImageByUrl, PortalCoupler, s
{
  private transient boolean dirty;

  @JsonProperty
  private final String portalAddress;

  @JsonProperty
  private final String portalGuid;

  @JsonProperty
  private final String portalImageUrl;

  @JsonProperty
  private final u portalLocation;

  @JsonProperty
  private final String portalTitle;

  public ImmutablePortalCoupler()
  {
    this.portalGuid = null;
    this.portalImageUrl = null;
    this.portalLocation = null;
    this.portalTitle = null;
    this.portalAddress = "[Unknown Location]";
    this.dirty = false;
  }

  public ImmutablePortalCoupler(String paramString1, u paramu, String paramString2, String paramString3, String paramString4)
  {
    this.portalGuid = paramString1;
    this.portalLocation = paramu;
    this.portalImageUrl = paramString2;
    this.portalTitle = paramString3;
    this.portalAddress = ((String)an.a(paramString4));
    this.dirty = false;
  }

  public final boolean approxEquals(ImmutablePortalCoupler paramImmutablePortalCoupler)
  {
    if (paramImmutablePortalCoupler == null);
    while (true)
    {
      return false;
      if ((ag.a(this.portalAddress, paramImmutablePortalCoupler.portalAddress)) && (ag.a(this.portalGuid, paramImmutablePortalCoupler.portalGuid)) && (ag.a(this.portalTitle, paramImmutablePortalCoupler.portalTitle)) && (ag.a(this.portalImageUrl, paramImmutablePortalCoupler.portalImageUrl)))
      {
        u localu1 = this.portalLocation;
        u localu2 = paramImmutablePortalCoupler.portalLocation;
        boolean bool;
        if (localu1 == null)
          if (localu2 == null)
            bool = true;
        while (bool)
        {
          return true;
          bool = false;
          continue;
          if (localu2 == null)
            bool = false;
          else
            bool = localu1.a(localu2, 2.0E-08D);
        }
      }
    }
  }

  public final String getImageUrl()
  {
    return this.portalImageUrl;
  }

  public final String getPortalAddress()
  {
    return this.portalAddress;
  }

  public final String getPortalGuid()
  {
    return this.portalGuid;
  }

  public final u getPortalLocation()
  {
    return this.portalLocation;
  }

  public final String getPortalTitle()
  {
    return this.portalTitle;
  }

  public final boolean isDirty()
  {
    return this.dirty;
  }

  public final void setClean()
  {
    this.dirty = false;
  }

  public final String toString()
  {
    return "ImmutablePortalCoupler [portalGuid=" + this.portalGuid + ", portalLocation=" + this.portalLocation + ", portalImageUrl=" + this.portalImageUrl + ", portalTitle=" + this.portalTitle + ", portalAddress=" + this.portalAddress + ", dirty=" + this.dirty + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.ImmutablePortalCoupler
 * JD-Core Version:    0.6.2
 */