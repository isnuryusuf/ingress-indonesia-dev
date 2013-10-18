package com.nianticproject.ingress.gameentity.components;

import com.google.a.d.u;

public class SimplePortalCoupler
  implements PortalCoupler
{
  private final String address;
  private final String guid;
  private final u location;
  private final String title;

  public SimplePortalCoupler(String paramString1, u paramu, String paramString2, String paramString3)
  {
    this.guid = paramString1;
    this.location = paramu;
    this.title = paramString2;
    this.address = paramString3;
  }

  public String getPortalAddress()
  {
    return this.address;
  }

  public String getPortalGuid()
  {
    return this.guid;
  }

  public u getPortalLocation()
  {
    return this.location;
  }

  public String getPortalTitle()
  {
    return this.title;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimplePortalCoupler
 * JD-Core Version:    0.6.2
 */