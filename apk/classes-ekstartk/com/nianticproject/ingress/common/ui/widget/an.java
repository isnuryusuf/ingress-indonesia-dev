package com.nianticproject.ingress.common.ui.widget;

public final class an
{
  private final ProgressBar a;
  private float b;
  private float c;

  private an(ProgressBar paramProgressBar, float paramFloat)
  {
    this.a = paramProgressBar;
    this.b = paramFloat;
    this.c = 0.0F;
  }

  final void a(float paramFloat)
  {
    if (this.c > ProgressBar.a(this.a))
      ProgressBar.a(this.a, Math.min(this.c, ProgressBar.a(this.a) + paramFloat * this.b));
    while (this.c >= ProgressBar.a(this.a))
      return;
    ProgressBar.a(this.a, Math.max(this.c, ProgressBar.a(this.a) - paramFloat * this.b));
  }

  public final void a(float paramFloat, boolean paramBoolean)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F));
    for (boolean bool = true; ; bool = false)
    {
      com.google.a.a.an.a(bool, "Progress must be between 0.0 and 1.0");
      this.c = paramFloat;
      if (!paramBoolean)
        ProgressBar.a(this.a, paramFloat);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.an
 * JD-Core Version:    0.6.2
 */