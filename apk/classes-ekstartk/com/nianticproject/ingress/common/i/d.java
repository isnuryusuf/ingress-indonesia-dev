package com.nianticproject.ingress.common.i;

import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.scanner.ag;

public final class d extends Sprite
{
  private float a;

  public final void a(float paramFloat)
  {
    this.a = paramFloat;
  }

  public final void draw(SpriteBatch paramSpriteBatch)
  {
    float f = 0.0039063F + 254.0F * this.a / 256.0F;
    ShaderProgram localShaderProgram = ag.aY;
    paramSpriteBatch.setShader(localShaderProgram);
    localShaderProgram.setUniformf("mask", f);
    localShaderProgram.setUniformf("regionX", getU());
    localShaderProgram.setUniformf("regionWidth", 0.5F * (getU2() - getU()));
    super.draw(paramSpriteBatch);
    paramSpriteBatch.setShader(null);
  }

  public final float getWidth()
  {
    return 0.5F * super.getWidth();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.i.d
 * JD-Core Version:    0.6.2
 */