package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.internal.ae;
import java.util.List;

public class ActivityRecognitionResult
  implements ae
{
  public static final a a = new a();
  int b = 1;
  List<DetectedActivity> c;
  long d;
  long e;

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    return "ActivityRecognitionResult [probableActivities=" + this.c + ", timeMillis=" + this.d + ", elapsedRealtimeMillis=" + this.e + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.ActivityRecognitionResult
 * JD-Core Version:    0.6.2
 */