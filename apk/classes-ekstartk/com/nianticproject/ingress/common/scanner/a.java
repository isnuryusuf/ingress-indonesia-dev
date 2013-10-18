package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.math.Matrix4;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.w.y;

public final class a
  implements o
{
  private final ai a;
  private final float b;
  private final float c;
  private float d;
  private final Color e;
  private final Color f;
  private final float g;
  private final float h;
  private final Matrix4 i = new Matrix4();

  public a(ai paramai, Color paramColor)
  {
    this.a = paramai;
    this.b = 1.5F;
    this.d = 0.0F;
    if (paramColor == null)
      paramColor = Color.BLACK;
    this.e = new Color(paramColor);
    this.e.a = 1.0F;
    this.f = new Color(this.e);
    this.f.a = 0.0F;
    this.c = 0.6666667F;
    this.g = 6.0F;
    this.h = 0.1F;
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    float f1 = y.b(this.d * this.c);
    float f2 = this.g;
    float f3 = f2 + f1 * (this.h - f2);
    Gdx.gl.glEnable(3042);
    ai.k();
    ai.a(this.e, this.f, f1);
    this.i.set(paramMatrix4).scale(f3, f3, f3);
    this.a.a(this.i, paramf.e());
    if (this.a.c() != null)
      this.a.i();
    while (true)
    {
      Gdx.gl.glDisable(3042);
      this.a.j();
      return;
      this.a.h();
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.d = (paramFloat + this.d);
    return this.d <= this.b;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a
 * JD-Core Version:    0.6.2
 */