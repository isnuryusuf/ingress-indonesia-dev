package a.a.a.a.c;

import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

public abstract class b<K> extends AbstractCollection<K>
  implements j<K>
{
  public abstract l<K> a();

  public boolean add(K paramK)
  {
    throw new UnsupportedOperationException();
  }

  public boolean addAll(Collection<? extends K> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    int i = paramCollection.size();
    boolean bool = false;
    while (true)
    {
      int j = i - 1;
      if (i != 0)
      {
        if (add(localIterator.next()))
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

  public boolean isEmpty()
  {
    return size() == 0;
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
    l locall = a();
    boolean bool = false;
    while (true)
    {
      int j = i - 1;
      if (i != 0)
      {
        if (!paramCollection.contains(locall.next()))
        {
          locall.remove();
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
    l locall = a();
    int i = size();
    int j = 1;
    localStringBuilder.append("{");
    while (true)
    {
      int k = i - 1;
      if (i == 0)
        break;
      if (j != 0)
        j = 0;
      Object localObject;
      while (true)
      {
        localObject = locall.next();
        if (this != localObject)
          break label82;
        localStringBuilder.append("(this collection)");
        i = k;
        break;
        localStringBuilder.append(", ");
      }
      label82: localStringBuilder.append(String.valueOf(localObject));
      i = k;
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.c.b
 * JD-Core Version:    0.6.2
 */