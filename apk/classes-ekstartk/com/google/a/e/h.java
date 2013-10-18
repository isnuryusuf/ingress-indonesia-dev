package com.google.a.e;

import com.google.a.a.an;
import com.google.a.a.bs;
import java.io.Serializable;
import java.util.zip.Checksum;

final class h extends f
  implements Serializable
{
  private final bs<? extends Checksum> a;
  private final int b;
  private final String c;

  h(bs<? extends Checksum> parambs, int paramInt, String paramString)
  {
    this.a = ((bs)an.a(parambs));
    if ((paramInt == 32) || (paramInt == 64));
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      an.a(bool, "bits (%s) must be either 32 or 64", arrayOfObject);
      this.b = paramInt;
      this.c = ((String)an.a(paramString));
      return;
    }
  }

  public final aa a()
  {
    return new i(this, (Checksum)this.a.a(), (byte)0);
  }

  public final String toString()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.h
 * JD-Core Version:    0.6.2
 */