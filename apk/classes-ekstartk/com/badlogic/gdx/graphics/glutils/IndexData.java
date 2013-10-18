package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.utils.Disposable;
import java.nio.ShortBuffer;

public abstract interface IndexData extends Disposable
{
  public abstract void bind();

  public abstract void dispose();

  public abstract ShortBuffer getBuffer();

  public abstract int getNumIndices();

  public abstract int getNumMaxIndices();

  public abstract void invalidate();

  public abstract void setIndices(short[] paramArrayOfShort, int paramInt1, int paramInt2);

  public abstract void unbind();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.IndexData
 * JD-Core Version:    0.6.2
 */