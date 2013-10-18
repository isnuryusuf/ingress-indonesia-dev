package com.google.a.d;

import com.google.a.a.an;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class l
{
  private long[] a;
  private int[] b;
  private int c;
  private boolean d;
  private int e;

  private strictfp int a(long paramLong, int paramInt)
  {
    int i = -1 + this.a.length;
    int j = 0;
    while (j <= i)
    {
      int k = j + i >>> 1;
      int m = b(this.a[k], this.b[k], paramLong, paramInt);
      if (m < 0)
        j = k + 1;
      else if (m > 0)
        i = k - 1;
      else
        return k;
    }
    return -(j + 1);
  }

  private static strictfp int a(y paramy1, y paramy2, boolean paramBoolean, ArrayList<j> paramArrayList)
  {
    paramArrayList.clear();
    double d1 = paramy1.e(paramy2);
    int i = aa.g.a(1.02D * d1);
    Object localObject;
    if (!paramBoolean)
    {
      localObject = j.a(paramy1);
      j localj6 = j.a(paramy2);
      if (((j)localObject).e() != localj6.e())
        localObject = j.a();
      while ((!((j)localObject).equals(j.a())) && (((j)localObject).f() >= i - 2))
      {
        paramArrayList.add(localObject);
        return ((j)localObject).f();
        while (!((j)localObject).equals(localj6))
        {
          localObject = ((j)localObject).k();
          localj6 = localj6.k();
        }
      }
    }
    j localj1;
    if (i == 30)
      localj1 = new j(65520L).b(3);
    while (true)
    {
      localObject = localj1;
      break;
      y localy1 = y.a(y.a(paramy2, paramy1), 0.01D);
      y localy2 = y.a(y.d(y.b(localy1, paramy1)), d1 * 0.01D);
      y localy3 = y.a(paramy1, localy1);
      y localy4 = y.c(paramy2, localy1);
      y localy5 = y.a(localy3, localy2);
      y localy6 = y.c(localy3, localy2);
      y localy7 = y.a(localy4, localy2);
      y localy8 = y.c(localy4, localy2);
      localj1 = j.a(localy5);
      j localj2 = j.a(localy6);
      j localj3 = j.a(localy7);
      j localj4 = j.a(localy8);
      if ((localj1.e() != localj2.e()) || (localj1.e() != localj3.e()) || (localj1.e() != localj4.e()))
        localj1 = j.a();
      else
        while ((!localj1.equals(localj2)) || (!localj1.equals(localj3)) || (!localj1.equals(localj4)))
        {
          localj1 = localj1.k();
          localj2 = localj2.k();
          localj3 = localj3.k();
          localj4 = localj4.k();
        }
    }
    if (i == 0)
    {
      for (j localj5 = j.n(); !localj5.equals(j.o()); localj5 = localj5.m())
        paramArrayList.add(localj5);
      return 0;
    }
    y localy9 = y.d(y.c(y.c(paramy1, paramy2)));
    int j = Math.min(i, 29);
    j.a(localy9).a(j, paramArrayList);
    return j;
  }

  private strictfp void a(y paramy1, y paramy2, List<j> paramList, Set<Integer> paramSet)
  {
    i[] arrayOfi = null;
    while (!paramList.isEmpty())
    {
      j localj = (j)paramList.remove(-1 + paramList.size());
      int[] arrayOfInt1 = a(localj.i().d(), localj.j().d());
      if (arrayOfInt1[1] - arrayOfInt1[0] <= 16)
      {
        for (int i3 = arrayOfInt1[0]; i3 < arrayOfInt1[1]; i3++)
          paramSet.add(Integer.valueOf(this.b[i3]));
      }
      else
      {
        int[] arrayOfInt2 = a(localj.d(), localj.d());
        for (int i = arrayOfInt2[0]; i < arrayOfInt2[1]; i++)
          paramSet.add(Integer.valueOf(this.b[i]));
        if (arrayOfi == null)
        {
          arrayOfi = new i[4];
          for (int i2 = 0; i2 < 4; i2++)
            arrayOfi[i2] = new i();
        }
        new i(localj).a(arrayOfi);
        int j = arrayOfi.length;
        int k = 0;
        label222: i locali;
        int n;
        if (k < j)
        {
          locali = arrayOfi[k];
          y[] arrayOfy = new y[4];
          for (int m = 0; m < 4; m++)
            arrayOfy[m] = locali.b(m);
          n = 0;
          label272: if (n >= 4)
            break label332;
          if (!o.b(paramy1, paramy2, arrayOfy[n], arrayOfy[((n + 1) % 4)]))
            break label326;
        }
        label326: label332: for (int i1 = 1; ; i1 = 0)
        {
          if (i1 != 0)
            paramList.add(locali.a());
          k++;
          break label222;
          break;
          n++;
          break label272;
        }
      }
    }
  }

  private strictfp void a(List<j> paramList, Set<Integer> paramSet)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      j localj2 = (j)localIterator1.next();
      for (int j = -1 + localj2.f(); (j >= this.c) && (localHashSet.add(localj2.b(j))); j--);
    }
    Iterator localIterator2 = localHashSet.iterator();
    while (localIterator2.hasNext())
    {
      j localj1 = (j)localIterator2.next();
      int[] arrayOfInt = a(localj1.d(), localj1.d());
      for (int i = arrayOfInt[0]; i < arrayOfInt[1]; i++)
        paramSet.add(Integer.valueOf(this.b[i]));
    }
  }

  private strictfp int[] a(long paramLong1, long paramLong2)
  {
    if (paramLong1 > paramLong2);
    while (true)
    {
      int[] arrayOfInt = new int[2];
      arrayOfInt[0] = (-1 - a(paramLong2, -2147483648));
      arrayOfInt[1] = (-1 - a(paramLong1, 2147483647));
      return arrayOfInt;
      long l = paramLong2;
      paramLong2 = paramLong1;
      paramLong1 = l;
    }
  }

  private static final strictfp int b(long paramLong1, int paramInt1, long paramLong2, int paramInt2)
  {
    if (paramLong1 < paramLong2);
    do
    {
      return -1;
      if (paramLong1 > paramLong2)
        return 1;
    }
    while (paramInt1 < paramInt2);
    if (paramInt1 > paramInt2)
      return 1;
    return 0;
  }

  public final strictfp void a(int paramInt)
  {
    int i = 0;
    if (this.d);
    while ((c() <= 100) || (paramInt + this.e <= 30) || (this.d))
      return;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    for (int j = 0; j < c(); j++)
    {
      y localy1 = b(j);
      y localy2 = c(j);
      ArrayList localArrayList3 = new ArrayList();
      int n = a(localy1, localy2, true, localArrayList3);
      this.c = Math.min(this.c, n);
      Iterator localIterator = localArrayList3.iterator();
      while (localIterator.hasNext())
      {
        localArrayList1.add(Long.valueOf(((j)localIterator.next()).d()));
        localArrayList2.add(Integer.valueOf(j));
      }
    }
    this.a = new long[localArrayList1.size()];
    this.b = new int[localArrayList2.size()];
    for (int k = 0; k < this.a.length; k++)
    {
      this.a[k] = ((Long)localArrayList1.get(k)).longValue();
      this.b[k] = ((Integer)localArrayList2.get(k)).intValue();
    }
    Integer[] arrayOfInteger = new Integer[this.a.length];
    for (int m = 0; m < arrayOfInteger.length; m++)
      arrayOfInteger[m] = Integer.valueOf(m);
    Arrays.sort(arrayOfInteger, new m(this));
    long[] arrayOfLong = new long[this.a.length];
    int[] arrayOfInt = new int[this.b.length];
    while (i < arrayOfInteger.length)
    {
      arrayOfLong[i] = this.a[arrayOfInteger[i].intValue()];
      arrayOfInt[i] = this.b[arrayOfInteger[i].intValue()];
      i++;
    }
    this.a = arrayOfLong;
    this.b = arrayOfInt;
    this.d = true;
  }

  protected final strictfp void a(y paramy1, y paramy2, List<Integer> paramList)
  {
    an.b(this.d);
    ArrayList localArrayList = new ArrayList();
    a(paramy1, paramy2, false, localArrayList);
    HashSet localHashSet = new HashSet();
    a(localArrayList, localHashSet);
    a(paramy1, paramy2, localArrayList, localHashSet);
    paramList.clear();
    paramList.addAll(localHashSet);
  }

  public final strictfp boolean a()
  {
    return this.d;
  }

  public abstract y b(int paramInt);

  protected final strictfp void b()
  {
    this.e = (1 + this.e);
  }

  public abstract int c();

  public abstract y c(int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.l
 * JD-Core Version:    0.6.2
 */