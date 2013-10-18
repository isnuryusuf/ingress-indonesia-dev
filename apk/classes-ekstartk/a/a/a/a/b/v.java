package a.a.a.a.b;

import a.a.a.a.e;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public abstract class v extends t
  implements ch
{
  public final int a(List<? extends Long> paramList)
  {
    if (paramList == this)
      return 0;
    if ((paramList instanceof ch))
    {
      ci localci2 = d(0);
      ci localci3 = ((ch)paramList).b();
      while ((localci2.hasNext()) && (localci3.hasNext()))
      {
        long l1 = localci2.a();
        long l2 = localci3.a();
        int j;
        if (l1 < l2)
          j = -1;
        while (j != 0)
        {
          return j;
          if (l1 == l2)
            j = 0;
          else
            j = 1;
        }
      }
      if (localci3.hasNext())
        return -1;
      if (localci2.hasNext())
        return 1;
      return 0;
    }
    ci localci1 = d(0);
    ListIterator localListIterator = paramList.listIterator();
    while ((localci1.hasNext()) && (localListIterator.hasNext()))
    {
      int i = ((Comparable)localci1.next()).compareTo(localListIterator.next());
      if (i != 0)
        return i;
    }
    if (localListIterator.hasNext())
      return -1;
    if (localci1.hasNext())
      return 1;
    return 0;
  }

  public ch a(int paramInt1, int paramInt2)
  {
    a(paramInt1);
    a(paramInt2);
    if (paramInt1 > paramInt2)
      throw new IndexOutOfBoundsException("Start index (" + paramInt1 + ") is greater than end index (" + paramInt2 + ")");
    return new x(this, paramInt1, paramInt2);
  }

  protected final void a(int paramInt)
  {
    if (paramInt < 0)
      throw new IndexOutOfBoundsException("Index (" + paramInt + ") is negative");
    if (paramInt > size())
      throw new IndexOutOfBoundsException("Index (" + paramInt + ") is greater than list size (" + size() + ")");
  }

  public void a(int paramInt, long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public final void a(int paramInt, Long paramLong)
  {
    a(paramInt, paramLong.longValue());
  }

  public final boolean a(long paramLong)
  {
    return b(paramLong) >= 0;
  }

  public boolean addAll(int paramInt, Collection<? extends Long> paramCollection)
  {
    a(paramInt);
    int i = paramCollection.size();
    if (i == 0)
      return false;
    Iterator localIterator = paramCollection.iterator();
    while (true)
    {
      int j = i - 1;
      if (i == 0)
        break;
      int k = paramInt + 1;
      a(paramInt, (Long)localIterator.next());
      i = j;
      paramInt = k;
    }
    return true;
  }

  public boolean addAll(Collection<? extends Long> paramCollection)
  {
    return addAll(size(), paramCollection);
  }

  public int b(long paramLong)
  {
    ci localci = d(0);
    while (localci.hasNext())
      if (paramLong == localci.a())
        return localci.previousIndex();
    return -1;
  }

  public long b(int paramInt, long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public final ci b()
  {
    return d(0);
  }

  public final Long b(int paramInt, Long paramLong)
  {
    return Long.valueOf(b(paramInt, paramLong.longValue()));
  }

  protected final void b(int paramInt)
  {
    if (paramInt < 0)
      throw new IndexOutOfBoundsException("Index (" + paramInt + ") is negative");
    if (paramInt >= size())
      throw new IndexOutOfBoundsException("Index (" + paramInt + ") is greater than or equal to list size (" + size() + ")");
  }

  public void b(int paramInt1, int paramInt2)
  {
    a(paramInt2);
    ci localci = d(paramInt1);
    int i = paramInt2 - paramInt1;
    if (i < 0)
      throw new IllegalArgumentException("Start index (" + paramInt1 + ") is greater than end index (" + paramInt2 + ")");
    while (true)
    {
      int j = i - 1;
      if (i == 0)
        break;
      localci.a();
      localci.remove();
      i = j;
    }
  }

  public int c(long paramLong)
  {
    ci localci = d(size());
    while (localci.hasPrevious())
      if (paramLong == localci.b())
        return localci.nextIndex();
    return -1;
  }

  public long c(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public ci d(int paramInt)
  {
    return new w(this, paramInt);
  }

  public boolean d(long paramLong)
  {
    a(size(), paramLong);
    return true;
  }

  public final Long e(int paramInt)
  {
    return Long.valueOf(g(paramInt));
  }

  public boolean e(long paramLong)
  {
    int i = b(paramLong);
    if (i == -1)
      return false;
    c(i);
    return true;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if (!(paramObject instanceof List))
      return false;
    List localList = (List)paramObject;
    int i = size();
    if (i != localList.size())
      return false;
    ci localci = d(0);
    ListIterator localListIterator = localList.listIterator();
    while (true)
    {
      int j = i - 1;
      if (i == 0)
        break;
      Object localObject1 = localci.next();
      Object localObject2 = localListIterator.next();
      boolean bool;
      if (localObject1 == null)
        if (localObject2 == null)
          bool = true;
      while (!bool)
      {
        return false;
        bool = false;
        continue;
        bool = localObject1.equals(localObject2);
      }
      i = j;
    }
  }

  public final Long f(int paramInt)
  {
    return Long.valueOf(c(paramInt));
  }

  public int hashCode()
  {
    ci localci = d(0);
    int i = size();
    int j = 1;
    while (true)
    {
      int k = i - 1;
      if (i == 0)
        break;
      long l = localci.a();
      j = j * 31 + e.b(l);
      i = k;
    }
    return j;
  }

  public int indexOf(Object paramObject)
  {
    return b(((Long)paramObject).longValue());
  }

  public int lastIndexOf(Object paramObject)
  {
    return c(((Long)paramObject).longValue());
  }

  public boolean remove(Object paramObject)
  {
    return e(((Long)paramObject).longValue());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    ci localci = d(0);
    int i = size();
    int j = 1;
    localStringBuilder.append("[");
    int k = i - 1;
    if (i != 0)
    {
      if (j != 0)
        j = 0;
      while (true)
      {
        localStringBuilder.append(String.valueOf(localci.a()));
        i = k;
        break;
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.v
 * JD-Core Version:    0.6.2
 */