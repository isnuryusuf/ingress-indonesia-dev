package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalPhotoByUrlParams
{

  @JsonProperty
  private final String imageUrl;

  @JsonProperty
  private final String portalGuid;

  @JsonProperty
  private final String requestId;

  private PortalPhotoByUrlParams()
  {
    this.requestId = null;
    this.portalGuid = null;
    this.imageUrl = null;
  }

  public PortalPhotoByUrlParams(String paramString1, String paramString2, String paramString3)
  {
    this.requestId = paramString1;
    this.portalGuid = paramString2;
    this.imageUrl = paramString3;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.PortalPhotoByUrlParams
 * JD-Core Version:    0.6.2
 */