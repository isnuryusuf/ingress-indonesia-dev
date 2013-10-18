package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.e;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.bi;
import com.google.android.gms.internal.cw;
import com.google.android.gms.maps.model.CameraPosition;

public final class GoogleMapOptions
  implements ae
{
  public static final d a = new d();
  private final int b;
  private Boolean c;
  private Boolean d;
  private int e = -1;
  private CameraPosition f;
  private Boolean g;
  private Boolean h;
  private Boolean i;
  private Boolean j;
  private Boolean k;
  private Boolean l;

  public GoogleMapOptions()
  {
    this.b = 1;
  }

  GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8)
  {
    this.b = paramInt1;
    this.c = bi.a(paramByte1);
    this.d = bi.a(paramByte2);
    this.e = paramInt2;
    this.f = paramCameraPosition;
    this.g = bi.a(paramByte3);
    this.h = bi.a(paramByte4);
    this.i = bi.a(paramByte5);
    this.j = bi.a(paramByte6);
    this.k = bi.a(paramByte7);
    this.l = bi.a(paramByte8);
  }

  public static GoogleMapOptions a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return null;
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, e.a);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(0))
      localGoogleMapOptions.e = localTypedArray.getInt(0, -1);
    if (localTypedArray.hasValue(13))
      localGoogleMapOptions.c = Boolean.valueOf(localTypedArray.getBoolean(13, false));
    if (localTypedArray.hasValue(12))
      localGoogleMapOptions.d = Boolean.valueOf(localTypedArray.getBoolean(12, false));
    if (localTypedArray.hasValue(6))
      localGoogleMapOptions.h = Boolean.valueOf(localTypedArray.getBoolean(6, true));
    if (localTypedArray.hasValue(7))
      localGoogleMapOptions.l = Boolean.valueOf(localTypedArray.getBoolean(7, true));
    if (localTypedArray.hasValue(8))
      localGoogleMapOptions.i = Boolean.valueOf(localTypedArray.getBoolean(8, true));
    if (localTypedArray.hasValue(9))
      localGoogleMapOptions.k = Boolean.valueOf(localTypedArray.getBoolean(9, true));
    if (localTypedArray.hasValue(11))
      localGoogleMapOptions.j = Boolean.valueOf(localTypedArray.getBoolean(11, true));
    if (localTypedArray.hasValue(10))
      localGoogleMapOptions.g = Boolean.valueOf(localTypedArray.getBoolean(10, true));
    localGoogleMapOptions.f = CameraPosition.a(paramContext, paramAttributeSet);
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }

  public final int a()
  {
    return this.b;
  }

  public final byte b()
  {
    return bi.a(this.c);
  }

  public final byte c()
  {
    return bi.a(this.d);
  }

  public final byte d()
  {
    return bi.a(this.g);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final byte e()
  {
    return bi.a(this.h);
  }

  public final byte f()
  {
    return bi.a(this.i);
  }

  public final byte g()
  {
    return bi.a(this.j);
  }

  public final byte h()
  {
    return bi.a(this.k);
  }

  public final byte i()
  {
    return bi.a(this.l);
  }

  public final int j()
  {
    return this.e;
  }

  public final CameraPosition k()
  {
    return this.f;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int m = com.google.android.gms.internal.d.a(paramParcel);
      com.google.android.gms.internal.d.a(paramParcel, 1, this.b);
      com.google.android.gms.internal.d.a(paramParcel, 2, bi.a(this.c));
      com.google.android.gms.internal.d.a(paramParcel, 3, bi.a(this.d));
      com.google.android.gms.internal.d.a(paramParcel, 4, this.e);
      com.google.android.gms.internal.d.a(paramParcel, 5, this.f, paramInt, false);
      com.google.android.gms.internal.d.a(paramParcel, 6, bi.a(this.g));
      com.google.android.gms.internal.d.a(paramParcel, 7, bi.a(this.h));
      com.google.android.gms.internal.d.a(paramParcel, 8, bi.a(this.i));
      com.google.android.gms.internal.d.a(paramParcel, 9, bi.a(this.j));
      com.google.android.gms.internal.d.a(paramParcel, 10, bi.a(this.k));
      com.google.android.gms.internal.d.a(paramParcel, 11, bi.a(this.l));
      com.google.android.gms.internal.d.a(paramParcel, m);
      return;
    }
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * JD-Core Version:    0.6.2
 */