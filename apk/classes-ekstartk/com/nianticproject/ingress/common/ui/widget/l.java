package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;

public final class l extends NinePatchDrawable
{
  private final ShaderProgram a;
  private final k b;

  public l(NinePatchDrawable paramNinePatchDrawable, ShaderProgram paramShaderProgram, k paramk)
  {
    super(paramNinePatchDrawable);
    this.a = paramShaderProgram;
    this.b = paramk;
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramSpriteBatch.setShader(this.a);
    this.b.a(this.a);
    super.draw(paramSpriteBatch, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    paramSpriteBatch.setShader(null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.l
 * JD-Core Version:    0.6.2
 */