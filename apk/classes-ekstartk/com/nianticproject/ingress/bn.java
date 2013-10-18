package com.nianticproject.ingress;

import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.missions.a.l;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.ui.t;

final class bn
  implements Runnable
{
  bn(NemesisActivity paramNemesisActivity, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (this.a)
    {
      t localt = NemesisActivity.a(this.b).n();
      if (!(localt.b() instanceof l))
        localt.b(k.class);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.bn
 * JD-Core Version:    0.6.2
 */