package com.badlogic.gdx.backends.android;

import com.badlogic.gdx.graphics.GL10;

public class AndroidGLU
  implements com.badlogic.gdx.graphics.GLU
{
  public String gluErrorString(int paramInt)
  {
    return android.opengl.GLU.gluErrorString(paramInt);
  }

  public void gluLookAt(GL10 paramGL10, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9)
  {
    android.opengl.GLU.gluLookAt(((AndroidGL10)paramGL10).gl, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6, paramFloat7, paramFloat8, paramFloat9);
  }

  public void gluOrtho2D(GL10 paramGL10, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    android.opengl.GLU.gluOrtho2D(((AndroidGL10)paramGL10).gl, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void gluPerspective(GL10 paramGL10, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    android.opengl.GLU.gluPerspective(((AndroidGL10)paramGL10).gl, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public boolean gluProject(float paramFloat1, float paramFloat2, float paramFloat3, float[] paramArrayOfFloat1, int paramInt1, float[] paramArrayOfFloat2, int paramInt2, int[] paramArrayOfInt, int paramInt3, float[] paramArrayOfFloat3, int paramInt4)
  {
    return android.opengl.GLU.gluProject(paramFloat1, paramFloat2, paramFloat3, paramArrayOfFloat1, paramInt1, paramArrayOfFloat2, paramInt2, paramArrayOfInt, paramInt3, paramArrayOfFloat3, paramInt4) == 1;
  }

  public boolean gluUnProject(float paramFloat1, float paramFloat2, float paramFloat3, float[] paramArrayOfFloat1, int paramInt1, float[] paramArrayOfFloat2, int paramInt2, int[] paramArrayOfInt, int paramInt3, float[] paramArrayOfFloat3, int paramInt4)
  {
    return android.opengl.GLU.gluUnProject(paramFloat1, paramFloat2, paramFloat3, paramArrayOfFloat1, paramInt1, paramArrayOfFloat2, paramInt2, paramArrayOfInt, paramInt3, paramArrayOfFloat3, paramInt4) == 1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidGLU
 * JD-Core Version:    0.6.2
 */