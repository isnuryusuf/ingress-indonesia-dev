package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class ConnectionError
  implements Parcelable
{
  public static final Parcelable.Creator<ConnectionError> CREATOR = new a();
  private int a;

  public ConnectionError(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String toString()
  {
    switch (this.a)
    {
    case 9:
    default:
      return "NO ERROR";
    case 1:
      return "NO NETWORK";
    case 2:
      return "CONNECTION FAILED";
    case 3:
      return "UNKNOWN HOST";
    case 4:
      return "AUTH FAILED";
    case 5:
      return "AUTH EXPIRED";
    case 6:
      return "HEARTBEAT TIMEOUT";
    case 7:
      return "SERVER FAILED";
    case 8:
      return "SERVER REJECT - RATE LIMIT";
    case 10:
    }
    return "UNKNOWN";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gtalkservice.ConnectionError
 * JD-Core Version:    0.6.2
 */