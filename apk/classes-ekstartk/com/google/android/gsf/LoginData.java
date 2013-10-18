package com.google.android.gsf;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LoginData
  implements Parcelable
{
  public static final Parcelable.Creator<LoginData> CREATOR = new b();
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public byte[] f = null;
  public String g = null;
  public String h = null;
  public int i = 0;
  public c j = null;
  public String k = null;
  public String l = null;
  public String m = null;
  public String n = null;

  public LoginData()
  {
  }

  private LoginData(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    int i1 = paramParcel.readInt();
    String str;
    if (i1 == -1)
    {
      this.f = null;
      this.g = paramParcel.readString();
      this.h = paramParcel.readString();
      this.i = paramParcel.readInt();
      str = paramParcel.readString();
      if (str != null)
        break label218;
    }
    label218: for (this.j = null; ; this.j = c.valueOf(str))
    {
      this.k = paramParcel.readString();
      this.l = paramParcel.readString();
      this.m = paramParcel.readString();
      this.n = paramParcel.readString();
      return;
      this.f = new byte[i1];
      paramParcel.readByteArray(this.f);
      break;
    }
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
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    if (this.f == null)
    {
      paramParcel.writeInt(-1);
      paramParcel.writeString(this.g);
      paramParcel.writeString(this.h);
      paramParcel.writeInt(this.i);
      if (this.j != null)
        break label141;
      paramParcel.writeString(null);
    }
    while (true)
    {
      paramParcel.writeString(this.k);
      paramParcel.writeString(this.l);
      paramParcel.writeString(this.m);
      paramParcel.writeString(this.n);
      return;
      paramParcel.writeInt(this.f.length);
      paramParcel.writeByteArray(this.f);
      break;
      label141: paramParcel.writeString(this.j.name());
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gsf.LoginData
 * JD-Core Version:    0.6.2
 */