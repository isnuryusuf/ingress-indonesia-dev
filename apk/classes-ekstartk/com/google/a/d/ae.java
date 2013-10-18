package com.google.a.d;

import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.de;
import java.util.ArrayList;
import java.util.PriorityQueue;

public final class ae
{
  private static final dc<i> c = localde.a();
  ad a = null;
  ArrayList<j> b = new ArrayList();
  private int d = 0;
  private int e = 30;
  private int f = 1;
  private int g = 8;
  private boolean h;
  private int i;
  private PriorityQueue<ah> j = new PriorityQueue(10, new ag());

  static
  {
    de localde = dc.h();
    for (int k = 0; k < 6; k++)
      localde.c(i.a(k));
  }

  private strictfp int a(af paramaf, i parami, int paramInt)
  {
    int k = 0;
    int m = paramInt - 1;
    i[] arrayOfi = new i[4];
    for (int n = 0; n < 4; n++)
      arrayOfi[n] = new i();
    parami.a(arrayOfi);
    int i1 = 0;
    if (i1 < 4)
    {
      if (m > 0)
        if (this.a.b(arrayOfi[i1]))
          k += a(paramaf, arrayOfi[i1], m);
      while (true)
      {
        i1++;
        break;
        af localaf = a(arrayOfi[i1]);
        if (localaf != null)
        {
          af.d(paramaf)[af.e(paramaf)] = localaf;
          if (af.a(localaf))
            k++;
        }
      }
    }
    return k;
  }

  private strictfp af a(i parami)
  {
    if (!this.a.b(parami))
      return null;
    int k = parami.b();
    int m = this.d;
    boolean bool1 = false;
    if (k >= m)
    {
      if (this.h)
      {
        if (!this.a.a(parami))
        {
          int n = parami.b() + this.f;
          int i1 = this.e;
          bool1 = false;
          if (n <= i1)
            break label131;
          return null;
        }
      }
      else if ((parami.b() + this.f <= this.e) && (!(this.a instanceof z)))
      {
        boolean bool2 = this.a.a(parami);
        bool1 = false;
        if (!bool2)
          break label131;
      }
      bool1 = true;
    }
    label131: af localaf = new af();
    af.a(localaf, parami);
    af.a(localaf, bool1);
    if (!bool1)
      af.a(localaf, new af[1 << 2 * this.f]);
    this.i = (1 + this.i);
    return localaf;
  }

  private strictfp void a(af paramaf)
  {
    if (paramaf == null)
      label4: return;
    if (af.a(paramaf))
    {
      this.b.add(af.b(paramaf).a());
      return;
    }
    if (af.b(paramaf).b() < this.d);
    int m;
    for (int k = 1; ; k = this.f)
    {
      m = a(paramaf, af.b(paramaf), k);
      if (af.c(paramaf) == 0)
        break label4;
      if ((this.h) || (m != 1 << 2 * this.f) || (af.b(paramaf).b() < this.d))
        break label112;
      af.a(paramaf, true);
      break;
    }
    label112: int n = -(m + ((af.b(paramaf).b() << 2 * this.f) + af.c(paramaf) << 2 * this.f));
    this.j.add(new ah(n, paramaf));
  }

  public final strictfp k a(ad paramad)
  {
    k localk = new k();
    this.h = false;
    if ((this.j.isEmpty()) && (this.b.isEmpty()));
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      this.a = paramad;
      this.i = 0;
      if (this.g < 4)
        break;
      h localh = this.a.f();
      int n = Math.min(aa.g.a(2.0D * localh.e().a()), Math.min(this.e, 29));
      if ((this.f > 1) && (n > this.d))
        n -= (n - this.d) % this.f;
      if (n <= 0)
        break;
      ArrayList localArrayList = new ArrayList(4);
      j.a(localh.b()).a(n, localArrayList);
      for (int i1 = 0; i1 < localArrayList.size(); i1++)
        a(a(new i((j)localArrayList.get(i1))));
    }
    int k = 0;
    af localaf;
    while (k < 6)
    {
      a(a((i)c.get(k)));
      k++;
      continue;
      af.a(localaf, true);
      a(localaf);
    }
    while (true)
    {
      if ((this.j.isEmpty()) || ((this.h) && (this.b.size() >= this.g)))
        break label418;
      localaf = ah.b((ah)this.j.poll());
      if ((!this.h) && (af.b(localaf).b() >= this.d) && (af.c(localaf) != 1) && (this.b.size() + this.j.size() + af.c(localaf) > this.g))
        break;
      for (int m = 0; m < af.c(localaf); m++)
        if ((!this.h) || (this.b.size() < this.g))
          a(af.d(localaf)[m]);
    }
    label418: this.j.clear();
    this.a = null;
    localk.b(this.b);
    return localk;
  }

  public final strictfp void a(int paramInt)
  {
    this.e = Math.max(0, Math.min(30, paramInt));
  }

  public final strictfp void b(int paramInt)
  {
    this.g = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.ae
 * JD-Core Version:    0.6.2
 */