package a.a.a.a.b;

import a.a.a.a.e;
import java.util.Set;

public abstract class aa extends t
  implements cl, Cloneable
{
  public abstract ce a();

  public final boolean e(long paramLong)
  {
    return f(paramLong);
  }

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

  public boolean f(long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public int hashCode()
  {
    int i = size();
    ce localce = a();
    int j = 0;
    while (true)
    {
      int k = i - 1;
      if (i == 0)
        break;
      j += e.b(localce.a());
      i = k;
    }
    return j;
  }

  public boolean remove(Object paramObject)
  {
    return f(((Long)paramObject).longValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.aa
 * JD-Core Version:    0.6.2
 */