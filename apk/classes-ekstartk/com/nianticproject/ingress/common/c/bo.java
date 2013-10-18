package com.nianticproject.ingress.common.c;

import com.google.a.c.eq;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class bo
{
  private float a = 1.0F;
  private float b = 0.0F;
  private boolean c = false;
  private int d = 1;
  private boolean e = false;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  private String i = null;
  private bp j = bp.b;
  private bq k = bq.c;
  private final List<bi> l = eq.a();

  public final bo a()
  {
    this.d = -1;
    return this;
  }

  public final bo a(float paramFloat)
  {
    this.a = paramFloat;
    return this;
  }

  public final bo a(ba paramba)
  {
    this.l.add(new bi(paramba, (byte)0));
    return this;
  }

  public final bo a(bp parambp)
  {
    this.j = parambp;
    return this;
  }

  public final bo a(bq parambq)
  {
    this.k = parambq;
    return this;
  }

  public final bo a(Collection<ba> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      ba localba = (ba)localIterator.next();
      this.l.add(new bi(localba));
    }
    return this;
  }

  public final bo a(boolean paramBoolean)
  {
    this.c = paramBoolean;
    return this;
  }

  public final bo a(ba[] paramArrayOfba)
  {
    int m = paramArrayOfba.length;
    for (int n = 0; n < m; n++)
    {
      ba localba = paramArrayOfba[n];
      this.l.add(new bi(localba));
    }
    return this;
  }

  public final bo b()
  {
    this.e = true;
    return this;
  }

  public final bo b(float paramFloat)
  {
    this.b = paramFloat;
    return this;
  }

  public final bo c()
  {
    this.f = true;
    return this;
  }

  public final bo d()
  {
    this.h = true;
    return this;
  }

  public final bo e()
  {
    this.g = true;
    return this;
  }

  public final bn f()
  {
    if (this.l.size() == 0)
      throw new IllegalArgumentException("must have at least one SoundClip");
    if ((this.e) && (this.g))
      throw new IllegalArgumentException("can't have isExclusive == true AND isLayered == true");
    return new bn(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, (byte)0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.bo
 * JD-Core Version:    0.6.2
 */