package com.google.android.gsf;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GoogleLoginCredentialsResult
  implements Parcelable
{
  public static final Parcelable.Creator<GoogleLoginCredentialsResult> CREATOR = new a();
  private String a;
  private String b;
  private Intent c;

  public GoogleLoginCredentialsResult()
  {
    this.b = null;
    this.c = null;
    this.a = null;
  }

  private GoogleLoginCredentialsResult(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    int i = paramParcel.readInt();
    this.c = null;
    if (i == 1)
    {
      this.c = new Intent();
      this.c.readFromParcel(paramParcel);
      this.c.setExtrasClassLoader(getClass().getClassLoader());
    }
  }

  public int describeContents()
  {
    if (this.c != null)
      return this.c.describeContents();
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    if (this.c != null)
    {
      paramParcel.writeInt(1);
      this.c.writeToParcel(paramParcel, 0);
      return;
    }
    paramParcel.writeInt(0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gsf.GoogleLoginCredentialsResult
 * JD-Core Version:    0.6.2
 */