package com.nianticproject.ingress.common.ui.hud;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.w.y;

public abstract class e extends a
  implements b
{
  private final float a = 4.0F;
  private final String b;
  private final String c;
  private Label d = null;
  private float e;
  private float f;
  private float g;

  private e(String paramString1, long paramLong, boolean paramBoolean, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean)
      localStringBuilder.append("Critical! ");
    localStringBuilder.append(paramString1).append(paramLong).append("%");
    this.b = localStringBuilder.toString();
    this.c = paramString2;
  }

  public final Actor a(Skin paramSkin)
  {
    this.d = new Label(this.b, (Label.LabelStyle)paramSkin.get(this.c, Label.LabelStyle.class));
    return this.d;
  }

  public final void a()
  {
    if (this.g < this.a - 0.8F)
      this.g = (this.a - 0.8F);
  }

  public final boolean a(float paramFloat)
  {
    this.g = (paramFloat + this.g);
    float f1 = y.b(this.g / 0.4F);
    Label localLabel = this.d;
    float f2 = this.e;
    float f3 = this.f;
    localLabel.setY(f2 + y.a(f1) * (f3 - f2));
    float f4 = y.a(1.0F - y.b((this.g - (this.a - 0.8F)) / 0.8F));
    this.d.getColor().a = (f1 * f4);
    return (super.a(paramFloat)) && (this.g < this.a);
  }

  protected final void b(Rectangle paramRectangle)
  {
    this.d.setX(paramRectangle.x + paramRectangle.width / 2.0F - this.d.getPrefWidth() / 2.0F);
    this.e = (paramRectangle.y + paramRectangle.height / 2.0F);
    this.f = (paramRectangle.y + paramRectangle.height);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.hud.e
 * JD-Core Version:    0.6.2
 */