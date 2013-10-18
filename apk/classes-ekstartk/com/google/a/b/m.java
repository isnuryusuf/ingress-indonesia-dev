package com.google.a.b;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import java.util.Arrays;

public final class m
{
  private final long a;
  private final long b;
  private final long c;
  private final long d;
  private final long e;
  private final long f;

  public m()
  {
    boolean bool2;
    boolean bool3;
    label26: boolean bool4;
    label39: boolean bool5;
    label53: boolean bool6;
    if (0L >= 0L)
    {
      bool2 = bool1;
      an.a(bool2);
      if (0L < 0L)
        break label118;
      bool3 = bool1;
      an.a(bool3);
      if (0L < 0L)
        break label123;
      bool4 = bool1;
      an.a(bool4);
      if (0L < 0L)
        break label129;
      bool5 = bool1;
      an.a(bool5);
      if (0L < 0L)
        break label135;
      bool6 = bool1;
      label67: an.a(bool6);
      if (0L < 0L)
        break label141;
    }
    while (true)
    {
      an.a(bool1);
      this.a = 0L;
      this.b = 0L;
      this.c = 0L;
      this.d = 0L;
      this.e = 0L;
      this.f = 0L;
      return;
      bool2 = false;
      break;
      label118: bool3 = false;
      break label26;
      label123: bool4 = false;
      break label39;
      label129: bool5 = false;
      break label53;
      label135: bool6 = false;
      break label67;
      label141: bool1 = false;
    }
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof m;
    boolean bool2 = false;
    if (bool1)
    {
      m localm = (m)paramObject;
      boolean bool3 = this.a < localm.a;
      bool2 = false;
      if (!bool3)
      {
        boolean bool4 = this.b < localm.b;
        bool2 = false;
        if (!bool4)
        {
          boolean bool5 = this.c < localm.c;
          bool2 = false;
          if (!bool5)
          {
            boolean bool6 = this.d < localm.d;
            bool2 = false;
            if (!bool6)
            {
              boolean bool7 = this.e < localm.e;
              bool2 = false;
              if (!bool7)
              {
                boolean bool8 = this.f < localm.f;
                bool2 = false;
                if (!bool8)
                  bool2 = true;
              }
            }
          }
        }
      }
    }
    return bool2;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = Long.valueOf(this.a);
    arrayOfObject[1] = Long.valueOf(this.b);
    arrayOfObject[2] = Long.valueOf(this.c);
    arrayOfObject[3] = Long.valueOf(this.d);
    arrayOfObject[4] = Long.valueOf(this.e);
    arrayOfObject[5] = Long.valueOf(this.f);
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    return ag.a(this).a("hitCount", this.a).a("missCount", this.b).a("loadSuccessCount", this.c).a("loadExceptionCount", this.d).a("totalLoadTime", this.e).a("evictionCount", this.f).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.m
 * JD-Core Version:    0.6.2
 */