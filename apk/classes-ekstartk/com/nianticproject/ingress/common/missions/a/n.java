package com.nianticproject.ingress.common.missions.a;

import com.nianticproject.ingress.common.missions.cs;
import com.nianticproject.ingress.common.ui.widget.z;
import java.util.List;

final class n
  implements Runnable
{
  n(l paraml, List paramList, String paramString1, String paramString2, float paramFloat, z paramz1, z paramz2, boolean paramBoolean, cs paramcs)
  {
  }

  public final void run()
  {
    g localg = new g(this.i.K(), this.a, this.b, this.c, this.d, this.e, this.f, l.d(this.i), this.g);
    l.b(this.i, localg);
    this.h.a(localg.g());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.n
 * JD-Core Version:    0.6.2
 */