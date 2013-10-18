package com.nianticproject.ingress.l;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Handler;

class u
  implements LocationListener
{
  private u(f paramf)
  {
  }

  public void onLocationChanged(Location paramLocation)
  {
    f.a(this.b, paramLocation);
  }

  public void onProviderDisabled(String paramString)
  {
    f.c(this.b).a().post(new v(this, paramString));
  }

  public void onProviderEnabled(String paramString)
  {
    f.c(this.b).a().post(new w(this, paramString));
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    f.c(this.b).a().post(new x(this, paramString));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.u
 * JD-Core Version:    0.6.2
 */