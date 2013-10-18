package com.nianticproject.ingress.shared;

import com.nianticproject.ingress.shared.model.b;
import com.nianticproject.ingress.shared.model.c;
import org.codehaus.jackson.annotate.JsonProperty;

public class PortalEdgeData
  implements b
{

  @JsonProperty
  private String edgeGuid;

  @JsonProperty
  private boolean isOrigin;

  @JsonProperty
  private String otherPortalGuid;

  private PortalEdgeData()
  {
  }

  public PortalEdgeData(String paramString1, String paramString2, c paramc)
  {
    this.edgeGuid = paramString1;
    this.otherPortalGuid = paramString2;
    if (c.a == paramc);
    for (boolean bool = true; ; bool = false)
    {
      this.isOrigin = bool;
      return;
    }
  }

  public final String a()
  {
    return this.edgeGuid;
  }

  public final String b()
  {
    return this.otherPortalGuid;
  }

  public final boolean c()
  {
    return this.isOrigin;
  }

  public String toString()
  {
    return "isOrigin: " + this.isOrigin + ", Other portal guid: " + this.otherPortalGuid + ", edgeGuid: " + this.edgeGuid;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.PortalEdgeData
 * JD-Core Version:    0.6.2
 */