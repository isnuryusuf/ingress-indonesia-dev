package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.nianticproject.ingress.common.j.ai;

public final class c extends a
{
  private boolean a;
  private float b;

  public c(ai paramai, Color paramColor)
  {
    super(paramai, paramColor);
  }

  public final boolean a(float paramFloat)
  {
    boolean bool = true;
    if (b() > 10.0F)
      this.a = bool;
    if ((this.a) && (b() > 1.0F))
    {
      this.b = Math.max(0.0F, this.b - 1.0F * paramFloat);
      if (this.b <= 0.0F)
        break label93;
    }
    while (true)
    {
      b(this.b);
      super.a(paramFloat);
      return bool;
      this.b = Math.min(1.0F, this.b + 2.0F * paramFloat);
      break;
      label93: bool = false;
    }
  }

  public final void d()
  {
    this.a = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.c
 * JD-Core Version:    0.6.2
 */