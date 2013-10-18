package com.badlogic.gdx.backends.android.surfaceview;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

class GLSurfaceViewICS$DefaultContextFactory
  implements GLSurfaceViewICS.EGLContextFactory
{
  private int EGL_CONTEXT_CLIENT_VERSION = 12440;

  private GLSurfaceViewICS$DefaultContextFactory(GLSurfaceViewICS paramGLSurfaceViewICS)
  {
  }

  public EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig)
  {
    int[] arrayOfInt = new int[3];
    arrayOfInt[0] = this.EGL_CONTEXT_CLIENT_VERSION;
    arrayOfInt[1] = GLSurfaceViewICS.access$200(this.this$0);
    arrayOfInt[2] = 12344;
    EGLContext localEGLContext = EGL10.EGL_NO_CONTEXT;
    if (GLSurfaceViewICS.access$200(this.this$0) != 0);
    while (true)
    {
      return paramEGL10.eglCreateContext(paramEGLDisplay, paramEGLConfig, localEGLContext, arrayOfInt);
      arrayOfInt = null;
    }
  }

  public void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext)
  {
    if (!paramEGL10.eglDestroyContext(paramEGLDisplay, paramEGLContext))
    {
      Log.e("DefaultContextFactory", "display:" + paramEGLDisplay + " context: " + paramEGLContext);
      throw new RuntimeException("eglDestroyContext failed: " + EGLLogWrapper.getErrorString(paramEGL10.eglGetError()));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.DefaultContextFactory
 * JD-Core Version:    0.6.2
 */