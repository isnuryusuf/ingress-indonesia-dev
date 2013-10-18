package a.a.a.a.b;

import a.a.a.a.c.l;
import java.util.Map.Entry;

final class am extends a.a.a.a.c.e<ae>
  implements af
{
  private am(ag paramag)
  {
  }

  public final l<ae> a()
  {
    return new ai(this.a, (byte)0);
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
        return this.a.c[i] == ((Long)localEntry.getValue()).longValue();
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
        this.a.a(localEntry.getKey());
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
 * Qualified Name:     a.a.a.a.b.am
 * JD-Core Version:    0.6.2
 */