package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalImagesParams
{

  @JsonProperty
  public final int maxItemsPerPage;

  @JsonProperty
  public final String portalGuid;

  @JsonProperty
  public final String portalImageCursor;

  private PortalImagesParams()
  {
    this.portalGuid = null;
    this.maxItemsPerPage = 0;
    this.portalImageCursor = null;
  }

  public PortalImagesParams(String paramString1, int paramInt, String paramString2)
  {
    boolean bool1;
    if (!paramString1.isEmpty())
    {
      bool1 = true;
      an.a(bool1);
      this.portalGuid = paramString1;
      if (paramInt <= 0)
        break label71;
    }
    label71: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      an.a(bool2, "maxItemsPerPage must be positive: %s", arrayOfObject);
      this.maxItemsPerPage = paramInt;
      this.portalImageCursor = paramString2;
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.PortalImagesParams
 * JD-Core Version:    0.6.2
 */