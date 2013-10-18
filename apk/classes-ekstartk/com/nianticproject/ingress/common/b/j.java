package com.nianticproject.ingress.common.b;

import com.nianticproject.ingress.common.x.i;
import java.util.concurrent.ConcurrentHashMap;

public final class j<T>
{
  i a;
  private final ConcurrentHashMap<String, j<T>.l> b = new ConcurrentHashMap(100, 0.8F, 1);

  public j()
  {
    this(i.a());
  }

  private j(i parami)
  {
    this.a = parami;
  }

  public final T a(String paramString)
  {
    l locall = (l)this.b.get(paramString);
    if ((locall == null) || (locall.a == null))
      return null;
    return locall.a;
  }

  public final void a(String paramString, k<T> paramk)
  {
    l locall1 = new l(this, (byte)0);
    l locall2 = (l)this.b.putIfAbsent(paramString, locall1);
    if (locall2 != null);
    while (true)
    {
      locall2.a(paramString, paramk);
      return;
      locall2 = locall1;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.b.j
 * JD-Core Version:    0.6.2
 */