package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map.Entry;
import java.util.Set;

public final class by<K, V> extends AbstractMap<K, V>
  implements am<K, V>, Serializable
{
  private transient bz<K, V>[] a;
  private transient bz<K, V>[] b;
  private transient int c;
  private transient int d;
  private transient int e;
  private transient am<V, K> f;

  private by(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      an.a(bool, "expectedSize must be >= 0 but was %s", arrayOfObject);
      int i = co.a(paramInt, 1.0D);
      this.a = new bz[i];
      this.b = new bz[i];
      this.d = (i - 1);
      this.e = 0;
      this.c = 0;
      return;
    }
  }

  public static <K, V> by<K, V> a(int paramInt)
  {
    return new by(paramInt);
  }

  private bz<K, V> a(Object paramObject, int paramInt)
  {
    for (bz localbz = this.a[(paramInt & this.d)]; localbz != null; localbz = localbz.e)
      if ((paramInt == localbz.b) && (ag.a(paramObject, localbz.a)))
        return localbz;
    return null;
  }

  private void a(bz<K, V> parambz)
  {
    Object localObject1 = null;
    int i = parambz.b & this.d;
    Object localObject2 = this.a[i];
    Object localObject3 = null;
    label44: int j;
    if (localObject2 == parambz)
      if (localObject3 == null)
      {
        this.a[i] = parambz.e;
        j = parambz.d & this.d;
      }
    bz localbz2;
    for (Object localObject4 = this.b[j]; ; localObject4 = localbz2)
    {
      if (localObject4 == parambz)
      {
        if (localObject1 == null)
          this.b[j] = parambz.f;
        while (true)
        {
          this.c = (-1 + this.c);
          this.e = (1 + this.e);
          return;
          localObject3.e = parambz.e;
          break label44;
          bz localbz1 = ((bz)localObject2).e;
          localObject3 = localObject2;
          localObject2 = localbz1;
          break;
          localObject1.f = parambz.f;
        }
      }
      localbz2 = ((bz)localObject4).f;
      localObject1 = localObject4;
    }
  }

  private static int b(Object paramObject)
  {
    if (paramObject == null);
    for (int i = 0; ; i = paramObject.hashCode())
      return co.a(i);
  }

  public static <K, V> by<K, V> b()
  {
    return a(16);
  }

  private bz<K, V> b(Object paramObject, int paramInt)
  {
    for (bz localbz = this.b[(paramInt & this.d)]; localbz != null; localbz = localbz.f)
      if ((paramInt == localbz.d) && (ag.a(paramObject, localbz.c)))
        return localbz;
    return null;
  }

  private void b(bz<K, V> parambz)
  {
    int i = parambz.b & this.d;
    parambz.e = this.a[i];
    this.a[i] = parambz;
    int j = parambz.d & this.d;
    parambz.f = this.b[j];
    this.b[j] = parambz;
    this.c = (1 + this.c);
    this.e = (1 + this.e);
  }

  private void c()
  {
    int i = 0;
    bz[] arrayOfbz = this.a;
    if (co.a(this.c, arrayOfbz.length))
    {
      int j = 2 * arrayOfbz.length;
      this.a = new bz[j];
      this.b = new bz[j];
      this.d = (j - 1);
      this.c = 0;
      while (i < arrayOfbz.length)
      {
        bz localbz;
        for (Object localObject = arrayOfbz[i]; localObject != null; localObject = localbz)
        {
          localbz = ((bz)localObject).e;
          b((bz)localObject);
        }
        i++;
      }
      this.e = (1 + this.e);
    }
  }

  public final am<V, K> a()
  {
    if (this.f == null)
    {
      cd localcd = new cd(this, (byte)0);
      this.f = localcd;
      return localcd;
    }
    return this.f;
  }

  public final void clear()
  {
    this.c = 0;
    Arrays.fill(this.a, null);
    Arrays.fill(this.b, null);
    this.e = (1 + this.e);
  }

  public final boolean containsKey(Object paramObject)
  {
    return a(paramObject, b(paramObject)) != null;
  }

  public final boolean containsValue(Object paramObject)
  {
    return b(paramObject, b(paramObject)) != null;
  }

  public final Set<Map.Entry<K, V>> entrySet()
  {
    return new ca(this, (byte)0);
  }

  public final V get(Object paramObject)
  {
    bz localbz = a(paramObject, b(paramObject));
    if (localbz == null)
      return null;
    return localbz.c;
  }

  public final Set<K> keySet()
  {
    return new ck(this);
  }

  public final V put(K paramK, V paramV)
  {
    int i = b(paramK);
    int j = b(paramV);
    bz localbz = a(paramK, i);
    if ((localbz != null) && (j == localbz.d) && (ag.a(paramV, localbz.c)))
      return paramV;
    if (b(paramV, j) != null)
      throw new IllegalArgumentException("value already present: " + paramV);
    if (localbz != null)
      a(localbz);
    b(new bz(paramK, i, paramV, j));
    c();
    if (localbz == null)
      return null;
    return localbz.c;
  }

  public final V remove(Object paramObject)
  {
    bz localbz = a(paramObject, b(paramObject));
    if (localbz == null)
      return null;
    a(localbz);
    return localbz.c;
  }

  public final int size()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.by
 * JD-Core Version:    0.6.2
 */