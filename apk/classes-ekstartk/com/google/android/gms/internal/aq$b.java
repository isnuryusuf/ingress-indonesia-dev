package com.google.android.gms.internal;

import android.os.Parcel;

public class aq$b
  implements ae
{
  public static final m a = new m();
  final int b;
  final String c;
  final an.a<?, ?> d;

  aq$b(int paramInt, String paramString, an.a<?, ?> parama)
  {
    this.b = paramInt;
    this.c = paramString;
    this.d = parama;
  }

  aq$b(String paramString, an.a<?, ?> parama)
  {
    this.b = 1;
    this.c = paramString;
    this.d = parama;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aq.b
 * JD-Core Version:    0.6.2
 */