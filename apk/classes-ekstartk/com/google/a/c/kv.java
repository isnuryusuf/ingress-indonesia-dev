package com.google.a.c;

import com.google.a.a.ag;
import java.util.Arrays;

abstract class kv<R, C, V>
  implements ks<R, C, V>
{
  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    ks localks;
    do
    {
      return true;
      if (!(paramObject instanceof ks))
        break;
      localks = (ks)paramObject;
    }
    while ((ag.a(a(), localks.a())) && (ag.a(b(), localks.b())) && (ag.a(c(), localks.c())));
    return false;
    return false;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = a();
    arrayOfObject[1] = b();
    arrayOfObject[2] = c();
    return Arrays.hashCode(arrayOfObject);
  }

  public String toString()
  {
    return "(" + a() + "," + b() + ")=" + c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kv
 * JD-Core Version:    0.6.2
 */