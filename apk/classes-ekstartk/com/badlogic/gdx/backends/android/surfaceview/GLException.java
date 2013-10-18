package com.badlogic.gdx.backends.android.surfaceview;

import android.opengl.GLU;

public class GLException extends RuntimeException
{
  private final int mError;

  public GLException(int paramInt)
  {
    super(getErrorString(paramInt));
    this.mError = paramInt;
  }

  public GLException(int paramInt, String paramString)
  {
    super(paramString);
    this.mError = paramInt;
  }

  private static String getErrorString(int paramInt)
  {
    String str = GLU.gluErrorString(paramInt);
    if (str == null)
      str = "Unknown error 0x" + Integer.toHexString(paramInt);
    return str;
  }

  int getError()
  {
    return this.mError;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLException
 * JD-Core Version:    0.6.2
 */