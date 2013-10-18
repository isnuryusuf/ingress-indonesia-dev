package com.google.android.gms.internal;

import android.os.Parcel;

public class cf
  implements ae
{
  public static final be a = new be();
  private final int b;
  private final String c;
  private final long d;
  private final short e;
  private final double f;
  private final double g;
  private final float h;
  private final int i;

  public cf(int paramInt1, String paramString, int paramInt2, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong)
  {
    if ((paramString == null) || (paramString.length() > 100))
      throw new IllegalArgumentException("requestId is null or too long: " + paramString);
    if (paramFloat <= 0.0F)
      throw new IllegalArgumentException("invalid radius: " + paramFloat);
    if ((paramDouble1 > 90.0D) || (paramDouble1 < -90.0D))
      throw new IllegalArgumentException("invalid latitude: " + paramDouble1);
    if ((paramDouble2 > 180.0D) || (paramDouble2 < -180.0D))
      throw new IllegalArgumentException("invalid longitude: " + paramDouble2);
    int j = paramInt2 & 0x3;
    if (j == 0)
      throw new IllegalArgumentException("No supported transition specified: " + paramInt2);
    this.b = paramInt1;
    this.e = paramShort;
    this.c = paramString;
    this.f = paramDouble1;
    this.g = paramDouble2;
    this.h = paramFloat;
    this.d = paramLong;
    this.i = j;
  }

  public final int a()
  {
    return this.b;
  }

  public final short b()
  {
    return this.e;
  }

  public final double c()
  {
    return this.f;
  }

  public final double d()
  {
    return this.g;
  }

  public int describeContents()
  {
    return 0;
  }

  public final float e()
  {
    return this.h;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    cf localcf;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!(paramObject instanceof cf))
        return false;
      localcf = (cf)paramObject;
      if (this.h != localcf.h)
        return false;
      if (this.f != localcf.f)
        return false;
      if (this.g != localcf.g)
        return false;
    }
    while (this.e == localcf.e);
    return false;
  }

  public final String f()
  {
    return this.c;
  }

  public final long g()
  {
    return this.d;
  }

  public final int h()
  {
    return this.i;
  }

  public int hashCode()
  {
    long l1 = Double.doubleToLongBits(this.f);
    int j = 31 + (int)(l1 ^ l1 >>> 32);
    long l2 = Double.doubleToLongBits(this.g);
    return 31 * (31 * (31 * (j * 31 + (int)(l2 ^ l2 >>> 32)) + Float.floatToIntBits(this.h)) + this.e) + this.i;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[7];
    switch (this.e)
    {
    default:
    case 1:
    }
    for (String str = null; ; str = "CIRCLE")
    {
      arrayOfObject[0] = str;
      arrayOfObject[1] = this.c;
      arrayOfObject[2] = Integer.valueOf(this.i);
      arrayOfObject[3] = Double.valueOf(this.f);
      arrayOfObject[4] = Double.valueOf(this.g);
      arrayOfObject[5] = Float.valueOf(this.h);
      arrayOfObject[6] = Long.valueOf(this.d);
      return String.format("Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, @%d]", arrayOfObject);
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    be.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cf
 * JD-Core Version:    0.6.2
 */