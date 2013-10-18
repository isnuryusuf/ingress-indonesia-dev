package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.internal.ae;

public class DetectedActivity
  implements ae
{
  public static final b a = new b();
  int b = 1;
  int c;
  int d;

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("DetectedActivity [type=");
    int i = this.c;
    if (i > 5)
      i = 4;
    return i + ", confidence=" + this.d + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.DetectedActivity
 * JD-Core Version:    0.6.2
 */