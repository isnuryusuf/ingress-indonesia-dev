package com.nianticproject.ingress.shared.portal;

import com.nianticproject.ingress.shared.plext.c;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalImage
  implements a
{

  @JsonProperty
  private final c attributionMarkup = null;

  @JsonProperty
  private final String imageUrl = null;

  @JsonProperty
  private final String portalImageGuid = null;

  @JsonProperty
  private final int voteCount = 0;

  public final c a()
  {
    return this.attributionMarkup;
  }

  public final String b()
  {
    return this.imageUrl;
  }

  public final String c()
  {
    return this.portalImageGuid;
  }

  public final boolean d()
  {
    return false;
  }

  public final int e()
  {
    return this.voteCount;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PortalImage localPortalImage;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!(paramObject instanceof PortalImage))
        return false;
      localPortalImage = (PortalImage)paramObject;
      if (this.attributionMarkup == null)
      {
        if (localPortalImage.attributionMarkup != null)
          return false;
      }
      else if (!this.attributionMarkup.equals(localPortalImage.attributionMarkup))
        return false;
      if (this.imageUrl == null)
      {
        if (localPortalImage.imageUrl != null)
          return false;
      }
      else if (!this.imageUrl.equals(localPortalImage.imageUrl))
        return false;
      if (this.portalImageGuid == null)
      {
        if (localPortalImage.portalImageGuid != null)
          return false;
      }
      else if (!this.portalImageGuid.equals(localPortalImage.portalImageGuid))
        return false;
    }
    while (this.voteCount == localPortalImage.voteCount);
    return false;
  }

  public final int hashCode()
  {
    int i;
    int k;
    label26: int m;
    int n;
    if (this.attributionMarkup == null)
    {
      i = 0;
      int j = 31 * (i + 31);
      if (this.imageUrl != null)
        break label73;
      k = 0;
      m = 31 * (k + j);
      String str = this.portalImageGuid;
      n = 0;
      if (str != null)
        break label84;
    }
    while (true)
    {
      return 31 * (m + n) + this.voteCount;
      i = this.attributionMarkup.hashCode();
      break;
      label73: k = this.imageUrl.hashCode();
      break label26;
      label84: n = this.portalImageGuid.hashCode();
    }
  }

  public final String toString()
  {
    return "PortalImage [portalImageGuid=" + this.portalImageGuid + ", imageUrl=" + this.imageUrl + ", attributionMarkup=" + this.attributionMarkup + ", voteCount=" + this.voteCount + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.portal.PortalImage
 * JD-Core Version:    0.6.2
 */