package com.nianticproject.ingress.shared.portal;

import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalImageVoteParams
{

  @JsonProperty
  public final boolean add;

  @JsonProperty
  public final String portalImageGuid;

  private PortalImageVoteParams()
  {
    this.portalImageGuid = null;
    this.add = true;
  }

  public PortalImageVoteParams(String paramString, boolean paramBoolean)
  {
    this.portalImageGuid = ((String)an.a(paramString));
    this.add = paramBoolean;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.portalImageGuid;
    arrayOfObject[1] = Boolean.valueOf(this.add);
    return String.format("portalImageGuid: %s, add: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.portal.PortalImageVoteParams
 * JD-Core Version:    0.6.2
 */