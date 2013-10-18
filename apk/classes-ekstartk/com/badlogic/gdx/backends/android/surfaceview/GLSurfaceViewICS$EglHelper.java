package com.badlogic.gdx.backends.android.surfaceview;

import android.util.Log;
import android.view.SurfaceHolder;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;

class GLSurfaceViewICS$EglHelper
{
  EGL10 mEgl;
  EGLConfig mEglConfig;
  EGLContext mEglContext;
  EGLDisplay mEglDisplay;
  EGLSurface mEglSurface;

  public GLSurfaceViewICS$EglHelper(GLSurfaceViewICS paramGLSurfaceViewICS)
  {
  }

  private void throwEglException(String paramString)
  {
    throwEglException(paramString, this.mEgl.eglGetError());
  }

  private void throwEglException(String paramString, int paramInt)
  {
    throw new RuntimeException(paramString + " failed: " + EGLLogWrapper.getErrorString(paramInt));
  }

  public GL createSurface(SurfaceHolder paramSurfaceHolder)
  {
    if (this.mEgl == null)
      throw new RuntimeException("egl not initialized");
    if (this.mEglDisplay == null)
      throw new RuntimeException("eglDisplay not initialized");
    if (this.mEglConfig == null)
      throw new RuntimeException("mEglConfig not initialized");
    if ((this.mEglSurface != null) && (this.mEglSurface != EGL10.EGL_NO_SURFACE))
    {
      this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      GLSurfaceViewICS.access$500(this.this$0).destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
    }
    this.mEglSurface = GLSurfaceViewICS.access$500(this.this$0).createWindowSurface(this.mEgl, this.mEglDisplay, this.mEglConfig, paramSurfaceHolder);
    if ((this.mEglSurface == null) || (this.mEglSurface == EGL10.EGL_NO_SURFACE))
    {
      int i = this.mEgl.eglGetError();
      if (i == 12299)
      {
        Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
        return null;
      }
      throwEglException("createWindowSurface", i);
    }
    if (!this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglSurface, this.mEglSurface, this.mEglContext))
      throwEglException("eglMakeCurrent");
    GL localGL = this.mEglContext.getGL();
    if (GLSurfaceViewICS.access$600(this.this$0) != null)
      localGL = GLSurfaceViewICS.access$600(this.this$0).wrap(localGL);
    if ((0x3 & GLSurfaceViewICS.access$700(this.this$0)) != 0)
    {
      int j = 0x1 & GLSurfaceViewICS.access$700(this.this$0);
      int k = 0;
      if (j != 0)
        k = 1;
      int m = 0x2 & GLSurfaceViewICS.access$700(this.this$0);
      GLSurfaceViewICS.LogWriter localLogWriter = null;
      if (m != 0)
        localLogWriter = new GLSurfaceViewICS.LogWriter();
      localGL = GLDebugHelper.wrap(localGL, k, localLogWriter);
    }
    return localGL;
  }

  public void destroySurface()
  {
    if ((this.mEglSurface != null) && (this.mEglSurface != EGL10.EGL_NO_SURFACE))
    {
      this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      GLSurfaceViewICS.access$500(this.this$0).destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
      this.mEglSurface = null;
    }
  }

  public void finish()
  {
    if (this.mEglContext != null)
    {
      GLSurfaceViewICS.access$400(this.this$0).destroyContext(this.mEgl, this.mEglDisplay, this.mEglContext);
      this.mEglContext = null;
    }
    if (this.mEglDisplay != null)
    {
      this.mEgl.eglTerminate(this.mEglDisplay);
      this.mEglDisplay = null;
    }
  }

  public void purgeBuffers()
  {
    this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
    this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglSurface, this.mEglSurface, this.mEglContext);
  }

  public void start()
  {
    this.mEgl = ((EGL10)EGLContext.getEGL());
    this.mEglDisplay = this.mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
    if (this.mEglDisplay == EGL10.EGL_NO_DISPLAY)
      throw new RuntimeException("eglGetDisplay failed");
    int[] arrayOfInt = new int[2];
    if (!this.mEgl.eglInitialize(this.mEglDisplay, arrayOfInt))
      throw new RuntimeException("eglInitialize failed");
    this.mEglConfig = GLSurfaceViewICS.access$300(this.this$0).chooseConfig(this.mEgl, this.mEglDisplay);
    this.mEglContext = GLSurfaceViewICS.access$400(this.this$0).createContext(this.mEgl, this.mEglDisplay, this.mEglConfig);
    if ((this.mEglContext == null) || (this.mEglContext == EGL10.EGL_NO_CONTEXT))
    {
      this.mEglContext = null;
      throwEglException("createContext");
    }
    this.mEglSurface = null;
  }

  public boolean swap()
  {
    if (!this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface))
    {
      int i = this.mEgl.eglGetError();
      switch (i)
      {
      case 12300:
      case 12301:
      default:
        throwEglException("eglSwapBuffers", i);
      case 12302:
      case 12299:
      }
    }
    while (true)
    {
      return true;
      return false;
      Log.e("EglHelper", "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid=" + Thread.currentThread().getId());
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.EglHelper
 * JD-Core Version:    0.6.2
 */