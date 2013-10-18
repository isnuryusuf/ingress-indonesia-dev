package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.d;

public final class Tile
  implements ae
{
  public static final n a = new n();
  public final int b;
  public final int c;
  public final byte[] d;
  private final int e;

  public Tile()
  {
    this(1, -1, -1, null);
  }

  Tile(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    this.e = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramArrayOfByte;
  }

  public final int a()
  {
    return this.e;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (cw.a())
    {
      int i = d.a(paramParcel);
      d.a(paramParcel, 1, this.e);
      d.a(paramParcel, 2, this.b);
      d.a(paramParcel, 3, this.c);
      d.a(paramParcel, this.d);
      d.a(paramParcel, i);
      return;
    }
    n.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.Tile
 * JD-Core Version:    0.6.2
 */