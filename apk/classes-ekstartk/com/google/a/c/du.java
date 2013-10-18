package com.google.a.c;

import com.google.a.a.an;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;

public abstract class du<E> extends ct<E>
  implements Set<E>
{
  private static int a(int paramInt)
  {
    int i;
    if (paramInt < 751619276)
    {
      i = Integer.highestOneBit(paramInt - 1) << 1;
      while (0.7D * i < paramInt)
        i <<= 1;
    }
    if (paramInt < 1073741824);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "collection too large");
      i = 1073741824;
      return i;
    }
  }

  public static <E> du<E> a(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return a(as.a(paramIterable));
    Iterator localIterator = paramIterable.iterator();
    if (!localIterator.hasNext())
      return bi.a;
    Object localObject = localIterator.next();
    if (!localIterator.hasNext())
      return b(localObject);
    return new dv().c(localObject).b(localIterator).a();
  }

  public static <E> du<E> a(E paramE1, E paramE2)
  {
    return b(2, new Object[] { paramE1, paramE2 });
  }

  public static <E> du<E> a(E paramE1, E paramE2, E paramE3)
  {
    return b(3, new Object[] { paramE1, paramE2, paramE3 });
  }

  public static <E> du<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return b(5, new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5 });
  }

  public static <E> du<E> a(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E[] paramArrayOfE)
  {
    Object[] arrayOfObject = new Object[6 + paramArrayOfE.length];
    arrayOfObject[0] = paramE1;
    arrayOfObject[1] = paramE2;
    arrayOfObject[2] = paramE3;
    arrayOfObject[3] = paramE4;
    arrayOfObject[4] = paramE5;
    arrayOfObject[5] = paramE6;
    System.arraycopy(paramArrayOfE, 0, arrayOfObject, 6, paramArrayOfE.length);
    return b(arrayOfObject.length, arrayOfObject);
  }

  public static <E> du<E> a(Collection<? extends E> paramCollection)
  {
    if (((paramCollection instanceof du)) && (!(paramCollection instanceof dz)))
    {
      du localdu = (du)paramCollection;
      if (!localdu.e())
        return localdu;
    }
    else if ((paramCollection instanceof EnumSet))
    {
      return db.a(EnumSet.copyOf((EnumSet)paramCollection));
    }
    Object[] arrayOfObject = paramCollection.toArray();
    return b(arrayOfObject.length, arrayOfObject);
  }

  public static <E> du<E> a(E[] paramArrayOfE)
  {
    switch (paramArrayOfE.length)
    {
    default:
      return b(paramArrayOfE.length, (Object[])paramArrayOfE.clone());
    case 0:
      return bi.a;
    case 1:
    }
    return b(paramArrayOfE[0]);
  }

  private static <E> du<E> b(int paramInt, Object[] paramArrayOfObject)
  {
    int i;
    Object[] arrayOfObject;
    int j;
    int k;
    int m;
    int n;
    label48: Object localObject1;
    int i1;
    int i2;
    label79: Object localObject2;
    int i4;
    switch (paramInt)
    {
    default:
      i = a(paramInt);
      arrayOfObject = new Object[i];
      j = i - 1;
      k = 0;
      m = 0;
      n = 0;
      if (k < paramInt)
      {
        localObject1 = ig.a(paramArrayOfObject[k], k);
        i1 = localObject1.hashCode();
        i2 = co.a(i1);
        int i3 = i2 & j;
        localObject2 = arrayOfObject[i3];
        if (localObject2 == null)
        {
          i4 = m + 1;
          paramArrayOfObject[m] = localObject1;
          arrayOfObject[i3] = localObject1;
        }
      }
      break;
    case 0:
    case 1:
    }
    for (int i5 = n + i1; ; i5 = n)
    {
      k++;
      n = i5;
      m = i4;
      break label48;
      return bi.a;
      return b(paramArrayOfObject[0]);
      if (!localObject2.equals(localObject1))
      {
        i2++;
        break label79;
        Arrays.fill(paramArrayOfObject, m, paramInt, null);
        if (m == 1)
          return new jl(paramArrayOfObject[0], n);
        if (i != a(m))
        {
          paramInt = m;
          break;
        }
        if (m < paramArrayOfObject.length)
          paramArrayOfObject = ig.b(paramArrayOfObject, m);
        return new ip(paramArrayOfObject, n, arrayOfObject, j);
      }
      i4 = m;
    }
  }

  public static <E> du<E> b(E paramE)
  {
    return new jl(paramE);
  }

  public static <E> du<E> g()
  {
    return bi.a;
  }

  public static <E> dv<E> h()
  {
    return new dv();
  }

  public abstract lj<E> b();

  boolean c_()
  {
    return false;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if (((paramObject instanceof du)) && (c_()) && (((du)paramObject).c_()) && (hashCode() != paramObject.hashCode()))
      return false;
    return jc.a(this, paramObject);
  }

  public int hashCode()
  {
    return jc.a(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.du
 * JD-Core Version:    0.6.2
 */