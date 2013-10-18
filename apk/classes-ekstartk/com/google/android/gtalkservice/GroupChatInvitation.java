package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GroupChatInvitation
  implements Parcelable
{
  public static final Parcelable.Creator<GroupChatInvitation> CREATOR = new c();
  private String a;
  private String b;
  private String c;
  private String d;
  private long e;

  public GroupChatInvitation(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.d = paramParcel.readString();
    this.c = paramParcel.readString();
    this.e = paramParcel.readLong();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.c);
    paramParcel.writeLong(this.e);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gtalkservice.GroupChatInvitation
 * JD-Core Version:    0.6.2
 */