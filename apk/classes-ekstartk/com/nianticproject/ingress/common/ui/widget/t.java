package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.ad;

public class t
  implements ac
{
  private final Color a;
  private float b;
  private float c;
  private Image d;
  private float e;
  private float f;
  private float g;
  private float h;

  public t(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(paramFloat1, paramFloat2, paramFloat3, Color.BLACK);
  }

  public t(float paramFloat1, float paramFloat2, float paramFloat3, Color paramColor)
  {
    this.g = paramFloat1;
    this.h = paramFloat2;
    this.a = ((Color)an.a(paramColor));
    this.c = paramFloat3;
    this.b = this.c;
  }

  private void a()
  {
    float f1 = this.c / this.b;
    float f2 = this.h;
    float f3 = f2 + f1 * (this.g - f2);
    if (this.d != null)
      this.d.setColor(this.a.r, this.a.g, this.a.b, f3);
  }

  public static void a(ad paramad)
  {
    paramad.a(new u(Color.WHITE, paramad));
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.d = new Image(new NinePatch(paramSkin.getPatch("white"), this.a));
    this.d.setX(0.0F);
    this.d.setY(0.0F);
    this.e = paramStage.getWidth();
    this.f = paramStage.getHeight();
    this.d.setWidth(this.e);
    this.d.setHeight(this.f);
    a();
    paramStage.addActor(this.d);
  }

  public boolean a(float paramFloat)
  {
    if (this.c > 0.0F)
      this.c -= paramFloat;
    a();
    return this.c > 0.0F;
  }

  public void dispose()
  {
    this.d.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.t
 * JD-Core Version:    0.6.2
 */