package a.a.a.a.b;

import a.a.a.a.c.l;
import java.util.Map.Entry;

final class bs extends a.a.a.a.c.e<bj<V>>
  implements bk<V>
{
  private bs(bl parambl)
  {
  }

  public final l<bj<V>> a()
  {
    return new bn(this.a, (byte)0);
  }

  public final l<bj<V>> b()
  {
    return new bo(this.a, (byte)0);
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    long l = ((Long)localEntry.getKey()).longValue();
    for (int i = (int)a.a.a.a.e.a(l) & this.a.h; this.a.d[i] != 0; i = i + 1 & this.a.h)
      if (this.a.b[i] == l)
      {
        if (this.a.c[i] == null)
          return localEntry.getValue() == null;
        return this.a.c[i].equals(localEntry.getValue());
      }
    return false;
  }

  public final boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    long l = ((Long)localEntry.getKey()).longValue();
    for (int i = (int)a.a.a.a.e.a(l) & this.a.h; this.a.d[i] != 0; i = i + 1 & this.a.h)
      if (this.a.b[i] == l)
      {
        this.a.remove(localEntry.getKey());
        return true;
      }
    return false;
  }

  public final int size()
  {
    return this.a.i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.bs
 * JD-Core Version:    0.6.2
 */