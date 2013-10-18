package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.gg;

public final class RealTimeMessage
  implements Parcelable
{
  public static final Parcelable.Creator<RealTimeMessage> CREATOR = new a();
  private final String a;
  private final byte[] b;
  private final int c;

  private RealTimeMessage(Parcel paramParcel)
  {
    this(paramParcel.readString(), paramParcel.createByteArray(), paramParcel.readInt());
  }

  private RealTimeMessage(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    this.a = ((String)gg.a(paramString));
    this.b = ((byte[])((byte[])gg.a(paramArrayOfByte)).clone());
    this.c = paramInt;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeByteArray(this.b);
    paramParcel.writeInt(this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RealTimeMessage
 * JD-Core Version:    0.6.2
 */