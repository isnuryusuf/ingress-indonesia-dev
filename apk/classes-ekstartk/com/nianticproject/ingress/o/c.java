package com.nianticproject.ingress.o;

import android.os.PowerManager.WakeLock;
import com.google.a.c.hc;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.k;
import java.util.Map;

public class c
  implements k
{
  private static final aa a = new aa(c.class);
  private final NemesisActivity b;
  private boolean c;
  private boolean d;
  private final Map<String, PowerManager.WakeLock> e = hc.b();

  public c(NemesisActivity paramNemesisActivity)
  {
    this.b = paramNemesisActivity;
    this.c = false;
    this.d = false;
  }

  public final void a(boolean paramBoolean)
  {
    this.b.runOnUiThread(new d(this, paramBoolean));
  }

  public final void b()
  {
  }

  public final void c()
  {
    if (this.c)
    {
      this.d = true;
      a(false);
    }
  }

  public final void f_()
  {
    a(this.d);
    this.d = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.c
 * JD-Core Version:    0.6.2
 */