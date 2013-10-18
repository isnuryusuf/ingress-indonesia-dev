package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.utils.Disposable;
import java.nio.FloatBuffer;

public abstract interface VertexData extends Disposable
{
  public abstract void bind();

  public abstract void bind(ShaderProgram paramShaderProgram);

  public abstract void dispose();

  public abstract VertexAttributes getAttributes();

  public abstract FloatBuffer getBuffer();

  public abstract int getNumMaxVertices();

  public abstract int getNumVertices();

  public abstract void setVertices(float[] paramArrayOfFloat, int paramInt1, int paramInt2);

  public abstract void unbind();

  public abstract void unbind(ShaderProgram paramShaderProgram);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.VertexData
 * JD-Core Version:    0.6.2
 */