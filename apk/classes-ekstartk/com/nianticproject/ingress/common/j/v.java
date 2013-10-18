package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.w.ab;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class v
  implements Disposable
{
  private final ab<FrameBuffer> a = new w(this);
  private final Map<u, x> b = hc.b();

  public final d a(u paramu)
  {
    x localx = (x)this.b.get(paramu);
    if (localx == null)
    {
      localx = new x(this, paramu);
      this.b.put(paramu, localx);
    }
    localx.e();
    return localx;
  }

  public final void a()
  {
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
      ((x)localIterator.next()).g();
  }

  public final void dispose()
  {
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      x localx = (x)((Map.Entry)localIterator.next()).getValue();
      localIterator.remove();
      localx.f();
    }
    this.a.c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.v
 * JD-Core Version:    0.6.2
 */