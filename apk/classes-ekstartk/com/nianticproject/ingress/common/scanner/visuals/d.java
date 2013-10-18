package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.ui.ac;

public class d
  implements ac
{
  protected final h a;
  protected Vector2 b;
  protected Vector2 c;
  private Color d;
  private final Vector2 e = new Vector2();
  private final Vector2 f = new Vector2();
  private final Vector2 g = new Vector2();
  private final Vector2[] h = new Vector2[3];
  private final Vector2[] i = new Vector2[3];

  public d(h paramh)
  {
    this.a = paramh;
  }

  public final void a(Color paramColor)
  {
    this.d = paramColor;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
  }

  public boolean a(float paramFloat)
  {
    float f1;
    if ((this.d != null) && (this.d.a > 0.0F) && (this.b != null) && (this.c != null))
    {
      this.e.set(this.c).sub(this.b);
      Gdx.graphics.getWidth();
      Gdx.graphics.getHeight();
      f1 = Math.abs(this.e.x) / Math.abs(this.e.y) * (Gdx.graphics.getWidth() / Gdx.graphics.getHeight());
      float f2 = 0.5F * com.nianticproject.ingress.common.w.l.a(3.0F) / Gdx.graphics.getWidth();
      float f3 = 0.5F * com.nianticproject.ingress.common.w.l.a(3.0F) / Gdx.graphics.getHeight();
      float f4 = -Math.signum(this.e.x) * Math.signum(this.e.y);
      this.g.set(f2, f3 * f4);
      if (f1 >= 1.0F)
        break label345;
      Vector2 localVector22 = this.g;
      localVector22.y = ((float)(localVector22.y * (1.0D - Math.sin(0.7853981633974483D))));
      this.f.set(this.c.x, this.c.y - this.e.y * (1.0F - f1));
    }
    while (true)
    {
      this.h[0] = this.b;
      this.h[1] = this.f;
      this.h[2] = this.c;
      this.i[0] = this.g;
      this.i[1] = this.g;
      this.i[2] = this.g;
      this.a.a(com.nianticproject.ingress.common.j.l.a, this.h, this.i, this.d);
      return true;
      label345: Vector2 localVector21 = this.g;
      localVector21.x = ((float)(localVector21.x * (1.0D - Math.sin(0.7853981633974483D))));
      this.f.set(this.c.x - (this.e.x - this.e.x / f1), this.c.y);
    }
  }

  public void dispose()
  {
    this.b = null;
    this.c = null;
    this.d = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.d
 * JD-Core Version:    0.6.2
 */