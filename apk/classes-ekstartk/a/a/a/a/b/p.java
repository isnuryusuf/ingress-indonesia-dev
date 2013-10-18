package a.a.a.a.b;

import a.a.a.a.c.i;
import java.util.Map.Entry;

public final class p<V> extends s
{
  protected final i<Map.Entry<Long, V>> a;

  public p(i<Map.Entry<Long, V>> parami)
  {
    this.a = parami;
  }

  public final long a()
  {
    return ((Long)((Map.Entry)this.a.next()).getKey()).longValue();
  }

  public final long b()
  {
    return ((Long)((Map.Entry)this.a.previous()).getKey()).longValue();
  }

  public final boolean hasNext()
  {
    return this.a.hasNext();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.p
 * JD-Core Version:    0.6.2
 */