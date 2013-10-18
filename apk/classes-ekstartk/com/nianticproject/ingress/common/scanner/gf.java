package com.nianticproject.ingress.common.scanner;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.google.a.a.br;
import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;

public final class gf
  implements j
{
  private final String a;
  private final u b;
  private final String c;
  private final String d;

  public gf(String paramString1, u paramu, String paramString2, String paramString3)
  {
    if (!br.b(paramString1));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a = paramString1;
      this.b = ((u)an.a(paramu));
      this.c = paramString2;
      this.d = paramString3;
      return;
    }
  }

  public static j a(PortalCoupler paramPortalCoupler)
  {
    return new gf(paramPortalCoupler.getPortalGuid(), paramPortalCoupler.getPortalLocation(), paramPortalCoupler.getPortalTitle(), paramPortalCoupler.getPortalAddress());
  }

  public final String a()
  {
    return this.a;
  }

  public final u b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }

  public final String d()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof gf));
    gf localgf;
    do
    {
      return false;
      localgf = (gf)paramObject;
    }
    while ((!ag.a(this.a, localgf.a)) || (!ag.a(this.b, localgf.b)) || (!ag.a(this.c, localgf.c)) || (!ag.a(this.d, localgf.d)));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    arrayOfObject[2] = this.c;
    arrayOfObject[3] = this.d;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return ag.a(this).a("portalGuid", this.a).a("portalLocation", this.b).a("portalTitle", this.c).a("portalAddress", this.d).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.gf
 * JD-Core Version:    0.6.2
 */