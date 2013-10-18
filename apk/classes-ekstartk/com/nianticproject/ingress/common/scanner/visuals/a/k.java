package com.nianticproject.ingress.common.scanner.visuals.a;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Disposable;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.shared.ai;

public abstract class k
  implements Disposable, o
{
  private boolean a;
  private boolean b;
  private float c;
  private float d = 2.0F;

  public void a(Vector2 paramVector2, float paramFloat)
  {
  }

  public void a(Modable paramModable, ai paramai)
  {
  }

  public final boolean a()
  {
    return true;
  }

  public boolean a(float paramFloat)
  {
    if ((this.a) || (this.b))
    {
      this.c = Math.min(paramFloat + this.c, 1.0F);
      if (this.c >= 1.0F)
      {
        this.a = false;
        if (this.b)
          return false;
      }
    }
    return true;
  }

  public boolean b()
  {
    return false;
  }

  public final void c()
  {
    if (!this.a)
    {
      this.a = true;
      this.b = false;
      this.c = 0.0F;
    }
  }

  public final void d()
  {
    if (!this.b)
    {
      this.a = false;
      this.b = true;
      this.c = 0.0F;
    }
  }

  public final float e()
  {
    return this.d;
  }

  protected final float f()
  {
    float f = this.c / 1.0F;
    if (this.a)
      return f;
    if (this.b)
      return 1.0F - f;
    return 1.0F;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a.k
 * JD-Core Version:    0.6.2
 */