package com.google.a.c;

import com.google.a.a.an;
import com.google.a.a.ao;
import com.google.a.a.ap;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;

public final class jc
{
  static int a(Set<?> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject != null);
      for (int j = localObject.hashCode(); ; j = 0)
      {
        i = 0xFFFFFFFF ^ (0xFFFFFFFF ^ i + j);
        break;
      }
    }
    return i;
  }

  public static <E> ji<E> a(Set<E> paramSet, Set<?> paramSet1)
  {
    an.a(paramSet, "set1");
    an.a(paramSet1, "set2");
    return new jd(paramSet, ap.a(ap.a(paramSet1)), paramSet1);
  }

  public static <E> HashSet<E> a()
  {
    return new HashSet();
  }

  public static <E> HashSet<E> a(int paramInt)
  {
    return new HashSet(hc.b(paramInt));
  }

  public static <E> HashSet<E> a(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return new HashSet(as.a(paramIterable));
    return a(paramIterable.iterator());
  }

  public static <E> HashSet<E> a(Iterator<? extends E> paramIterator)
  {
    HashSet localHashSet = new HashSet();
    eg.a(localHashSet, paramIterator);
    return localHashSet;
  }

  public static <E> HashSet<E> a(E[] paramArrayOfE)
  {
    HashSet localHashSet = a(paramArrayOfE.length);
    Collections.addAll(localHashSet, paramArrayOfE);
    return localHashSet;
  }

  public static <E> NavigableSet<E> a(NavigableSet<E> paramNavigableSet, ao<? super E> paramao)
  {
    if ((paramNavigableSet instanceof jf))
    {
      jf localjf = (jf)paramNavigableSet;
      ao localao = ap.a(localjf.b, paramao);
      return new je((NavigableSet)localjf.a, localao);
    }
    return new je((NavigableSet)an.a(paramNavigableSet), (ao)an.a(paramao));
  }

  public static <E> Set<E> a(Set<E> paramSet, ao<? super E> paramao)
  {
    if ((paramSet instanceof SortedSet))
    {
      SortedSet localSortedSet = (SortedSet)paramSet;
      if ((localSortedSet instanceof NavigableSet))
        return a((NavigableSet)localSortedSet, paramao);
      if ((localSortedSet instanceof jf))
      {
        jf localjf2 = (jf)localSortedSet;
        ao localao2 = ap.a(localjf2.b, paramao);
        return new jg((SortedSet)localjf2.a, localao2);
      }
      return new jg((SortedSet)an.a(localSortedSet), (ao)an.a(paramao));
    }
    if ((paramSet instanceof jf))
    {
      jf localjf1 = (jf)paramSet;
      ao localao1 = ap.a(localjf1.b, paramao);
      return new jf((Set)localjf1.a, localao1);
    }
    return new jf((Set)an.a(paramSet), (ao)an.a(paramao));
  }

  static boolean a(Set<?> paramSet, Object paramObject)
  {
    if (paramSet == paramObject);
    while (true)
    {
      return true;
      if ((paramObject instanceof Set))
      {
        Set localSet = (Set)paramObject;
        try
        {
          if (paramSet.size() == localSet.size())
          {
            boolean bool = paramSet.containsAll(localSet);
            if (bool);
          }
          else
          {
            return false;
          }
        }
        catch (NullPointerException localNullPointerException)
        {
          return false;
        }
        catch (ClassCastException localClassCastException)
        {
          return false;
        }
      }
    }
    return false;
  }

  static boolean a(Set<?> paramSet, Collection<?> paramCollection)
  {
    an.a(paramCollection);
    if ((paramCollection instanceof ht))
      paramCollection = ((ht)paramCollection).d();
    boolean bool;
    if (((paramCollection instanceof Set)) && (paramCollection.size() > paramSet.size()))
      bool = eg.a(paramSet.iterator(), paramCollection);
    while (true)
    {
      return bool;
      Iterator localIterator = paramCollection.iterator();
      bool = false;
      while (localIterator.hasNext())
        bool |= paramSet.remove(localIterator.next());
    }
  }

  public static <E> Set<E> b()
  {
    return Collections.newSetFromMap(new ConcurrentHashMap());
  }

  public static <E extends Comparable> TreeSet<E> b(Iterable<? extends E> paramIterable)
  {
    TreeSet localTreeSet = new TreeSet();
    ee.a(localTreeSet, paramIterable);
    return localTreeSet;
  }

  public static <E> LinkedHashSet<E> c()
  {
    return new LinkedHashSet();
  }

  public static <E extends Comparable> TreeSet<E> d()
  {
    return new TreeSet();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jc
 * JD-Core Version:    0.6.2
 */