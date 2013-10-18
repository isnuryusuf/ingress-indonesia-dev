package a.a.a.a.b;

import a.a.a.a.e;
import java.util.Map.Entry;

public final class m<V>
  implements bj<V>
{
  protected long a = 0L;
  protected V b = null;

  public final long a()
  {
    return this.a;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    if (this.a == ((Long)localEntry.getKey()).longValue())
      if (this.b == null)
      {
        if (localEntry.getValue() != null);
      }
      else
        while (this.b.equals(localEntry.getValue()))
          return true;
    return false;
  }

  public final V getValue()
  {
    return this.b;
  }

  public final int hashCode()
  {
    int i = e.b(this.a);
    if (this.b == null);
    for (int j = 0; ; j = this.b.hashCode())
      return j ^ i;
  }

  public final V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public final String toString()
  {
    return this.a + "->" + this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.m
 * JD-Core Version:    0.6.2
 */