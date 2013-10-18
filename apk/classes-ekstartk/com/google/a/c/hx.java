package com.google.a.c;

import com.google.a.a.ag;

abstract class hx<E>
  implements hu<E>
{
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof hu;
    boolean bool2 = false;
    if (bool1)
    {
      hu localhu = (hu)paramObject;
      int i = b();
      int j = localhu.b();
      bool2 = false;
      if (i == j)
      {
        boolean bool3 = ag.a(a(), localhu.a());
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
    }
    return bool2;
  }

  public int hashCode()
  {
    Object localObject = a();
    if (localObject == null);
    for (int i = 0; ; i = localObject.hashCode())
      return i ^ b();
  }

  public String toString()
  {
    String str = String.valueOf(a());
    int i = b();
    if (i == 1)
      return str;
    return str + " x " + i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hx
 * JD-Core Version:    0.6.2
 */