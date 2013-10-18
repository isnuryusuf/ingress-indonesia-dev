package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.d;

public final class LatLng
  implements ae
{
  public static final h a = new h();
  public final double b;
  public final double c;
  private final int d;

  public LatLng(double paramDouble1, double paramDouble2)
  {
    this(1, paramDouble1, paramDouble2);
  }

  LatLng(int paramInt, double paramDouble1, double paramDouble2)
  {
    this.d = paramInt;
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D));
    for (this.c = paramDouble2; ; this.c = ((360.0D + (paramDouble2 - 180.0D) % 360.0D) % 360.0D - 180.0D))
    {
      this.b = Math.max(-90.0D, Math.min(90.0D, paramDouble1));
      return;
    }
  }

  public final int a()
  {
    return this.d;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    LatLng localLatLng;
    do
    {
      return true;
      if (!(paramObject instanceof LatLng))
        return false;
      localLatLng = (LatLng)paramObject;
    }
    while ((Double.doubleToLongBits(this.b) == Double.doubleToLongBits(localLatLng.b)) && (Double.doubleToLongBits(this.c) == Double.doubleToLongBits(localLatLng.c)));
    return false;
  }

  public final int hashCode()
  {
    long l1 = Double.doubleToLongBits(this.b);
    int i = 31 + (int)(l1 ^ l1 >>> 32);
    long l2 = Double.doubleToLongBits(this.c);
    return i * 31 + (int)(l2 ^ l2 >>> 32);
  }

  public final String toString()
  {
    return "lat/lng: (" + this.b + "," + this.c + ")";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int i = d.a(paramParcel);
      d.a(paramParcel, 1, this.d);
      d.a(paramParcel, 2, this.b);
      d.a(paramParcel, 3, this.c);
      d.a(paramParcel, i);
      return;
    }
    h.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.LatLng
 * JD-Core Version:    0.6.2
 */