package com.google.a.c;

import java.util.Map.Entry;

final class il<K, V> extends dh<K, V>
{
  private final transient dj<K, V>[] a;
  private final transient dj<K, V>[] b;
  private final transient int c;

  il(int paramInt, dk<?, ?>[] paramArrayOfdk)
  {
    this.a = new dj[paramInt];
    int i = co.a(paramInt, 1.2D);
    this.b = new dj[i];
    this.c = (i - 1);
    int j = 0;
    if (j < paramInt)
    {
      Object localObject1 = paramArrayOfdk[j];
      Object localObject2 = ((dk)localObject1).getKey();
      int k = co.a(localObject2.hashCode()) & this.c;
      dj localdj = this.b[k];
      if (localdj == null);
      while (true)
      {
        this.b[k] = localObject1;
        this.a[j] = localObject1;
        a(localObject2, (dj)localObject1, localdj);
        j++;
        break;
        localObject1 = new in((dj)localObject1, localdj);
      }
    }
  }

  il(dk<?, ?>[] paramArrayOfdk)
  {
    this(paramArrayOfdk.length, paramArrayOfdk);
  }

  il(Map.Entry<?, ?>[] paramArrayOfEntry)
  {
    int i = paramArrayOfEntry.length;
    this.a = new dj[i];
    int j = co.a(i, 1.2D);
    this.b = new dj[j];
    this.c = (j - 1);
    int k = 0;
    if (k < i)
    {
      Map.Entry<?, ?> localEntry = paramArrayOfEntry[k];
      Object localObject1 = localEntry.getKey();
      Object localObject2 = localEntry.getValue();
      d(localObject1, localObject2);
      int m = co.a(localObject1.hashCode()) & this.c;
      dj localdj = this.b[m];
      if (localdj == null);
      for (Object localObject3 = new dk(localObject1, localObject2); ; localObject3 = new in(localObject1, localObject2, localdj))
      {
        this.b[m] = localObject3;
        this.a[k] = localObject3;
        a(localObject1, (dj)localObject3, localdj);
        k++;
        break;
      }
    }
  }

  private static void a(K paramK, dj<K, V> paramdj1, dj<K, V> paramdj2)
  {
    if (paramdj2 != null)
    {
      if (!paramK.equals(paramdj2.getKey()));
      for (boolean bool = true; ; bool = false)
      {
        a(bool, "key", paramdj1, paramdj2);
        paramdj2 = paramdj2.a();
        break;
      }
    }
  }

  final boolean b()
  {
    return false;
  }

  final du<Map.Entry<K, V>> d()
  {
    return new im(this, (byte)0);
  }

  public final V get(Object paramObject)
  {
    if (paramObject == null);
    while (true)
    {
      return null;
      int i = co.a(paramObject.hashCode()) & this.c;
      for (dj localdj = this.b[i]; localdj != null; localdj = localdj.a())
        if (paramObject.equals(localdj.getKey()))
          return localdj.getValue();
    }
  }

  public final int size()
  {
    return this.a.length;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.il
 * JD-Core Version:    0.6.2
 */