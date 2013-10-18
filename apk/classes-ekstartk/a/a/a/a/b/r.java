package a.a.a.a.b;

import a.a.a.a.c.c;
import a.a.a.a.c.i;
import java.util.Map.Entry;

public final class r<V> extends c<V>
{
  protected final i<Map.Entry<Long, V>> a;

  public r(i<Map.Entry<Long, V>> parami)
  {
    this.a = parami;
  }

  public final boolean hasNext()
  {
    return this.a.hasNext();
  }

  public final V next()
  {
    return ((Map.Entry)this.a.next()).getValue();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.r
 * JD-Core Version:    0.6.2
 */