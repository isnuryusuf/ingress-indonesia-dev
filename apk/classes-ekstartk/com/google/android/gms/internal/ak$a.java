package com.google.android.gms.internal;

import android.os.Parcel;

public final class ak$a
  implements ae
{
  public static final i a = new i();
  final int b;
  final String c;
  final int d;

  ak$a(int paramInt1, String paramString, int paramInt2)
  {
    this.b = paramInt1;
    this.c = paramString;
    this.d = paramInt2;
  }

  ak$a(String paramString, int paramInt)
  {
    this.b = 1;
    this.c = paramString;
    this.d = paramInt;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ak.a
 * JD-Core Version:    0.6.2
 */