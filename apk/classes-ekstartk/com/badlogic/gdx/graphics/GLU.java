package com.badlogic.gdx.graphics;

public abstract interface GLU
{
  public abstract String gluErrorString(int paramInt);

  public abstract void gluLookAt(GL10 paramGL10, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9);

  public abstract void gluOrtho2D(GL10 paramGL10, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  public abstract void gluPerspective(GL10 paramGL10, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  public abstract boolean gluProject(float paramFloat1, float paramFloat2, float paramFloat3, float[] paramArrayOfFloat1, int paramInt1, float[] paramArrayOfFloat2, int paramInt2, int[] paramArrayOfInt, int paramInt3, float[] paramArrayOfFloat3, int paramInt4);

  public abstract boolean gluUnProject(float paramFloat1, float paramFloat2, float paramFloat3, float[] paramArrayOfFloat1, int paramInt1, float[] paramArrayOfFloat2, int paramInt2, int[] paramArrayOfInt, int paramInt3, float[] paramArrayOfFloat3, int paramInt4);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.GLU
 * JD-Core Version:    0.6.2
 */