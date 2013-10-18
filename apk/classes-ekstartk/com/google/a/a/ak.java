package com.google.a.a;

import java.io.Serializable;

public final class ak<A, B>
  implements Serializable
{
  public final A a;
  public final B b;

  public ak(A paramA, B paramB)
  {
    this.a = paramA;
    this.b = paramB;
  }

  public static <A, B> ak<A, B> a(A paramA, B paramB)
  {
    return new ak(paramA, paramB);
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ak;
    boolean bool2 = false;
    if (bool1)
    {
      ak localak = (ak)paramObject;
      boolean bool3 = ag.a(this.a, localak.a);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = ag.a(this.b, localak.b);
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
    return bool2;
  }

  public final int hashCode()
  {
    int i;
    int j;
    if (this.a == null)
    {
      i = 0;
      Object localObject = this.b;
      j = 0;
      if (localObject != null)
        break label38;
    }
    while (true)
    {
      return j + i * 31;
      i = this.a.hashCode();
      break;
      label38: j = this.b.hashCode();
    }
  }

  public final String toString()
  {
    return "(" + this.a + ", " + this.b + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.ak
 * JD-Core Version:    0.6.2
 */