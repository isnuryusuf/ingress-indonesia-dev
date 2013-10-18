package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.e;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gf;
import com.google.android.gms.internal.gg;
import java.util.Arrays;

public final class CameraPosition
  implements ae
{
  public static final d a = new d();
  public final LatLng b;
  public final float c;
  public final float d;
  public final float e;
  private final int f;

  CameraPosition(int paramInt, LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    gg.a(paramLatLng, "null camera target");
    if ((0.0F <= paramFloat2) && (paramFloat2 <= 90.0F));
    for (int i = 1; i == 0; i = 0)
      throw new IllegalArgumentException(String.valueOf("Tilt needs to be between 0 and 90 inclusive"));
    this.f = paramInt;
    this.b = paramLatLng;
    this.c = paramFloat1;
    this.d = (paramFloat2 + 0.0F);
    if (paramFloat3 <= 0.0D)
      paramFloat3 = 360.0F + paramFloat3 % 360.0F;
    this.e = (paramFloat3 % 360.0F);
  }

  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(1, paramLatLng, paramFloat1, paramFloat2, paramFloat3);
  }

  public static CameraPosition a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return null;
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, e.a);
    if (localTypedArray.hasValue(2));
    for (float f1 = localTypedArray.getFloat(2, 0.0F); ; f1 = 0.0F)
    {
      if (localTypedArray.hasValue(3));
      for (float f2 = localTypedArray.getFloat(3, 0.0F); ; f2 = 0.0F)
      {
        LatLng localLatLng = new LatLng(f1, f2);
        c localc = new c();
        localc.a(localLatLng);
        if (localTypedArray.hasValue(5))
          localc.a(localTypedArray.getFloat(5, 0.0F));
        if (localTypedArray.hasValue(1))
          localc.c(localTypedArray.getFloat(1, 0.0F));
        if (localTypedArray.hasValue(4))
          localc.b(localTypedArray.getFloat(4, 0.0F));
        return localc.a();
      }
    }
  }

  public final int a()
  {
    return this.f;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    CameraPosition localCameraPosition;
    do
    {
      return true;
      if (!(paramObject instanceof CameraPosition))
        return false;
      localCameraPosition = (CameraPosition)paramObject;
    }
    while ((this.b.equals(localCameraPosition.b)) && (Float.floatToIntBits(this.c) == Float.floatToIntBits(localCameraPosition.c)) && (Float.floatToIntBits(this.d) == Float.floatToIntBits(localCameraPosition.d)) && (Float.floatToIntBits(this.e) == Float.floatToIntBits(localCameraPosition.e)));
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.b;
    arrayOfObject[1] = Float.valueOf(this.c);
    arrayOfObject[2] = Float.valueOf(this.d);
    arrayOfObject[3] = Float.valueOf(this.e);
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    return ge.a(this).a("target", this.b).a("zoom", Float.valueOf(this.c)).a("tilt", Float.valueOf(this.d)).a("bearing", Float.valueOf(this.e)).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int i = com.google.android.gms.internal.d.a(paramParcel);
      com.google.android.gms.internal.d.a(paramParcel, 1, this.f);
      com.google.android.gms.internal.d.a(paramParcel, 2, this.b, paramInt, false);
      com.google.android.gms.internal.d.a(paramParcel, 3, this.c);
      com.google.android.gms.internal.d.a(paramParcel, 4, this.d);
      com.google.android.gms.internal.d.a(paramParcel, 5, this.e);
      com.google.android.gms.internal.d.a(paramParcel, i);
      return;
    }
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition
 * JD-Core Version:    0.6.2
 */