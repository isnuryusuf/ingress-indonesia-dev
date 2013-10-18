package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.internal.ae;

public final class LocationRequest
  implements ae
{
  public static final e i = new e();
  int a;
  int b = 102;
  long c = 3600000L;
  long d = ()(this.c / 6.0D);
  boolean e = false;
  long f = 9223372036854775807L;
  int g = 2147483647;
  float h = 0.0F;

  public static LocationRequest a()
  {
    return new LocationRequest();
  }

  public final LocationRequest b()
  {
    this.b = 100;
    return this;
  }

  public final LocationRequest c()
  {
    if (1000L < 0L)
      throw new IllegalArgumentException("invalid interval: 1000");
    this.c = 1000L;
    if (!this.e)
      this.d = (()(this.c / 6.0D));
    return this;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = localStringBuilder1.append("Request[");
    String str;
    switch (this.b)
    {
    case 101:
    case 103:
    default:
      str = "???";
    case 100:
    case 102:
    case 104:
    }
    while (true)
    {
      localStringBuilder2.append(str);
      if (this.b != 105)
      {
        localStringBuilder1.append(" requested=");
        localStringBuilder1.append(this.c + "ms");
      }
      localStringBuilder1.append(" fastest=");
      localStringBuilder1.append(this.d + "ms");
      if (this.f != 9223372036854775807L)
      {
        long l = this.f - SystemClock.elapsedRealtime();
        localStringBuilder1.append(" expireIn=");
        localStringBuilder1.append(l + "ms");
      }
      if (this.g != 2147483647)
        localStringBuilder1.append(" num=").append(this.g);
      localStringBuilder1.append(']');
      return localStringBuilder1.toString();
      str = "PRIORITY_HIGH_ACCURACY";
      continue;
      str = "PRIORITY_BALANCED_POWER_ACCURACY";
      continue;
      str = "PRIORITY_LOW_POWER";
    }
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.LocationRequest
 * JD-Core Version:    0.6.2
 */