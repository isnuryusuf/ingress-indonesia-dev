package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.d;

public final class b
  implements Parcelable.Creator<DetectedActivity>
{
  static void a(DetectedActivity paramDetectedActivity, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramDetectedActivity.c);
    d.a(paramParcel, 1000, paramDetectedActivity.b);
    d.a(paramParcel, 2, paramDetectedActivity.d);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.b
 * JD-Core Version:    0.6.2
 */