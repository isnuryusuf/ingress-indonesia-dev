package com.badlogic.gdx.backends.android.surfaceview;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public abstract interface GLSurfaceViewICS$EGLConfigChooser
{
  public abstract EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.EGLConfigChooser
 * JD-Core Version:    0.6.2
 */