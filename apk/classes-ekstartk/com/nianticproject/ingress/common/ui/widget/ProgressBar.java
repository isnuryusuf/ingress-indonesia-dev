package com.nianticproject.ingress.common.ui.widget;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;

public final class ProgressBar extends Table
{
  private final an a;
  private Drawable b;
  private Drawable c;
  private float d;
  private ao e;

  public ProgressBar(Skin paramSkin)
  {
    this((ProgressBar.ProgressBarStyle)paramSkin.get(ProgressBar.ProgressBarStyle.class));
  }

  private ProgressBar(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, float paramFloat)
  {
    this.a = new an(this, paramFloat, (byte)0);
    this.d = 0.0F;
    this.b = paramDrawable1;
    this.c = ((Drawable)com.google.a.a.an.a(paramDrawable3));
    Image localImage = new Image(paramDrawable2);
    clear();
    add(localImage).n().f().i();
  }

  private ProgressBar(ProgressBar.ProgressBarStyle paramProgressBarStyle)
  {
  }

  public final an a()
  {
    return this.a;
  }

  public final void a(ao paramao)
  {
    this.e = paramao;
  }

  public final void act(float paramFloat)
  {
    super.act(paramFloat);
    this.a.a(paramFloat);
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    super.draw(paramSpriteBatch, paramFloat);
    if ((isVisible()) && (paramFloat * getColor().a > 0.0F))
    {
      if (this.b != null)
        this.b.draw(paramSpriteBatch, getX(), getY(), getWidth(), getHeight());
      float f1 = this.c.getMinWidth();
      float f2 = f1 + (getWidth() - f1) * this.d;
      this.c.draw(paramSpriteBatch, getX(), getY(), f2, getHeight());
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ProgressBar
 * JD-Core Version:    0.6.2
 */