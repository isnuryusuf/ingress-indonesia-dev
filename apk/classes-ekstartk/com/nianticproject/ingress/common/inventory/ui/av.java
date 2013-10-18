package com.nianticproject.ingress.common.inventory.ui;

import com.google.a.a.an;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.j;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.f;

public final class av extends n
{
  public av(f paramf, k paramk)
  {
    super(paramf, paramk);
    an.a(paramf.getComponent(PortalCoupler.class));
  }

  public static String a(j paramj)
  {
    return a(((j)an.a(paramj)).c());
  }

  private static String a(String paramString)
  {
    if (paramString == null)
      paramString = null;
    while (paramString.length() <= 24)
      return paramString;
    return paramString.substring(0, 24) + "...";
  }

  public final String a()
  {
    return a(((PortalCoupler)an.a((PortalCoupler)this.a.getComponent(PortalCoupler.class))).getPortalTitle());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.av
 * JD-Core Version:    0.6.2
 */