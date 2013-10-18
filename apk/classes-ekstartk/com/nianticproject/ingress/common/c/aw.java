package com.nianticproject.ingress.common.c;

import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.t.c;
import com.nianticproject.ingress.shared.ai;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class aw
{
  private static final com.nianticproject.ingress.common.t.b a = c.a("Update Scanner Audio Ambient");
  private static final b[] b = arrayOfb;
  private static final Comparator<a> f = new ax();
  private final List<a> c = eq.a();
  private final Map<az, a> d = hc.b();
  private final ed e;

  static
  {
    b[] arrayOfb = new b[4];
    arrayOfb[0] = new b(ba.am, 0);
    arrayOfb[1] = new b(ba.an, 0);
    arrayOfb[2] = new b(ba.ao, 0);
    arrayOfb[3] = new b(ba.ap, 0);
  }

  public aw(ed paramed)
  {
    this.e = paramed;
    a locala1 = d.a();
    this.c.add(locala1);
    this.d.put(az.c, locala1);
    a locala2 = d.b();
    this.c.add(locala2);
    this.d.put(az.b, locala2);
    a locala3 = d.c();
    this.c.add(locala3);
    this.d.put(az.d, locala3);
    a locala4 = new a(ba.ak, b, 0.8F);
    this.c.add(locala4);
    this.d.put(az.a, locala4);
  }

  public final void a()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((a)localIterator.next()).a();
  }

  public final void a(float paramFloat)
  {
    a.b();
    Collections.sort(this.c, f);
    label71: a locala;
    label132: float f1;
    if (((a)this.c.get(0)).b() < 0.1F)
    {
      a();
      ((a)this.d.get(az.a)).a(1.0F);
      Iterator localIterator = this.c.iterator();
      if (!localIterator.hasNext())
        break label213;
      locala = (a)localIterator.next();
      switch (ay.b[o.a().d().ordinal()])
      {
      default:
        f1 = 1.0F;
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      locala.a(paramFloat, f1);
      break label71;
      for (int i = 2; i < this.c.size(); i++)
        ((a)this.c.get(i)).a();
      if (!this.e.a())
        break label132;
      f1 = 0.6F;
      continue;
      f1 = 0.0F;
      continue;
      f1 = 0.2F;
    }
    label213: com.nianticproject.ingress.common.t.b.c();
  }

  public final void a(ai paramai, float paramFloat)
  {
    az localaz = az.a(paramai);
    ((a)this.d.get(localaz)).a(paramFloat);
  }

  public final void b()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((a)localIterator.next()).c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.aw
 * JD-Core Version:    0.6.2
 */