package com.google.a.c;

import com.google.a.a.an;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;

final class aw<R, C, V> extends iu<R, C, V>
{
  private final dh<R, Integer> a;
  private final dh<C, Integer> b;
  private final dh<R, Map<C, V>> c;
  private final dh<C, Map<R, V>> d;
  private final int[] e;
  private final int[] f;
  private final V[][] g;
  private final int[] h;
  private final int[] i;

  aw(dc<ks<R, C, V>> paramdc, du<R> paramdu, du<C> paramdu1)
  {
    this.g = ((Object[][])Array.newInstance(Object.class, new int[] { paramdu.size(), paramdu1.size() }));
    this.a = a(paramdu);
    this.b = a(paramdu1);
    this.e = new int[this.a.size()];
    this.f = new int[this.b.size()];
    int[] arrayOfInt1 = new int[paramdc.size()];
    int[] arrayOfInt2 = new int[paramdc.size()];
    int j = 0;
    if (j < paramdc.size())
    {
      ks localks = (ks)paramdc.get(j);
      Object localObject1 = localks.a();
      Object localObject2 = localks.b();
      int k = ((Integer)this.a.get(localObject1)).intValue();
      int m = ((Integer)this.b.get(localObject2)).intValue();
      if (this.g[k][m] == null);
      for (boolean bool = true; ; bool = false)
      {
        an.a(bool, "duplicate key: (%s, %s)", new Object[] { localObject1, localObject2 });
        this.g[k][m] = localks.c();
        int[] arrayOfInt3 = this.e;
        arrayOfInt3[k] = (1 + arrayOfInt3[k]);
        int[] arrayOfInt4 = this.f;
        arrayOfInt4[m] = (1 + arrayOfInt4[m]);
        arrayOfInt1[j] = k;
        arrayOfInt2[j] = m;
        j++;
        break;
      }
    }
    this.h = arrayOfInt1;
    this.i = arrayOfInt2;
    this.c = new bd(this, (byte)0);
    this.d = new ay(this, (byte)0);
  }

  private static <E> dh<E, Integer> a(du<E> paramdu)
  {
    di localdi = dh.j();
    int j = 0;
    Iterator localIterator = paramdu.iterator();
    while (localIterator.hasNext())
    {
      localdi.a(localIterator.next(), Integer.valueOf(j));
      j++;
    }
    return localdi.a();
  }

  final ks<R, C, V> a(int paramInt)
  {
    int j = this.h[paramInt];
    int k = this.i[paramInt];
    return b(k().g().a().get(j), j().g().a().get(k), this.g[j][k]);
  }

  final V b(int paramInt)
  {
    return this.g[this.h[paramInt]][this.i[paramInt]];
  }

  public final V b(Object paramObject1, Object paramObject2)
  {
    Integer localInteger1 = (Integer)this.a.get(paramObject1);
    Integer localInteger2 = (Integer)this.b.get(paramObject2);
    if ((localInteger1 == null) || (localInteger2 == null))
      return null;
    return this.g[localInteger1.intValue()][localInteger2.intValue()];
  }

  public final dh<C, Map<R, V>> j()
  {
    return this.d;
  }

  public final dh<R, Map<C, V>> k()
  {
    return this.c;
  }

  public final int l()
  {
    return this.h.length;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.aw
 * JD-Core Version:    0.6.2
 */