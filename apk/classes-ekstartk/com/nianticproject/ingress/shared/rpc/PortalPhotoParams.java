package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalPhotoParams
{

  @JsonProperty
  private final String encodedImage;

  @JsonProperty
  private final String portalGuid;

  @JsonProperty
  private final String requestId;

  private PortalPhotoParams()
  {
    this.requestId = null;
    this.portalGuid = null;
    this.encodedImage = null;
  }

  public PortalPhotoParams(String paramString1, String paramString2, String paramString3)
  {
    this.requestId = paramString1;
    this.portalGuid = paramString2;
    this.encodedImage = paramString3;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.PortalPhotoParams
 * JD-Core Version:    0.6.2
 */