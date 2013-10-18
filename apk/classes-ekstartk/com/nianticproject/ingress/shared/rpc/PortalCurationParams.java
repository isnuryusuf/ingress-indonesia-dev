package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;
import com.google.a.d.u;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalCurationParams
{

  @JsonProperty
  private final String curationReason;

  @JsonProperty
  private final b curationType;

  @JsonProperty
  private final String description;

  @JsonProperty
  private final u location;

  @JsonProperty
  private final String photoRequestId;

  @JsonProperty
  private final String portalGuid;

  @JsonProperty
  private final String title;

  private PortalCurationParams()
  {
    this.portalGuid = null;
    this.title = null;
    this.location = null;
    this.description = null;
    this.curationType = null;
    this.curationReason = null;
    this.photoRequestId = null;
  }

  public PortalCurationParams(String paramString1, String paramString2, String paramString3, u paramu, b paramb, String paramString4, String paramString5)
  {
    this.portalGuid = paramString1;
    this.title = paramString2;
    this.description = paramString3;
    this.location = paramu;
    this.curationType = ((b)an.a(paramb));
    this.curationReason = paramString4;
    this.photoRequestId = paramString5;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.PortalCurationParams
 * JD-Core Version:    0.6.2
 */