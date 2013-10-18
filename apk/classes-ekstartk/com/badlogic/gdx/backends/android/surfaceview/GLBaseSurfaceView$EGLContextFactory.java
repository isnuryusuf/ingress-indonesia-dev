package com.badlogic.gdx.backends.android.surfaceview;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

public abstract interface GLBaseSurfaceView$EGLContextFactory
{
  public abstract EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig);

  public abstract void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLBaseSurfaceView.EGLContextFactory
 * JD-Core Version:    0.6.2
 */