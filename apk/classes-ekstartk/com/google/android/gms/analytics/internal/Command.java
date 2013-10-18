package com.google.android.gms.analytics.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Command
  implements Parcelable
{
  public static final Parcelable.Creator<Command> CREATOR = new a();
  private String a;
  private String b;
  private String c;

  public Command()
  {
  }

  Command(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
  }

  public Command(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }

  public final String a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.internal.Command
 * JD-Core Version:    0.6.2
 */