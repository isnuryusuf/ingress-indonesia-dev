package com.google.a.c;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ki
  implements Iterator<ks<R, C, V>>
{
  final Iterator<Map.Entry<R, Map<C, V>>> a = this.d.a.entrySet().iterator();
  Map.Entry<R, Map<C, V>> b;
  Iterator<Map.Entry<C, V>> c = eg.b();

  private ki(kh paramkh)
  {
  }

  public final boolean hasNext()
  {
    return (this.a.hasNext()) || (this.c.hasNext());
  }

  public final void remove()
  {
    this.c.remove();
    if (((Map)this.b.getValue()).isEmpty())
      this.a.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ki
 * JD-Core Version:    0.6.2
 */