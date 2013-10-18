package com.badlogic.gdx.backends.android.surfaceview;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

class GLSurfaceViewICS$DefaultWindowSurfaceFactory
  implements GLSurfaceViewICS.EGLWindowSurfaceFactory
{
  public EGLSurface createWindowSurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, Object paramObject)
  {
    return paramEGL10.eglCreateWindowSurface(paramEGLDisplay, paramEGLConfig, paramObject, null);
  }

  public void destroySurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface)
  {
    paramEGL10.eglDestroySurface(paramEGLDisplay, paramEGLSurface);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.DefaultWindowSurfaceFactory
 * JD-Core Version:    0.6.2
 */