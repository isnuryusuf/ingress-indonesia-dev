package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Arrays;

public abstract class ff
{
  protected final k a;
  protected final int b;
  private final int c;

  public ff(k paramk, int paramInt)
  {
    this.a = ((k)gg.a(paramk));
    if ((paramInt >= 0) && (paramInt < paramk.b()));
    for (boolean bool = true; ; bool = false)
    {
      gg.a(bool);
      this.b = paramInt;
      this.c = paramk.a(this.b);
      return;
    }
  }

  protected final long a(String paramString)
  {
    return this.a.a(paramString, this.b, this.c);
  }

  protected final int b(String paramString)
  {
    return this.a.b(paramString, this.b, this.c);
  }

  protected final boolean c(String paramString)
  {
    return this.a.d(paramString, this.b, this.c);
  }

  protected final String d(String paramString)
  {
    return this.a.c(paramString, this.b, this.c);
  }

  protected final Uri e(String paramString)
  {
    return this.a.e(paramString, this.b, this.c);
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ff;
    boolean bool2 = false;
    if (bool1)
    {
      ff localff = (ff)paramObject;
      boolean bool3 = ge.a(Integer.valueOf(localff.b), Integer.valueOf(this.b));
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = ge.a(Integer.valueOf(localff.c), Integer.valueOf(this.c));
        bool2 = false;
        if (bool4)
        {
          k localk1 = localff.a;
          k localk2 = this.a;
          bool2 = false;
          if (localk1 == localk2)
            bool2 = true;
        }
      }
    }
    return bool2;
  }

  protected final boolean f(String paramString)
  {
    return this.a.f(paramString, this.b, this.c);
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(this.b);
    arrayOfObject[1] = Integer.valueOf(this.c);
    arrayOfObject[2] = this.a;
    return Arrays.hashCode(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ff
 * JD-Core Version:    0.6.2
 */