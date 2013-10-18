package com.nianticproject.ingress.ui.a;

import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.ec;

public final class a
  implements Runnable
{
  private final TextView a;
  private final CharSequence b;
  private final Handler c;
  private bn d;
  private b e;
  private int f;
  private boolean g;

  public a(TextView paramTextView, CharSequence paramCharSequence)
  {
    this.a = paramTextView;
    this.b = paramCharSequence;
    this.c = new Handler(Looper.getMainLooper());
    this.f = 0;
    this.g = false;
    this.d = bs.aT.a();
    o.a().e(this.d);
  }

  private void c()
  {
    if ((this.d != null) && (this.g))
    {
      this.g = false;
      this.d.n();
    }
  }

  private void d()
  {
    c();
    if (this.e != null)
      this.e.G();
  }

  public final void a()
  {
    ec.a("completeImmediately");
    this.c.removeCallbacks(this);
    this.a.setText(this.b);
    this.f = this.b.length();
    d();
  }

  public final void a(b paramb)
  {
    this.f = 0;
    ec.a("resume");
    this.e = paramb;
    this.c.post(this);
    if ((this.d != null) && (!this.g))
    {
      this.g = true;
      o.a().a(this.d);
    }
  }

  public final void b()
  {
    ec.a("pause");
    this.c.removeCallbacks(this);
    c();
  }

  public final void run()
  {
    this.f = Math.min(this.b.length(), 1 + this.f);
    this.a.setText(this.b.subSequence(0, this.f));
    if (this.f < this.b.length())
    {
      this.c.postDelayed(this, 25L);
      return;
    }
    d();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.a.a
 * JD-Core Version:    0.6.2
 */