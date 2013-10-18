package com.google.a.a;

import java.util.AbstractList;

final class ae extends AbstractList<Object>
{
  ae(Object[] paramArrayOfObject, Object paramObject1, Object paramObject2)
  {
  }

  public final Object get(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return this.a[(paramInt - 2)];
    case 0:
      return this.b;
    case 1:
    }
    return this.c;
  }

  public final int size()
  {
    return 2 + this.a.length;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.ae
 * JD-Core Version:    0.6.2
 */