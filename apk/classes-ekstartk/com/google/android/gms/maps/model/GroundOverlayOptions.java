package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.d;

public final class GroundOverlayOptions
  implements ae
{
  public static final f a = new f();
  private final int b;
  private a c;
  private LatLng d;
  private float e;
  private float f;
  private LatLngBounds g;
  private float h;
  private float i;
  private boolean j = true;
  private float k = 0.0F;
  private float l = 0.5F;
  private float m = 0.5F;

  public GroundOverlayOptions()
  {
    this.b = 1;
  }

  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    this.b = paramInt;
    this.c = new a(ah.a(paramIBinder));
    this.d = paramLatLng;
    this.e = paramFloat1;
    this.f = paramFloat2;
    this.g = paramLatLngBounds;
    this.h = paramFloat3;
    this.i = paramFloat4;
    this.j = paramBoolean;
    this.k = paramFloat5;
    this.l = paramFloat6;
    this.m = paramFloat7;
  }

  public final IBinder a()
  {
    return this.c.a().asBinder();
  }

  public final int b()
  {
    return this.b;
  }

  public final LatLng c()
  {
    return this.d;
  }

  public final float d()
  {
    return this.e;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final float e()
  {
    return this.f;
  }

  public final LatLngBounds f()
  {
    return this.g;
  }

  public final float g()
  {
    return this.h;
  }

  public final float h()
  {
    return this.i;
  }

  public final float i()
  {
    return this.k;
  }

  public final float j()
  {
    return this.l;
  }

  public final float k()
  {
    return this.m;
  }

  public final boolean l()
  {
    return this.j;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int n = d.a(paramParcel);
      d.a(paramParcel, 1, this.b);
      d.a(paramParcel, 2, a());
      d.a(paramParcel, 3, this.d, paramInt, false);
      d.a(paramParcel, 4, this.e);
      d.a(paramParcel, 5, this.f);
      d.a(paramParcel, 6, this.g, paramInt, false);
      d.a(paramParcel, 7, this.h);
      d.a(paramParcel, 8, this.i);
      d.a(paramParcel, 9, this.j);
      d.a(paramParcel, 10, this.k);
      d.a(paramParcel, 11, this.l);
      d.a(paramParcel, 12, this.m);
      d.a(paramParcel, n);
      return;
    }
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * JD-Core Version:    0.6.2
 */