package com.nianticproject.ingress.share;

import com.google.a.d.u;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;

final class c
{
  com.google.android.gms.maps.c a;

  private c(LocationPickerActivity paramLocationPickerActivity)
  {
  }

  public final u a()
  {
    if (this.a == null)
      return null;
    LatLng localLatLng = this.a.b().b;
    return u.b(localLatLng.b, localLatLng.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.share.c
 * JD-Core Version:    0.6.2
 */