package com.google.a.c;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class kg<R, C, V> extends iu<R, C, V>
{
  private final dh<R, Map<C, V>> a;
  private final dh<C, Map<R, V>> b;
  private final int[] c;
  private final int[] d;

  kg(dc<ks<R, C, V>> paramdc, du<R> paramdu, du<C> paramdu1)
  {
    HashMap localHashMap = hc.b();
    LinkedHashMap localLinkedHashMap1 = hc.c();
    Iterator localIterator1 = paramdu.iterator();
    while (localIterator1.hasNext())
    {
      Object localObject5 = localIterator1.next();
      localHashMap.put(localObject5, Integer.valueOf(localLinkedHashMap1.size()));
      localLinkedHashMap1.put(localObject5, new LinkedHashMap());
    }
    LinkedHashMap localLinkedHashMap2 = hc.c();
    Iterator localIterator2 = paramdu1.iterator();
    while (localIterator2.hasNext())
      localLinkedHashMap2.put(localIterator2.next(), new LinkedHashMap());
    int[] arrayOfInt1 = new int[paramdc.size()];
    int[] arrayOfInt2 = new int[paramdc.size()];
    for (int i = 0; i < paramdc.size(); i++)
    {
      ks localks = (ks)paramdc.get(i);
      Object localObject1 = localks.a();
      Object localObject2 = localks.b();
      Object localObject3 = localks.c();
      arrayOfInt1[i] = ((Integer)localHashMap.get(localObject1)).intValue();
      Map localMap = (Map)localLinkedHashMap1.get(localObject1);
      arrayOfInt2[i] = localMap.size();
      Object localObject4 = localMap.put(localObject2, localObject3);
      if (localObject4 != null)
        throw new IllegalArgumentException("Duplicate value for row=" + localObject1 + ", column=" + localObject2 + ": " + localObject3 + ", " + localObject4);
      ((Map)localLinkedHashMap2.get(localObject2)).put(localObject1, localObject3);
    }
    this.c = arrayOfInt1;
    this.d = arrayOfInt2;
    di localdi1 = dh.j();
    Iterator localIterator3 = localLinkedHashMap1.entrySet().iterator();
    while (localIterator3.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator3.next();
      localdi1.a(localEntry2.getKey(), dh.a((Map)localEntry2.getValue()));
    }
    this.a = localdi1.a();
    di localdi2 = dh.j();
    Iterator localIterator4 = localLinkedHashMap2.entrySet().iterator();
    while (localIterator4.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator4.next();
      localdi2.a(localEntry1.getKey(), dh.a((Map)localEntry1.getValue()));
    }
    this.b = localdi2.a();
  }

  final ks<R, C, V> a(int paramInt)
  {
    int i = this.c[paramInt];
    Map.Entry localEntry1 = (Map.Entry)this.a.f().a().get(i);
    dh localdh = (dh)localEntry1.getValue();
    int j = this.d[paramInt];
    Map.Entry localEntry2 = (Map.Entry)localdh.f().a().get(j);
    return b(localEntry1.getKey(), localEntry2.getKey(), localEntry2.getValue());
  }

  final V b(int paramInt)
  {
    int i = this.c[paramInt];
    dh localdh = (dh)this.a.d_().a().get(i);
    int j = this.d[paramInt];
    return localdh.d_().a().get(j);
  }

  public final dh<C, Map<R, V>> j()
  {
    return this.b;
  }

  public final dh<R, Map<C, V>> k()
  {
    return this.a;
  }

  public final int l()
  {
    return this.c.length;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kg
 * JD-Core Version:    0.6.2
 */