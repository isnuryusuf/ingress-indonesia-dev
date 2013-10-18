package com.nianticproject.ingress.common.ui.d;

public final class f
{
  private float a;
  private float b;
  private float c;
  private float d;
  private float e;
  private float f;
  private float g = 1.0F;
  private float h = 0.0F;
  private float i = 1.0F;
  private float j = 0.0F;
  private float k;
  private float l;

  public final void a()
  {
    this.i = 1.0F;
    this.j = 0.0F;
    this.g = 1.0F;
    this.h = 0.0F;
  }

  public final void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramFloat1 - paramFloat3;
    float f2 = paramFloat2 - paramFloat4;
    this.b = Math.max(Math.abs(f1), Math.abs(f2));
    if ((f1 == 0.0F) && (f2 == 0.0F));
    for (double d1 = -1.570796326794897D; ; d1 = Math.atan2(f1, -f2))
    {
      this.a = ((float)d1);
      this.d = this.b;
      this.c = this.a;
      this.i = 1.0F;
      this.j = 0.0F;
      this.g = 1.0F;
      this.h = 0.0F;
      this.e = f1;
      this.f = f2;
      return;
    }
  }

  public final float b()
  {
    return this.g;
  }

  public final void b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = paramFloat1 - paramFloat3;
    float f2 = paramFloat2 - paramFloat4;
    this.b = Math.max(Math.abs(f1), Math.abs(f2));
    this.a = ((float)Math.atan2(f1, -f2));
    float f3 = this.a - this.c;
    if (f3 > 1.570796F)
      f3 -= 6.283186F;
    while (true)
    {
      this.j = f3;
      this.i = Math.max(0.5F, Math.min(this.b / this.d, 2.0F));
      if ((f1 != 0.0F) || (f2 != 0.0F))
        break;
      this.g = this.i;
      this.h = 0.0F;
      this.d = this.b;
      this.c = this.a;
      this.e = f1;
      this.f = f2;
      return;
      if (f3 < -1.570796F)
        f3 += 6.283186F;
    }
    float f4 = f1 - this.e;
    float f5 = f2 - this.f;
    float f6 = (float)Math.sqrt(this.e * this.e + this.f * this.f);
    if (f6 > 0.0F)
    {
      f6 = 1.0F / f6;
      this.e = (f6 * this.e);
      this.f = (f6 * this.f);
    }
    float f7 = f4 * this.e + f5 * this.f;
    float f8 = f4 * this.f - f5 * this.e;
    float f10;
    float f12;
    if (f6 > 0.0F)
    {
      this.k = 1.0F;
      this.l = 1.0F;
      float f9 = f7 * f7;
      f10 = f9 * f9;
      float f11 = f8 * f8;
      f12 = f11 * f11;
      if (f10 > f12)
        this.l = (f12 / f10);
    }
    while (true)
    {
      this.g = ((float)Math.exp(this.k * Math.log(this.i)));
      this.h = (this.l * this.j);
      break;
      if (f10 < f12)
      {
        this.k = (f10 / f12);
        continue;
        this.k = 1.0F;
        this.l = 0.0F;
      }
    }
  }

  public final float c()
  {
    return this.h;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.d.f
 * JD-Core Version:    0.6.2
 */