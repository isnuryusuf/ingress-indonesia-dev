package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Vector2;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.q.a;
import com.nianticproject.ingress.common.q.b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class fp
{
  private final Set<WeakReference<fq>> a = jc.a();
  private final List<WeakReference<fr>> b = eq.a();
  private u c = null;
  private double d;
  private double e;
  private int f;
  private int g;

  public final u a()
  {
    return this.c;
  }

  public final u a(Vector2 paramVector2)
  {
    an.a(this.c);
    an.a(paramVector2);
    int i = this.f - (int)(paramVector2.x * this.e);
    return u.a(b.c(this.g - (int)(paramVector2.y * this.e)), b.b(i));
  }

  public final eo a(u paramu)
  {
    return new fq(this, paramu);
  }

  public final eo a(a parama)
  {
    return new fq(this, parama);
  }

  public final void a(int paramInt1, int paramInt2, Vector2 paramVector2)
  {
    paramVector2.x = ((float)((this.f - paramInt1) * this.d));
    paramVector2.y = ((float)((this.g - paramInt2) * this.d));
  }

  public final void a(u paramu, Vector2 paramVector2)
  {
    a(b.d(paramu.e()), b.e(paramu.b()), paramVector2);
  }

  public final void a(fr paramfr)
  {
    WeakReference localWeakReference = new WeakReference(an.a(paramfr));
    if (!this.b.contains(localWeakReference));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.b.add(localWeakReference);
      return;
    }
  }

  public final eo b(u paramu)
  {
    an.a(true);
    return new fs(this, paramu);
  }

  public final void b(fr paramfr)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      if (((WeakReference)localIterator.next()).get() == paramfr)
        localIterator.remove();
  }

  public final void c(u paramu)
  {
    if (!((u)an.a(paramu)).equals(this.c))
    {
      this.c = paramu;
      this.f = b.d(paramu.e());
      this.g = b.e(paramu.b());
      this.e = b.a(paramu.b());
      this.d = (1.0D / this.e);
      Iterator localIterator1 = this.a.iterator();
      while (localIterator1.hasNext())
      {
        fq localfq = (fq)((WeakReference)localIterator1.next()).get();
        if (localfq != null)
          fq.a(localfq);
        else
          localIterator1.remove();
      }
      Iterator localIterator2 = this.b.iterator();
      while (localIterator2.hasNext())
      {
        fr localfr = (fr)((WeakReference)localIterator2.next()).get();
        if (localfr != null)
          localfr.a();
        else
          localIterator2.remove();
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fp
 * JD-Core Version:    0.6.2
 */