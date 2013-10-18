package com.nianticproject.ingress.share;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.google.a.d.u;
import com.google.android.gms.maps.b;
import com.google.android.gms.maps.model.LatLng;

final class d
  implements LocationListener
{
  d(c paramc, LocationManager paramLocationManager)
  {
  }

  public final void onLocationChanged(Location paramLocation)
  {
    if ((paramLocation.getLatitude() == 0.0D) && (paramLocation.getLongitude() == 0.0D));
    Location localLocation;
    do
    {
      return;
      localLocation = this.b.a.e();
    }
    while ((localLocation == null) || (paramLocation.getAccuracy() >= 100.0F) || (paramLocation.distanceTo(localLocation) >= 100.0F));
    this.a.removeUpdates(this);
    LocationPickerActivity.a(this.b.b, u.b(localLocation.getLatitude(), localLocation.getLongitude()));
    this.b.a.a(b.a(new LatLng(paramLocation.getLatitude(), paramLocation.getLongitude())));
    LocationPickerActivity.c(this.b.b);
  }

  public final void onProviderDisabled(String paramString)
  {
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.share.d
 * JD-Core Version:    0.6.2
 */