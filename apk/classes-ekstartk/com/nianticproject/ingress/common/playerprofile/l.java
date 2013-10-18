package com.nianticproject.ingress.common.playerprofile;

import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.ui.a;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.shared.ai;

public final class l extends a
{
  private final m a;

  public l(String paramString, j paramj, ai paramai, int paramInt, av paramav)
  {
    super("AvatarSelectionActivity");
    o localo = new o(paramj, paramai, paramInt, paramav);
    this.a = new m(paramString, localo, p.a().E(), p.a().b());
    K().a(localo);
  }

  protected final void a()
  {
    super.a();
    this.a.e();
  }

  protected final String d()
  {
    return "AvatarSelectionActivity";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.l
 * JD-Core Version:    0.6.2
 */