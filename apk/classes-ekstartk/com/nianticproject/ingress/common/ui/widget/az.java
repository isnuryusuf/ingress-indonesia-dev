package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.nianticproject.ingress.common.b.c;

public final class az
  implements Drawable
{
  private final Drawable a;
  private final Color b = new Color();
  private final Color c = new Color();
  private final Color d = new Color();

  public az(Drawable paramDrawable, int paramInt)
  {
    this(paramDrawable, c.a(paramInt));
  }

  public az(Drawable paramDrawable, Color paramColor)
  {
    this.a = paramDrawable;
    a(paramColor);
  }

  public final void a(Color paramColor)
  {
    this.b.set(paramColor);
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.d.set(paramSpriteBatch.getColor());
    this.c.set(this.d).mul(this.b);
    paramSpriteBatch.setColor(this.c);
    this.a.draw(paramSpriteBatch, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    paramSpriteBatch.setColor(this.d);
  }

  public final float getBottomHeight()
  {
    return this.a.getBottomHeight();
  }

  public final float getLeftWidth()
  {
    return this.a.getLeftWidth();
  }

  public final float getMinHeight()
  {
    return this.a.getMinHeight();
  }

  public final float getMinWidth()
  {
    return this.a.getMinWidth();
  }

  public final float getRightWidth()
  {
    return this.a.getRightWidth();
  }

  public final float getTopHeight()
  {
    return this.a.getTopHeight();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.az
 * JD-Core Version:    0.6.2
 */