package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.d;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gf;
import com.google.android.gms.internal.gg;
import java.util.Arrays;

public final class LatLngBounds
  implements ae
{
  public static final g a = new g();
  public final LatLng b;
  public final LatLng c;
  private final int d;

  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    gg.a(paramLatLng1, "null southwest");
    gg.a(paramLatLng2, "null northeast");
    if (paramLatLng2.b >= paramLatLng1.b);
    for (int i = 1; ; i = 0)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Double.valueOf(paramLatLng1.b);
      arrayOfObject[1] = Double.valueOf(paramLatLng2.b);
      if (i != 0)
        break;
      throw new IllegalArgumentException(String.format("southern latitude exceeds northern latitude (%s > %s)", arrayOfObject));
    }
    this.d = paramInt;
    this.b = paramLatLng1;
    this.c = paramLatLng2;
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
    LatLngBounds localLatLngBounds;
    do
    {
      return true;
      if (!(paramObject instanceof LatLngBounds))
        return false;
      localLatLngBounds = (LatLngBounds)paramObject;
    }
    while ((this.b.equals(localLatLngBounds.b)) && (this.c.equals(localLatLngBounds.c)));
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.b;
    arrayOfObject[1] = this.c;
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    return ge.a(this).a("southwest", this.b).a("northeast", this.c).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int i = d.a(paramParcel);
      d.a(paramParcel, 1, this.d);
      d.a(paramParcel, 2, this.b, paramInt, false);
      d.a(paramParcel, 3, this.c, paramInt, false);
      d.a(paramParcel, i);
      return;
    }
    g.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * JD-Core Version:    0.6.2
 */