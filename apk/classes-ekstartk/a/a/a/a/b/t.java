package a.a.a.a.b;

import a.a.a.a.c.m;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

public abstract class t extends AbstractCollection<Long>
  implements cb
{
  private boolean a(Long paramLong)
  {
    return d(paramLong.longValue());
  }

  public abstract ce a();

  public boolean a(long paramLong)
  {
    ce localce = a();
    while (localce.hasNext())
      if (paramLong == localce.a())
        return true;
    return false;
  }

  public boolean addAll(Collection<? extends Long> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    int i = paramCollection.size();
    boolean bool = false;
    while (true)
    {
      int j = i - 1;
      if (i != 0)
      {
        if (a((Long)localIterator.next()))
        {
          bool = true;
          i = j;
        }
      }
      else
      {
        return bool;
        i = j;
      }
    }
  }

  public boolean contains(Object paramObject)
  {
    return a(((Long)paramObject).longValue());
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    int i = paramCollection.size();
    Iterator localIterator = paramCollection.iterator();
    while (true)
    {
      int j = i - 1;
      if (i != 0)
      {
        if (!contains(localIterator.next()))
          return false;
      }
      else
        return true;
      i = j;
    }
  }

  public boolean d(long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public boolean e(long paramLong)
  {
    ce localce = a();
    while (localce.hasNext())
      if (paramLong == localce.a())
      {
        localce.remove();
        return true;
      }
    return false;
  }

  public final long[] e()
  {
    return f();
  }

  public long[] f()
  {
    long[] arrayOfLong = new long[size()];
    cf.a(a(), arrayOfLong);
    return arrayOfLong;
  }

  public boolean isEmpty()
  {
    return size() == 0;
  }

  public boolean remove(Object paramObject)
  {
    return e(((Long)paramObject).longValue());
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    int i = paramCollection.size();
    Iterator localIterator = paramCollection.iterator();
    boolean bool = false;
    while (true)
    {
      int j = i - 1;
      if (i != 0)
      {
        if (remove(localIterator.next()))
        {
          bool = true;
          i = j;
        }
      }
      else
      {
        return bool;
        i = j;
      }
    }
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    int i = size();
    ce localce = a();
    boolean bool = false;
    while (true)
    {
      int j = i - 1;
      if (i != 0)
      {
        if (!paramCollection.contains(localce.next()))
        {
          localce.remove();
          bool = true;
          i = j;
        }
      }
      else
      {
        return bool;
        i = j;
      }
    }
  }

  public Object[] toArray()
  {
    Object[] arrayOfObject = new Object[size()];
    m.a(a(), arrayOfObject);
    return arrayOfObject;
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length < size());
    for (Object localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), size()); ; localObject = paramArrayOfT)
    {
      m.a(a(), (Object[])localObject);
      return localObject;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    ce localce = a();
    int i = size();
    int j = 1;
    localStringBuilder.append("{");
    int k = i - 1;
    if (i != 0)
    {
      if (j != 0)
        j = 0;
      while (true)
      {
        localStringBuilder.append(String.valueOf(localce.a()));
        i = k;
        break;
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.t
 * JD-Core Version:    0.6.2
 */