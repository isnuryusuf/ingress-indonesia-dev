package com.nianticproject.ingress.l;

import android.location.GpsStatus.Listener;
import android.location.LocationManager;

final class k
  implements GpsStatus.Listener
{
  k(f paramf)
  {
  }

  public final void onGpsStatusChanged(int paramInt)
  {
    f.a(this.a, f.d(this.a).getGpsStatus(null));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.k
 * JD-Core Version:    0.6.2
 */