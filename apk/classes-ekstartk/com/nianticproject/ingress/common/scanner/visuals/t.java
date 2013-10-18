package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.visuals.b.l;

public final class t extends l
{
  private ej c;
  private ej d;
  private float e = 0.0F;
  private float f = 0.0F;
  private Vector2 g = new Vector2(0.0F, 0.0F);

  public t(com.nianticproject.ingress.common.scanner.visuals.b.t paramt, ej paramej1, ej paramej2)
  {
    super(paramt);
    this.c = paramej1;
    this.d = paramej2;
  }

  public final void a()
  {
    this.e = 24.0F;
    this.f = 24.0F;
  }

  public final void a(ej paramej)
  {
    this.d = paramej;
  }

  public final boolean a(float paramFloat)
  {
    Vector2 localVector21;
    if (this.c == null)
    {
      localVector21 = this.g;
      this.a.set(localVector21.x, this.e, localVector21.y);
      if (this.d != null)
        break label86;
    }
    label86: for (Vector2 localVector22 = this.g; ; localVector22 = this.d.b())
    {
      this.b.set(localVector22.x, this.f, localVector22.y);
      return super.a(paramFloat);
      localVector21 = this.c.b();
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.t
 * JD-Core Version:    0.6.2
 */