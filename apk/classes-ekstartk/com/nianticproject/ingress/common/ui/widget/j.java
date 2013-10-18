package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public final class j
  implements Drawable
{
  private final Drawable a;
  private final ShaderProgram b;
  private final k c;

  public j(Drawable paramDrawable, ShaderProgram paramShaderProgram, k paramk)
  {
    this.a = paramDrawable;
    this.b = paramShaderProgram;
    this.c = paramk;
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramSpriteBatch.setShader(this.b);
    this.c.a(this.b);
    this.a.draw(paramSpriteBatch, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    paramSpriteBatch.setShader(null);
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
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.j
 * JD-Core Version:    0.6.2
 */