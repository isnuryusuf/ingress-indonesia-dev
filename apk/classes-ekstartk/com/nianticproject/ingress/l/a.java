package com.nianticproject.ingress.l;

public final class a
{
  protected float a;
  private float b = 0.0F;
  private long c = 0L;
  private final boolean d = true;

  public final float a(long paramLong, float paramFloat)
  {
    if ((this.c == 0L) || (paramLong < this.c))
    {
      this.a = paramFloat;
      this.c = paramLong;
      if (!this.d);
    }
    else
    {
      while (this.a >= 360.0F)
      {
        this.a -= 360.0F;
        continue;
        if ((this.d) && (2.0F * Math.abs(paramFloat - this.a) > 360.0F))
          if (paramFloat >= this.a)
            break label137;
        float f1;
        label137: for (paramFloat += 360.0F; ; paramFloat -= 360.0F)
        {
          f1 = (float)(paramLong - this.c) / 100.0F;
          if ((f1 <= 10.0F) && (f1 >= 0.0F))
            break label145;
          this.a = paramFloat;
          this.b = 0.0F;
          break;
        }
        label145: float f2;
        float f5;
        if (f1 > 0.0F)
        {
          f2 = Math.min(0.5F, f1);
          float f3 = (paramFloat - this.a) / 10.0F;
          this.b += f2 * (f3 * Math.abs(f3));
          if (this.b != 0.0F)
          {
            float f4 = f3 * 10.0F / this.b;
            f5 = (float)(0.5D + 1.0D * Math.exp(f4 * -f4));
            if (f5 * f2 < 1.0F)
              break label257;
            this.b = 0.0F;
          }
        }
        while (true)
        {
          f1 -= 0.5F;
          break label145;
          break;
          label257: this.b -= f2 * (f5 * this.b);
          this.a += f2 * this.b;
        }
      }
      while (this.a < 0.0F)
        this.a = (360.0F + this.a);
    }
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.a
 * JD-Core Version:    0.6.2
 */