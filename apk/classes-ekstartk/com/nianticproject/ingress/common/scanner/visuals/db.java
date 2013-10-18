package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.math.Matrix4;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.shared.aj;

public final class db
  implements o
{
  private final Color a = new Color(Color.RED);
  private final Matrix4 b = new Matrix4();
  private final ai c;
  private final float d;
  private final float e;
  private float f = 0.0F;
  private float g = 1.0F;

  public db(ai paramai)
  {
    this.c = paramai;
    this.d = 5.0F;
    this.e = 9.0F;
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    try
    {
      aj.a("ShrinkingVisuals.draw");
      this.a.a = Math.min(Math.min(this.f, 1.0F), Math.min(this.d - this.f, 1.0F));
      ai.k();
      ai.a(this.a);
      GL20 localGL20 = Gdx.gl20;
      localGL20.glEnable(3042);
      this.b.set(paramMatrix4).scale(this.e, this.e, this.e);
      this.c.a(this.b, paramf.e());
      this.c.i();
      if (this.g < 3.0F * this.f)
        this.g = ((float)Math.ceil(3.0F * this.f));
      float f1 = this.e;
      float f2 = f1 + (1.0F - this.g + 3.0F * this.f) * (0.0F - f1);
      this.b.set(paramMatrix4).scale(f2, f2, f2);
      ai.b(this.b, paramf.e());
      this.c.i();
      this.c.j();
      localGL20.glDisable(3042);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.f = (paramFloat + this.f);
    return this.f <= this.d;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.db
 * JD-Core Version:    0.6.2
 */