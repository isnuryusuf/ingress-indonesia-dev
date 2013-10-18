package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.d;

public final class a
  implements Parcelable.Creator<ActivityRecognitionResult>
{
  static void a(ActivityRecognitionResult paramActivityRecognitionResult, Parcel paramParcel)
  {
    int i = d.a(paramParcel);
    d.a(paramParcel, 1, paramActivityRecognitionResult.c, false);
    d.a(paramParcel, 1000, paramActivityRecognitionResult.b);
    d.a(paramParcel, 2, paramActivityRecognitionResult.d);
    d.a(paramParcel, 3, paramActivityRecognitionResult.e);
    d.a(paramParcel, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.a
 * JD-Core Version:    0.6.2
 */