package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.d;
import java.util.ArrayList;
import java.util.List;

public final class PolygonOptions
  implements ae
{
  public static final k a = new k();
  private final int b;
  private final List<LatLng> c;
  private final List<List<LatLng>> d;
  private float e = 10.0F;
  private int f = -16777216;
  private int g = 0;
  private float h = 0.0F;
  private boolean i = true;
  private boolean j = false;

  public PolygonOptions()
  {
    this.b = 1;
    this.c = new ArrayList();
    this.d = new ArrayList();
  }

  PolygonOptions(int paramInt1, List<LatLng> paramList, List paramList1, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b = paramInt1;
    this.c = paramList;
    this.d = paramList1;
    this.e = paramFloat1;
    this.f = paramInt2;
    this.g = paramInt3;
    this.h = paramFloat2;
    this.i = paramBoolean1;
    this.j = paramBoolean2;
  }

  public final int a()
  {
    return this.b;
  }

  public final List b()
  {
    return this.d;
  }

  public final List<LatLng> c()
  {
    return this.c;
  }

  public final float d()
  {
    return this.e;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final int e()
  {
    return this.f;
  }

  public final int f()
  {
    return this.g;
  }

  public final float g()
  {
    return this.h;
  }

  public final boolean h()
  {
    return this.i;
  }

  public final boolean i()
  {
    return this.j;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int k = d.a(paramParcel);
      d.a(paramParcel, 1, this.b);
      d.a(paramParcel, 2, this.c, false);
      d.b(paramParcel, this.d);
      d.a(paramParcel, 4, this.e);
      d.a(paramParcel, 5, this.f);
      d.a(paramParcel, 6, this.g);
      d.a(paramParcel, 7, this.h);
      d.a(paramParcel, 8, this.i);
      d.a(paramParcel, 9, this.j);
      d.a(paramParcel, k);
      return;
    }
    k.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * JD-Core Version:    0.6.2
 */