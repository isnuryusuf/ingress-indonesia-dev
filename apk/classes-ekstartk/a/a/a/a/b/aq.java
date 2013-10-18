package a.a.a.a.b;

import a.a.a.a.c.f;
import a.a.a.a.c.i;
import java.util.Comparator;
import java.util.Map.Entry;

final class aq extends f<bj<V>>
{
  final Comparator<? super bj<V>> a = new ar(this);

  aq(ap paramap)
  {
  }

  public final i<bj<V>> b()
  {
    return new au(this.b);
  }

  public final void clear()
  {
    this.b.clear();
  }

  public final Comparator<? super bj<V>> comparator()
  {
    return this.a;
  }

  public final boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    return localEntry.equals(this.b.c(((Long)localEntry.getKey()).longValue()));
  }

  public final boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    at localat = this.b.c(((Long)localEntry.getKey()).longValue());
    if (localat != null)
      this.b.a(localat.a);
    return localat != null;
  }

  public final int size()
  {
    return this.b.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.aq
 * JD-Core Version:    0.6.2
 */