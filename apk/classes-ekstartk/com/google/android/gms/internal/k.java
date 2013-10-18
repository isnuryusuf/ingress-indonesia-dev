package com.google.android.gms.internal;

import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;

public final class k
  implements ae
{
  public static final fi a = new fi();
  private static final fh k = new fg(new String[0]);
  int b;
  String[] c;
  Bundle d;
  CursorWindow[] e;
  int f;
  Bundle g;
  int[] h;
  int i;
  boolean j = false;

  private void a(String paramString, int paramInt)
  {
    if ((this.d == null) || (!this.d.containsKey(paramString)))
      throw new IllegalArgumentException("No such column: " + paramString);
    if (c())
      throw new IllegalArgumentException("Buffer is closed.");
    if ((paramInt < 0) || (paramInt >= this.i))
      throw new CursorIndexOutOfBoundsException(paramInt, this.i);
  }

  private boolean c()
  {
    try
    {
      boolean bool = this.j;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a(int paramInt)
  {
    int m = 0;
    boolean bool;
    if ((paramInt >= 0) && (paramInt < this.i))
    {
      bool = true;
      gg.a(bool);
    }
    while (true)
    {
      if (m < this.h.length)
      {
        if (paramInt < this.h[m])
          m--;
      }
      else
      {
        if (m == this.h.length)
          m--;
        return m;
        bool = false;
        break;
      }
      m++;
    }
  }

  public final long a(String paramString, int paramInt1, int paramInt2)
  {
    a(paramString, paramInt1);
    return this.e[paramInt2].getLong(paramInt1 - this.h[paramInt2], this.d.getInt(paramString));
  }

  public final void a()
  {
    int m = 0;
    this.d = new Bundle();
    for (int n = 0; n < this.c.length; n++)
      this.d.putInt(this.c[n], n);
    this.h = new int[this.e.length];
    int i1 = 0;
    while (m < this.e.length)
    {
      this.h[m] = i1;
      i1 += this.e[m].getNumRows();
      m++;
    }
    this.i = i1;
  }

  public final int b()
  {
    return this.i;
  }

  public final int b(String paramString, int paramInt1, int paramInt2)
  {
    a(paramString, paramInt1);
    return this.e[paramInt2].getInt(paramInt1 - this.h[paramInt2], this.d.getInt(paramString));
  }

  public final String c(String paramString, int paramInt1, int paramInt2)
  {
    a(paramString, paramInt1);
    return this.e[paramInt2].getString(paramInt1 - this.h[paramInt2], this.d.getInt(paramString));
  }

  public final boolean d(String paramString, int paramInt1, int paramInt2)
  {
    a(paramString, paramInt1);
    return Long.valueOf(this.e[paramInt2].getLong(paramInt1 - this.h[paramInt2], this.d.getInt(paramString))).longValue() == 1L;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final Uri e(String paramString, int paramInt1, int paramInt2)
  {
    String str = c(paramString, paramInt1, paramInt2);
    if (str == null)
      return null;
    return Uri.parse(str);
  }

  public final boolean f(String paramString, int paramInt1, int paramInt2)
  {
    a(paramString, paramInt1);
    return this.e[paramInt2].isNull(paramInt1 - this.h[paramInt2], this.d.getInt(paramString));
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fi.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.k
 * JD-Core Version:    0.6.2
 */