package com.nianticproject.ingress.l;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import com.nianticproject.ingress.common.u.av;

final class q extends b
{
  private final t c;

  q(f paramf, t paramt, Looper paramLooper)
  {
    super(paramLooper);
    this.c = paramt;
  }

  final void a(Location paramLocation, av paramav)
  {
    this.a.post(new r(this, paramLocation, paramav));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.q
 * JD-Core Version:    0.6.2
 */