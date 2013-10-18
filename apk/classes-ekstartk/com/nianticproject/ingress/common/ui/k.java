package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;

public class k extends SpriteBatch
{
  SpriteBatch a;

  public k()
  {
    super(1);
  }

  public final void a(SpriteBatch paramSpriteBatch)
  {
    this.a = paramSpriteBatch;
  }

  public void begin()
  {
    this.a.begin();
  }

  public void disableBlending()
  {
    this.a.disableBlending();
  }

  public void dispose()
  {
    super.dispose();
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2)
  {
    this.a.draw(paramTexture, paramFloat1, paramFloat2);
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.a.draw(paramTexture, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    this.a.draw(paramTexture, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8);
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a.draw(paramTexture, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8, paramFloat9, paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2);
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a.draw(paramTexture, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2);
  }

  public void draw(Texture paramTexture, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a.draw(paramTexture, paramFloat1, paramFloat2, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void draw(Texture paramTexture, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    this.a.draw(paramTexture, paramArrayOfFloat, paramInt1, paramInt2);
  }

  public void draw(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2)
  {
    this.a.draw(paramTextureRegion, paramFloat1, paramFloat2);
  }

  public void draw(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.a.draw(paramTextureRegion, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void draw(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    this.a.draw(paramTextureRegion, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8, paramFloat9);
  }

  public void draw(TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, boolean paramBoolean)
  {
    this.a.draw(paramTextureRegion, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8, paramFloat9, paramBoolean);
  }

  public void enableBlending()
  {
    this.a.enableBlending();
  }

  public void end()
  {
    this.a.end();
  }

  public void flush()
  {
    this.a.flush();
  }

  public Color getColor()
  {
    return this.a.getColor();
  }

  public Matrix4 getProjectionMatrix()
  {
    return this.a.getProjectionMatrix();
  }

  public Matrix4 getTransformMatrix()
  {
    return this.a.getTransformMatrix();
  }

  public boolean isBlendingEnabled()
  {
    return this.a.isBlendingEnabled();
  }

  public void setBlendFunction(int paramInt1, int paramInt2)
  {
    this.a.setBlendFunction(paramInt1, paramInt2);
  }

  public void setColor(float paramFloat)
  {
    this.a.setColor(paramFloat);
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.a.setColor(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void setColor(Color paramColor)
  {
    this.a.setColor(paramColor);
  }

  public void setProjectionMatrix(Matrix4 paramMatrix4)
  {
    this.a.setProjectionMatrix(paramMatrix4);
  }

  public void setShader(ShaderProgram paramShaderProgram)
  {
    this.a.setShader(paramShaderProgram);
  }

  public void setTransformMatrix(Matrix4 paramMatrix4)
  {
    this.a.setTransformMatrix(paramMatrix4);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.k
 * JD-Core Version:    0.6.2
 */