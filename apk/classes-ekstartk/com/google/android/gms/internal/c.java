package com.google.android.gms.internal;

import android.os.Parcel;

public final class c extends RuntimeException
{
  public c(String paramString, Parcel paramParcel)
  {
    super(paramString + " Parcel: pos=" + paramParcel.dataPosition() + " size=" + paramParcel.dataSize());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.c
 * JD-Core Version:    0.6.2
 */