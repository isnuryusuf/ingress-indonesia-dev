package com.nianticproject.ingress.o;

import android.view.Window;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.common.w.aa;

final class d
  implements Runnable
{
  d(c paramc, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (this.a)
    {
      c.a(this.b).getWindow().addFlags(128);
      c.a(this.b, true);
      c.d().a("setKeepScreenOn: ENABLED");
      return;
    }
    c.a(this.b).getWindow().clearFlags(128);
    c.a(this.b, false);
    c.d().a("setKeepScreenOn: DISABLED");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.d
 * JD-Core Version:    0.6.2
 */