package a.a.a.a.b;

import a.a.a.a.c.f;
import a.a.a.a.c.i;
import a.a.a.a.c.q;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map.Entry;

final class ay extends f<bj<V>>
{
  ay(ax paramax)
  {
  }

  public final i<bj<V>> b()
  {
    return new bb(this.a);
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final Comparator<? super bj<V>> comparator()
  {
    return this.a.i.g().comparator();
  }

  public final boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    at localat = this.a.i.c(((Long)localEntry.getKey()).longValue());
    return (localat != null) && (this.a.c(localat.a)) && (localEntry.equals(localat));
  }

  public final boolean isEmpty()
  {
    return !new bc(this.a).hasNext();
  }

  public final boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    at localat = this.a.i.c(((Long)localEntry.getKey()).longValue());
    if ((localat != null) && (this.a.c(localat.a)))
      this.a.a(localat.a);
    return localat != null;
  }

  public final int size()
  {
    int i = 0;
    i locali = b();
    while (locali.hasNext())
    {
      i++;
      locali.next();
    }
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.ay
 * JD-Core Version:    0.6.2
 */