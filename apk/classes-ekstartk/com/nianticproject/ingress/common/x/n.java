package com.nianticproject.ingress.common.x;

import com.nianticproject.ingress.common.w.aa;

public class n
{
  private static final aa a = new aa(n.class);
  private j b;
  private long c;
  private long d;
  private long e;
  private j f;

  public final void a()
  {
    if (this.b != null)
    {
      if (this.d < -5000000L)
      {
        aa localaa4 = a;
        Object[] arrayOfObject4 = new Object[3];
        arrayOfObject4[0] = Float.valueOf((float)-this.d / 1000000.0F);
        arrayOfObject4[1] = this.b.a.n_();
        arrayOfObject4[2] = Float.valueOf((float)this.b.c / 1000000.0F);
        localaa4.b("Game work Q over budget by %f ms. Last task (%s) used %f ms.", arrayOfObject4);
      }
      long l2 = this.d - this.b.b;
      if (l2 > 500000000L)
      {
        aa localaa3 = a;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = this.b.a.n_();
        arrayOfObject3[1] = Float.valueOf((float)l2 / 1000000.0F);
        localaa3.b("Really old task: %s was queued %f ms ago.", arrayOfObject3);
      }
    }
    if (this.f != null)
    {
      aa localaa2 = a;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = this.f.a.n_();
      arrayOfObject2[1] = Float.valueOf((float)this.f.c / 1000000.0F);
      localaa2.b("Really expensive task: %s used %f ms.", arrayOfObject2);
    }
    long l1 = this.c - this.d;
    if (l1 > 100000000L)
    {
      aa localaa1 = a;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Float.valueOf((float)l1 / 1000000.0F);
      localaa1.b("Really long workqueue processing time: %f ms.", arrayOfObject1);
    }
  }

  public final void a(j paramj)
  {
    this.b = paramj;
    long l;
    if (this.e > 0L)
      l = this.e;
    for (this.e = ((this.b.c + l * 9L) / 10L); ; this.e = this.b.c)
    {
      if (10L * this.e < this.b.c)
        this.f = paramj;
      return;
    }
  }

  public final void a(p paramp)
  {
    this.b = null;
    this.c = paramp.a();
    this.f = null;
  }

  public final void b(p paramp)
  {
    this.d = paramp.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x.n
 * JD-Core Version:    0.6.2
 */