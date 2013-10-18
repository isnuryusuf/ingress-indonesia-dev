package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.d;
import com.google.android.gms.internal.dp;
import com.google.android.gms.internal.dq;

public final class TileOverlayOptions
  implements ae
{
  public static final p a = new p();
  private final int b;
  private dp c;
  private q d;
  private boolean e = true;
  private float f;

  public TileOverlayOptions()
  {
    this.b = 1;
  }

  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean, float paramFloat)
  {
    this.b = paramInt;
    this.c = dq.a(paramIBinder);
    if (this.c == null);
    for (o localo = null; ; localo = new o(this))
    {
      this.d = localo;
      this.e = paramBoolean;
      this.f = paramFloat;
      return;
    }
  }

  public final int a()
  {
    return this.b;
  }

  public final IBinder b()
  {
    return this.c.asBinder();
  }

  public final float c()
  {
    return this.f;
  }

  public final boolean d()
  {
    return this.e;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int i = d.a(paramParcel);
      d.a(paramParcel, 1, this.b);
      d.a(paramParcel, 2, b());
      d.a(paramParcel, 3, this.e);
      d.a(paramParcel, 4, this.f);
      d.a(paramParcel, i);
      return;
    }
    p.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * JD-Core Version:    0.6.2
 */