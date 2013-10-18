package com.google.a.c;

import com.google.a.a.an;

final class hp
{
  final ih<E> a;
  hn<E>.hp b;

  hp(ih<E> paramih)
  {
    Object localObject;
    this.a = localObject;
  }

  private int b(int paramInt1, int paramInt2)
  {
    int k;
    if (paramInt1 >= hn.b(this.c))
    {
      k = -1;
      return k;
    }
    if (paramInt1 > 0);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      int i = paramInt2 + Math.min(paramInt1, hn.b(this.c) - paramInt2);
      int j = paramInt1 + 1;
      k = paramInt1;
      while (j < i)
      {
        if (a(j, k) < 0)
          k = j;
        j++;
      }
      break;
    }
  }

  final int a(int paramInt)
  {
    int i = 1 + paramInt * 2;
    if (i < 0)
      return -1;
    return b(1 + i * 2, 4);
  }

  final int a(int paramInt1, int paramInt2)
  {
    return this.a.compare(this.c.a(paramInt1), this.c.a(paramInt2));
  }

  final int a(int paramInt, E paramE)
  {
    while (paramInt > 2)
    {
      int i = (-1 + (paramInt - 1) / 2) / 2;
      Object localObject = this.c.a(i);
      if (this.a.compare(localObject, paramE) <= 0)
        break;
      hn.a(this.c)[paramInt] = localObject;
      paramInt = i;
    }
    hn.a(this.c)[paramInt] = paramE;
    return paramInt;
  }

  final hq<E> a(int paramInt1, int paramInt2, E paramE)
  {
    int i = b(1 + paramInt2 * 2, 2);
    if ((i > 0) && (this.a.compare(this.c.a(i), paramE) < 0))
    {
      hn.a(this.c)[paramInt2] = this.c.a(i);
      hn.a(this.c)[i] = paramE;
    }
    for (int j = i; j == paramInt2; j = b(paramInt2, paramE))
      return null;
    if (j < paramInt1);
    for (Object localObject = this.c.a(paramInt1); this.b.a(j, paramE) < paramInt1; localObject = this.c.a((paramInt1 - 1) / 2))
      return new hq(paramE, localObject);
    return null;
  }

  final int b(int paramInt, E paramE)
  {
    if (paramInt == 0)
    {
      hn.a(this.c)[0] = paramE;
      return 0;
    }
    int i = (paramInt - 1) / 2;
    Object localObject1 = this.c.a(i);
    int k;
    Object localObject2;
    if (i != 0)
    {
      k = 2 + 2 * ((i - 1) / 2);
      if ((k != i) && (1 + k * 2 >= hn.b(this.c)))
      {
        localObject2 = this.c.a(k);
        if (this.a.compare(localObject2, localObject1) >= 0);
      }
    }
    for (int j = k; ; j = i)
    {
      if (this.a.compare(localObject2, paramE) < 0)
      {
        hn.a(this.c)[paramInt] = localObject2;
        hn.a(this.c)[j] = paramE;
        return j;
      }
      hn.a(this.c)[paramInt] = paramE;
      return paramInt;
      localObject2 = localObject1;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hp
 * JD-Core Version:    0.6.2
 */