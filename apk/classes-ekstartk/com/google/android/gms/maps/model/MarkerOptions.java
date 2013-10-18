package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.d;

public final class MarkerOptions
  implements ae
{
  public static final j a = new j();
  private final int b;
  private LatLng c;
  private String d;
  private String e;
  private a f;
  private float g = 0.5F;
  private float h = 1.0F;
  private boolean i;
  private boolean j = true;

  public MarkerOptions()
  {
    this.b = 1;
  }

  MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b = paramInt;
    this.c = paramLatLng;
    this.d = paramString1;
    this.e = paramString2;
    if (paramIBinder == null);
    for (a locala = null; ; locala = new a(ah.a(paramIBinder)))
    {
      this.f = locala;
      this.g = paramFloat1;
      this.h = paramFloat2;
      this.i = paramBoolean1;
      this.j = paramBoolean2;
      return;
    }
  }

  public final int a()
  {
    return this.b;
  }

  public final MarkerOptions a(LatLng paramLatLng)
  {
    this.c = paramLatLng;
    return this;
  }

  public final MarkerOptions a(a parama)
  {
    this.f = parama;
    return this;
  }

  public final MarkerOptions a(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public final IBinder b()
  {
    if (this.f == null)
      return null;
    return this.f.a().asBinder();
  }

  public final MarkerOptions c()
  {
    this.i = false;
    return this;
  }

  public final LatLng d()
  {
    return this.c;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    return this.d;
  }

  public final String f()
  {
    return this.e;
  }

  public final float g()
  {
    return this.g;
  }

  public final float h()
  {
    return this.h;
  }

  public final boolean i()
  {
    return this.i;
  }

  public final boolean j()
  {
    return this.j;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int k = d.a(paramParcel);
      d.a(paramParcel, 1, this.b);
      d.a(paramParcel, 2, this.c, paramInt, false);
      d.a(paramParcel, 3, this.d, false);
      d.a(paramParcel, 4, this.e, false);
      d.a(paramParcel, 5, b());
      d.a(paramParcel, 6, this.g);
      d.a(paramParcel, 7, this.h);
      d.a(paramParcel, 8, this.i);
      d.a(paramParcel, 9, this.j);
      d.a(paramParcel, k);
      return;
    }
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * JD-Core Version:    0.6.2
 */