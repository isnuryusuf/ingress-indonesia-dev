package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.math.MathUtils;

public final class bn
{
  private final SegmentedProgressBar a;
  private float b;

  private bn(SegmentedProgressBar paramSegmentedProgressBar)
  {
    this.a = paramSegmentedProgressBar;
  }

  public final void a(float paramFloat)
  {
    this.b = MathUtils.clamp(paramFloat, 0.0F, this.a.a());
  }

  final void b(float paramFloat)
  {
    float f1 = paramFloat * (0.1F + 0.3F * (this.b - SegmentedProgressBar.b(this.a)));
    float f2 = paramFloat * (0.1F + 0.3F * (SegmentedProgressBar.c(this.a) - this.b));
    if (this.b > SegmentedProgressBar.c(this.a))
    {
      SegmentedProgressBar.b(this.a, this.b);
      SegmentedProgressBar.a(this.a, Math.min(this.b, f1 + SegmentedProgressBar.b(this.a)));
      return;
    }
    if (this.b < SegmentedProgressBar.b(this.a))
    {
      SegmentedProgressBar.a(this.a, this.b);
      SegmentedProgressBar.b(this.a, Math.max(this.b, SegmentedProgressBar.c(this.a) - f2));
      return;
    }
    SegmentedProgressBar.a(this.a, Math.min(this.b, f1 + SegmentedProgressBar.b(this.a)));
    SegmentedProgressBar.b(this.a, Math.max(this.b, SegmentedProgressBar.c(this.a) - f2));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.bn
 * JD-Core Version:    0.6.2
 */