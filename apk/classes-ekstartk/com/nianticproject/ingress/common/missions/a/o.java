package com.nianticproject.ingress.common.missions.a;

import com.nianticproject.ingress.common.missions.ct;
import com.nianticproject.ingress.common.ui.widget.z;

final class o
  implements Runnable
{
  o(l paraml, String paramString, float paramFloat, z paramz1, z paramz2, boolean paramBoolean, ct paramct)
  {
  }

  public final void run()
  {
    i locali = new i(this.g.K(), this.a, this.b, this.c, this.d, l.e(this.g), this.e);
    l.c(this.g, locali);
    this.f.a(locali.g());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.o
 * JD-Core Version:    0.6.2
 */