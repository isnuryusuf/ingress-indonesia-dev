package com.google.analytics.tracking.android;

import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

final class y extends TimerTask
{
  private y(t paramt)
  {
  }

  public final void run()
  {
    if ((t.b(this.a) == x.b) && (t.e(this.a).isEmpty()) && (t.f(this.a) + t.g(this.a) < t.h(this.a).a()))
    {
      aq.d("Disconnecting due to inactivity");
      t.i(this.a);
      return;
    }
    t.j(this.a).schedule(new y(this.a), t.g(this.a));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.y
 * JD-Core Version:    0.6.2
 */