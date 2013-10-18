package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class ConnectionState
  implements Parcelable
{
  public static final Parcelable.Creator<ConnectionState> CREATOR = new b();
  private volatile int a;

  public ConnectionState(Parcel paramParcel)
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
    default:
      return "IDLE";
    case 1:
      return "RECONNECTION_SCHEDULED";
    case 2:
      return "CONNECTING";
    case 3:
      return "AUTHENTICATED";
    case 4:
    }
    return "ONLINE";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gtalkservice.ConnectionState
 * JD-Core Version:    0.6.2
 */