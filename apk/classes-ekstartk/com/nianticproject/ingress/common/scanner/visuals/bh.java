package com.nianticproject.ingress.common.scanner.visuals;

import a.a.a.a.b.bl;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.w.y;

final class bh
{
  private eo b;
  private int c;
  private float d;
  private long e;
  private boolean f;
  private float g;
  private float h;
  private float i;
  private float j;
  private boolean k;
  private int l;

  public bh(be parambe)
  {
  }

  private float f()
  {
    if (this.i > 0.75F);
    for (float f1 = 1.0F - (this.i - 0.75F) / 0.25F; ; f1 = this.j)
      return (float)Math.floor(f1 * 128.0F) + this.i / 1.0F;
  }

  public final bh a(eo parameo, int paramInt, float paramFloat)
  {
    this.f = false;
    this.g = 0.0F;
    this.h = 0.0F;
    this.i = 0.0F;
    this.j = 0.0F;
    this.k = false;
    this.l = 0;
    this.b = parameo;
    this.c = paramInt;
    this.d = y.b(paramFloat);
    this.e = parameo.a();
    return this;
  }

  final bi a(float paramFloat)
  {
    float[] arrayOfFloat = (float[])be.a(this.a).e(this.e);
    if (this.i > 0.0F)
    {
      this.i = (paramFloat + this.i);
      arrayOfFloat[(1 + 4 * this.l)] = f();
    }
    if (this.k)
    {
      this.j -= paramFloat;
      arrayOfFloat[(1 + 4 * this.l)] = f();
      label82: if ((this.i >= 1.0F) || (this.j < 0.0F))
        break label175;
    }
    label175: for (int m = 1; ; m = 0)
    {
      if (m != 0)
        break label180;
      return bi.c;
      if ((this.j > 1.0F) || (this.k) || (d()))
        break label82;
      this.j = (paramFloat + this.j);
      if (this.j <= 1.0F)
        break;
      this.j = 1.0F;
      arrayOfFloat[(1 + 4 * this.l)] = f();
      return bi.b;
    }
    label180: return bi.a;
  }

  public final void a()
  {
    this.b = null;
  }

  public final float b()
  {
    return this.i / 1.0F;
  }

  final void c()
  {
    this.i = 0.001F;
  }

  final boolean d()
  {
    return this.i != 0.0F;
  }

  final void e()
  {
    this.k = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bh
 * JD-Core Version:    0.6.2
 */