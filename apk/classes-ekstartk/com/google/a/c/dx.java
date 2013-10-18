package com.google.a.c;

import com.google.a.a.an;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.NavigableMap;

public abstract class dx<K, V> extends dy<K, V>
  implements NavigableMap<K, V>
{
  private static final Comparator<Comparable> a = ih.b();
  private static final dx<Comparable, Object> b = new bj(a);
  private transient dx<K, V> c;

  dx()
  {
  }

  dx(dx<K, V> paramdx)
  {
    this.c = paramdx;
  }

  static <K, V> dx<K, V> a(dz<K> paramdz, dc<V> paramdc)
  {
    if (paramdz.isEmpty())
      return a(paramdz.comparator());
    return new iq((it)paramdz, paramdc);
  }

  public static <K extends Comparable<? super K>, V> dx<K, V> a(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    int i = 0;
    ih localih = ih.b();
    Map.Entry[] arrayOfEntry = new Map.Entry[2];
    arrayOfEntry[0] = c(paramK1, paramV1);
    arrayOfEntry[1] = c(paramK2, paramV2);
    for (int j = 0; j < 2; j++)
    {
      Map.Entry localEntry2 = arrayOfEntry[j];
      arrayOfEntry[j] = c(localEntry2.getKey(), localEntry2.getValue());
    }
    Arrays.sort(arrayOfEntry, 0, 2, ih.a(localih).c());
    int k = 1;
    if (k < 2)
    {
      if (localih.compare(arrayOfEntry[0].getKey(), arrayOfEntry[1].getKey()) != 0);
      for (boolean bool = true; ; bool = false)
      {
        a(bool, "key", arrayOfEntry[0], arrayOfEntry[1]);
        k++;
        break;
      }
    }
    de localde1 = dc.h();
    de localde2 = dc.h();
    while (i < 2)
    {
      Map.Entry localEntry1 = arrayOfEntry[i];
      localde1.c(localEntry1.getKey());
      localde2.c(localEntry1.getValue());
      i++;
    }
    return new iq(new it(localde1.a(), localih), localde2.a());
  }

  private dx<K, V> a(K paramK1, boolean paramBoolean1, K paramK2, boolean paramBoolean2)
  {
    an.a(paramK1);
    an.a(paramK2);
    if (comparator().compare(paramK1, paramK2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "expected fromKey <= toKey but %s > %s", new Object[] { paramK1, paramK2 });
      return a(paramK2, paramBoolean2).b(paramK1, paramBoolean1);
    }
  }

  static <K, V> dx<K, V> a(Comparator<? super K> paramComparator)
  {
    if (ih.b().equals(paramComparator))
      return b;
    return new bj(paramComparator);
  }

  public abstract dx<K, V> a(K paramK, boolean paramBoolean);

  public abstract dz<K> a();

  public abstract dx<K, V> b(K paramK, boolean paramBoolean);

  boolean b()
  {
    return (a().e()) || (d_().e());
  }

  public Map.Entry<K, V> ceilingEntry(K paramK)
  {
    return b(paramK, true).firstEntry();
  }

  public K ceilingKey(K paramK)
  {
    return hc.a(ceilingEntry(paramK));
  }

  public Comparator<? super K> comparator()
  {
    return a().comparator();
  }

  public boolean containsValue(Object paramObject)
  {
    return d_().contains(paramObject);
  }

  public abstract ct<V> d_();

  public du<Map.Entry<K, V>> f()
  {
    return super.f();
  }

  public Map.Entry<K, V> firstEntry()
  {
    if (isEmpty())
      return null;
    return (Map.Entry)f().a().get(0);
  }

  public K firstKey()
  {
    return a().first();
  }

  public Map.Entry<K, V> floorEntry(K paramK)
  {
    return a(paramK, true).lastEntry();
  }

  public K floorKey(K paramK)
  {
    return hc.a(floorEntry(paramK));
  }

  abstract dx<K, V> h();

  public Map.Entry<K, V> higherEntry(K paramK)
  {
    return b(paramK, false).firstEntry();
  }

  public K higherKey(K paramK)
  {
    return hc.a(higherEntry(paramK));
  }

  public Map.Entry<K, V> lastEntry()
  {
    if (isEmpty())
      return null;
    return (Map.Entry)f().a().get(-1 + size());
  }

  public K lastKey()
  {
    return a().last();
  }

  public Map.Entry<K, V> lowerEntry(K paramK)
  {
    return a(paramK, false).lastEntry();
  }

  public K lowerKey(K paramK)
  {
    return hc.a(lowerEntry(paramK));
  }

  @Deprecated
  public final Map.Entry<K, V> pollFirstEntry()
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final Map.Entry<K, V> pollLastEntry()
  {
    throw new UnsupportedOperationException();
  }

  public int size()
  {
    return d_().size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dx
 * JD-Core Version:    0.6.2
 */