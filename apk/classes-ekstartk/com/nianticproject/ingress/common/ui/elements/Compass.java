package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.ui.a.c;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.aj;

public final class Compass
  implements ac
{
  private static final Vector3 a = new Vector3(0.0F, 1.5F, 0.0F);
  private static final Vector3 b = new Vector3(0.0F, 0.0F, 0.0F);
  private static final Vector3 c = new Vector3(0.0F, 0.0F, -1.0F);
  private static final Vector3 d = new Vector3(0.0F, -1.0F, 0.0F);
  private static final Vector3 e = new Vector3(1.0F, 0.0F, 0.0F);
  private final r f;
  private q g = null;
  private c h;
  private float i;
  private float j;
  private boolean k;
  private boolean l;

  public Compass(r paramr, boolean paramBoolean)
  {
    this.f = paramr;
    this.l = paramBoolean;
  }

  public final void a()
  {
    try
    {
      aj.a("Compass.render");
      if (this.g.isVisible())
        this.g.e();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    Compass.CompassStyle localCompassStyle = (Compass.CompassStyle)paramSkin.get(Compass.CompassStyle.class);
    float f1 = l.a(localCompassStyle.widthInDips);
    float f2 = l.a(localCompassStyle.heightInDips);
    this.g = new q(this, paramStage.getWidth() * localCompassStyle.xRelativeToScreenWidth, paramStage.getHeight() - paramStage.getHeight() * localCompassStyle.yRelativeToScreenHeight - f2, f1, f2, new p(this));
    q.c();
    this.h = c.a(this.g);
    paramStage.addActor(this.g);
  }

  public final void a(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public final boolean a(float paramFloat)
  {
    this.g.d();
    return true;
  }

  public final void b()
  {
    this.j = -41.496471F;
    this.k = true;
  }

  public final void b(float paramFloat)
  {
    this.i = paramFloat;
    this.k = true;
  }

  public final void b(boolean paramBoolean)
  {
    this.h.b(paramBoolean);
  }

  public final boolean c()
  {
    return this.l;
  }

  public final void d()
  {
    this.l = false;
  }

  public final void dispose()
  {
    q.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.Compass
 * JD-Core Version:    0.6.2
 */