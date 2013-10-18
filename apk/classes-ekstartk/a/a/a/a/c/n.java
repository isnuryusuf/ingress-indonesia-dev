package a.a.a.a.c;

import java.io.Serializable;
import java.util.NoSuchElementException;

public final class n<K> extends d<K>
  implements Serializable, Cloneable
{
  public final Object clone()
  {
    return m.a;
  }

  public final boolean hasNext()
  {
    return false;
  }

  public final boolean hasPrevious()
  {
    return false;
  }

  public final K next()
  {
    throw new NoSuchElementException();
  }

  public final int nextIndex()
  {
    return 0;
  }

  public final K previous()
  {
    throw new NoSuchElementException();
  }

  public final int previousIndex()
  {
    return -1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.c.n
 * JD-Core Version:    0.6.2
 */