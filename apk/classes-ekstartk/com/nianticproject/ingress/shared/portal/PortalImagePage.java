package com.nianticproject.ingress.shared.portal;

import com.google.a.a.an;
import java.util.List;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalImagePage
{

  @JsonProperty
  public final String cursor;

  @JsonProperty
  public final List<PlayerPortalImage> portalImages;

  private PortalImagePage()
  {
    this.cursor = null;
    this.portalImages = null;
  }

  public PortalImagePage(List<PlayerPortalImage> paramList)
  {
    this.portalImages = ((List)an.a(paramList));
    this.cursor = null;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PortalImagePage localPortalImagePage;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localPortalImagePage = (PortalImagePage)paramObject;
        if (this.cursor == null)
        {
          if (localPortalImagePage.cursor != null)
            return false;
        }
        else if (!this.cursor.equals(localPortalImagePage.cursor))
          return false;
        if (this.portalImages != null)
          break;
      }
      while (localPortalImagePage.portalImages == null);
      return false;
    }
    while (this.portalImages.equals(localPortalImagePage.portalImages));
    return false;
  }

  public final int hashCode()
  {
    int i;
    int j;
    int k;
    if (this.cursor == null)
    {
      i = 0;
      j = 31 * (i + 31);
      List localList = this.portalImages;
      k = 0;
      if (localList != null)
        break label45;
    }
    while (true)
    {
      return j + k;
      i = this.cursor.hashCode();
      break;
      label45: k = this.portalImages.hashCode();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.portal.PortalImagePage
 * JD-Core Version:    0.6.2
 */