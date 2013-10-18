package com.badlogic.gdx.backends.android.surfaceview;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public abstract interface GLSurfaceViewICS$Renderer
{
  public abstract void onDrawFrame(GL10 paramGL10);

  public abstract void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2);

  public abstract void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.Renderer
 * JD-Core Version:    0.6.2
 */