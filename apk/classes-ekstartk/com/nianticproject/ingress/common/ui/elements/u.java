package com.nianticproject.ingress.common.ui.elements;

import com.google.a.a.an;

public final class u
{
  private final HighLowWatermarkBar a;
  private float b;

  private u(HighLowWatermarkBar paramHighLowWatermarkBar)
  {
    this.a = paramHighLowWatermarkBar;
    this.b = 0.0F;
  }

  public final float a()
  {
    return this.b;
  }

  final void a(float paramFloat)
  {
    float f1 = paramFloat * (0.1F + 0.3F * (this.b - HighLowWatermarkBar.a(this.a)));
    float f2 = paramFloat * (0.1F + 0.3F * (HighLowWatermarkBar.b(this.a) - this.b));
    if (this.b > HighLowWatermarkBar.b(this.a))
    {
      HighLowWatermarkBar.b(this.a, this.b);
      HighLowWatermarkBar.a(this.a, Math.min(this.b, f1 + HighLowWatermarkBar.a(this.a)));
      return;
    }
    if (this.b < HighLowWatermarkBar.a(this.a))
    {
      HighLowWatermarkBar.a(this.a, this.b);
      HighLowWatermarkBar.b(this.a, Math.max(this.b, HighLowWatermarkBar.b(this.a) - f2));
      return;
    }
    HighLowWatermarkBar.a(this.a, Math.min(this.b, f1 + HighLowWatermarkBar.a(this.a)));
    HighLowWatermarkBar.b(this.a, Math.max(this.b, HighLowWatermarkBar.b(this.a) - f2));
  }

  public final void a(float paramFloat, boolean paramBoolean)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Progress must be between 0.0 and 1.0");
      this.b = paramFloat;
      if (!paramBoolean)
      {
        HighLowWatermarkBar.a(this.a, this.b);
        HighLowWatermarkBar.b(this.a, this.b);
      }
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.u
 * JD-Core Version:    0.6.2
 */