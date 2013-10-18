package com.nianticproject.ingress.l;

import android.location.Location;

final class j extends u
{
  j(f paramf)
  {
    super(paramf, (byte)0);
  }

  public final void onLocationChanged(Location paramLocation)
  {
    paramLocation.setTime(System.currentTimeMillis());
    super.onLocationChanged(paramLocation);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.j
 * JD-Core Version:    0.6.2
 */