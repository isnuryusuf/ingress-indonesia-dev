package a.a.a.a.c;

import java.util.Set;

public abstract class e<K> extends b<K>
  implements p<K>, Cloneable
{
  public abstract l<K> a();

  public boolean equals(Object paramObject)
  {
    boolean bool2;
    if (paramObject == this)
      bool2 = true;
    Set localSet;
    int i;
    int j;
    do
    {
      boolean bool1;
      do
      {
        return bool2;
        bool1 = paramObject instanceof Set;
        bool2 = false;
      }
      while (!bool1);
      localSet = (Set)paramObject;
      i = localSet.size();
      j = size();
      bool2 = false;
    }
    while (i != j);
    return containsAll(localSet);
  }

  public int hashCode()
  {
    int i = size();
    l locall = a();
    int j = 0;
    int k = i - 1;
    if (i != 0)
    {
      Object localObject = locall.next();
      if (localObject == null);
      for (int m = 0; ; m = localObject.hashCode())
      {
        j = m + j;
        i = k;
        break;
      }
    }
    return j;
  }

  public boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.c.e
 * JD-Core Version:    0.6.2
 */