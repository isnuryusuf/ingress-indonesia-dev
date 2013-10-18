package com.google.android.gms.internal;

import android.os.Parcel;

public class ai
  implements ae
{
  public static final g a = new g();
  private final int b;
  private final ak c;

  ai(int paramInt, ak paramak)
  {
    this.b = paramInt;
    this.c = paramak;
  }

  private ai(ak paramak)
  {
    this.b = 1;
    this.c = paramak;
  }

  public static ai a(j<?, ?> paramj)
  {
    if ((paramj instanceof ak))
      return new ai((ak)paramj);
    throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
  }

  final int a()
  {
    return this.b;
  }

  final ak b()
  {
    return this.c;
  }

  public final j<?, ?> c()
  {
    if (this.c != null)
      return this.c;
    throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    g.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ai
 * JD-Core Version:    0.6.2
 */