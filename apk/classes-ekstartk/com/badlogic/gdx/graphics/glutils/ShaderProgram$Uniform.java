package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.BufferUtils;
import java.nio.FloatBuffer;

public final class ShaderProgram$Uniform
{
  private int uniformLocation;
  private final String uniformName;
  private final int uniformType;

  ShaderProgram$Uniform(ShaderProgram paramShaderProgram, String paramString, int paramInt)
  {
    this.uniformName = paramString;
    this.uniformType = paramInt;
    this.uniformLocation = -1;
  }

  final void fetchLocation(int paramInt)
  {
    this.uniformLocation = Gdx.gl20.glGetUniformLocation(paramInt, this.uniformName);
    if (this.uniformLocation == -1)
      throw new IllegalStateException("Can't find location of uniform: " + this.uniformName);
  }

  public final int getLocation()
  {
    return this.uniformLocation;
  }

  public final int getType()
  {
    return this.uniformType;
  }

  public final void setUniformMatrix(Matrix3 paramMatrix3)
  {
    setUniformMatrix(paramMatrix3, false);
  }

  public final void setUniformMatrix(Matrix3 paramMatrix3, boolean paramBoolean)
  {
    FloatBuffer localFloatBuffer = this.this$0.matrix;
    float[] arrayOfFloat = paramMatrix3.getValues();
    localFloatBuffer.clear();
    BufferUtils.copy(arrayOfFloat, localFloatBuffer, arrayOfFloat.length, 0);
    Gdx.gl20.glUniformMatrix3fv(this.uniformLocation, 1, paramBoolean, localFloatBuffer);
  }

  public final void setUniformMatrix(Matrix4 paramMatrix4)
  {
    setUniformMatrix(paramMatrix4, false);
  }

  public final void setUniformMatrix(Matrix4 paramMatrix4, boolean paramBoolean)
  {
    FloatBuffer localFloatBuffer = this.this$0.matrix;
    localFloatBuffer.clear();
    BufferUtils.copy(paramMatrix4.val, localFloatBuffer, paramMatrix4.val.length, 0);
    Gdx.gl20.glUniformMatrix4fv(this.uniformLocation, 1, paramBoolean, localFloatBuffer);
  }

  public final void setUniformf(float paramFloat)
  {
    Gdx.gl20.glUniform1f(this.uniformLocation, paramFloat);
  }

  public final void setUniformf(float paramFloat1, float paramFloat2)
  {
    Gdx.gl20.glUniform2f(this.uniformLocation, paramFloat1, paramFloat2);
  }

  public final void setUniformf(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    Gdx.gl20.glUniform3f(this.uniformLocation, paramFloat1, paramFloat2, paramFloat3);
  }

  public final void setUniformf(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    Gdx.gl20.glUniform4f(this.uniformLocation, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public final void setUniformi(int paramInt)
  {
    Gdx.gl20.glUniform1i(this.uniformLocation, paramInt);
  }

  public final void setUniformi(int paramInt1, int paramInt2)
  {
    Gdx.gl20.glUniform2i(this.uniformLocation, paramInt1, paramInt2);
  }

  public final void setUniformi(int paramInt1, int paramInt2, int paramInt3)
  {
    Gdx.gl20.glUniform3i(this.uniformLocation, paramInt1, paramInt2, paramInt3);
  }

  public final void setUniformi(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Gdx.gl20.glUniform4i(this.uniformLocation, paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ShaderProgram.Uniform
 * JD-Core Version:    0.6.2
 */