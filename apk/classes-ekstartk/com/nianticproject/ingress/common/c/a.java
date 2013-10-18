package com.nianticproject.ingress.common.c;

import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.y;

public class a
{
  private static final aa a = new aa(a.class);
  private final c b;
  private final b[] c;
  private final float d;
  private float e;
  private float f;
  private float g;

  public a(ba paramba, b[] paramArrayOfb, float paramFloat)
  {
    this.b = new c(paramba);
    this.c = paramArrayOfb;
    this.d = paramFloat;
    this.e = 0.0F;
    a(0L);
  }

  private void a(long paramLong)
  {
    this.g = ((float)(paramLong + ()(3000.0D + 5000.0D * Math.random())));
  }

  public final void a()
  {
    this.e = 0.0F;
  }

  public final void a(float paramFloat)
  {
    this.e = (paramFloat + this.e);
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    float f1 = paramFloat2 * y.b(this.e) - this.f;
    this.f += 0.2F * (paramFloat1 * Math.signum(f1));
    this.f = y.b(this.f);
    this.b.a(this.f * this.d);
    if (this.f >= 0.05F)
    {
      this.g -= 1000.0F * paramFloat1;
      this.g = Math.max(0.0F, this.g);
      if (this.g == 0.0F)
        a(this.c[((int)(Math.random() * this.c.length))].a(this.f));
    }
  }

  public final float b()
  {
    return this.e;
  }

  public final void c()
  {
    this.e = 0.0F;
    this.f = 0.0F;
    this.b.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.a
 * JD-Core Version:    0.6.2
 */