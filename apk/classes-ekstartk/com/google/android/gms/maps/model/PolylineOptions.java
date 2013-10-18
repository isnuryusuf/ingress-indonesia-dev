package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.d;
import java.util.ArrayList;
import java.util.List;

public final class PolylineOptions
  implements ae
{
  public static final l a = new l();
  private final int b;
  private final List<LatLng> c;
  private float d = 10.0F;
  private int e = -16777216;
  private float f = 0.0F;
  private boolean g = true;
  private boolean h = false;

  public PolylineOptions()
  {
    this.b = 1;
    this.c = new ArrayList();
  }

  PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b = paramInt1;
    this.c = paramList;
    this.d = paramFloat1;
    this.e = paramInt2;
    this.f = paramFloat2;
    this.g = paramBoolean1;
    this.h = paramBoolean2;
  }

  public final int a()
  {
    return this.b;
  }

  public final List<LatLng> b()
  {
    return this.c;
  }

  public final float c()
  {
    return this.d;
  }

  public final int d()
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

  public final boolean f()
  {
    return this.g;
  }

  public final boolean g()
  {
    return this.h;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int i = d.a(paramParcel);
      d.a(paramParcel, 1, this.b);
      d.a(paramParcel, 2, this.c, false);
      d.a(paramParcel, 3, this.d);
      d.a(paramParcel, 4, this.e);
      d.a(paramParcel, 5, this.f);
      d.a(paramParcel, 6, this.g);
      d.a(paramParcel, 7, this.h);
      d.a(paramParcel, i);
      return;
    }
    l.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * JD-Core Version:    0.6.2
 */