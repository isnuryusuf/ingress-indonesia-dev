package com.nianticproject.ingress.shared.portal;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.plext.c;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PlayerPortalImage
  implements a
{

  @JsonProperty
  private final c attributionMarkup;

  @JsonProperty
  private final boolean hasVoteByPlayer;

  @JsonProperty
  private final String imageUrl;

  @JsonProperty
  private final String portalImageGuid;

  @JsonProperty
  private final int voteCount;

  private PlayerPortalImage()
  {
    this.portalImageGuid = null;
    this.imageUrl = null;
    this.attributionMarkup = null;
    this.hasVoteByPlayer = false;
    this.voteCount = 0;
  }

  public PlayerPortalImage(String paramString1, String paramString2, c paramc, int paramInt)
  {
    this.portalImageGuid = ((String)an.a(paramString1));
    this.imageUrl = ((String)an.a(paramString2));
    this.attributionMarkup = paramc;
    this.hasVoteByPlayer = false;
    this.voteCount = paramInt;
  }

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
    return true;
  }

  public final int e()
  {
    return this.voteCount;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PlayerPortalImage localPlayerPortalImage;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localPlayerPortalImage = (PlayerPortalImage)paramObject;
      if (this.attributionMarkup == null)
      {
        if (localPlayerPortalImage.attributionMarkup != null)
          return false;
      }
      else if (!this.attributionMarkup.equals(localPlayerPortalImage.attributionMarkup))
        return false;
      if (this.hasVoteByPlayer != localPlayerPortalImage.hasVoteByPlayer)
        return false;
      if (this.imageUrl == null)
      {
        if (localPlayerPortalImage.imageUrl != null)
          return false;
      }
      else if (!this.imageUrl.equals(localPlayerPortalImage.imageUrl))
        return false;
      if (this.portalImageGuid == null)
      {
        if (localPlayerPortalImage.portalImageGuid != null)
          return false;
      }
      else if (!this.portalImageGuid.equals(localPlayerPortalImage.portalImageGuid))
        return false;
    }
    while (this.voteCount == localPlayerPortalImage.voteCount);
    return false;
  }

  public final boolean f()
  {
    return this.hasVoteByPlayer;
  }

  public final int hashCode()
  {
    int i;
    int k;
    label28: int n;
    label46: int i1;
    int i2;
    if (this.attributionMarkup == null)
    {
      i = 0;
      int j = 31 * (i + 31);
      if (!this.hasVoteByPlayer)
        break label95;
      k = 1231;
      int m = 31 * (k + j);
      if (this.imageUrl != null)
        break label102;
      n = 0;
      i1 = 31 * (n + m);
      String str = this.portalImageGuid;
      i2 = 0;
      if (str != null)
        break label114;
    }
    while (true)
    {
      return 31 * (i1 + i2) + this.voteCount;
      i = this.attributionMarkup.hashCode();
      break;
      label95: k = 1237;
      break label28;
      label102: n = this.imageUrl.hashCode();
      break label46;
      label114: i2 = this.portalImageGuid.hashCode();
    }
  }

  public final String toString()
  {
    return "PortalImage [portalImageGuid=" + this.portalImageGuid + ", imageUrl=" + this.imageUrl + ", attributionMarkup=" + this.attributionMarkup + ", hasVoteByPlayer=" + this.hasVoteByPlayer + ", voteCount=" + this.voteCount + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.portal.PlayerPortalImage
 * JD-Core Version:    0.6.2
 */