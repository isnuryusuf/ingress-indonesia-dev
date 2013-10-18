package com.badlogic.gdx.backends.android.surfaceview;

import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.view.SurfaceHolder;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;

class GLBaseSurfaceView$EglHelper
{
  EGL10 mEgl;
  EGLConfig mEglConfig;
  EGLContext mEglContext;
  EGLDisplay mEglDisplay;
  EGLSurface mEglSurface;

  public GLBaseSurfaceView$EglHelper(GLBaseSurfaceView paramGLBaseSurfaceView)
  {
  }

  private void throwEglException(String paramString)
  {
    throw new RuntimeException(paramString + " failed: " + this.mEgl.eglGetError());
  }

  public GL createSurface(SurfaceHolder paramSurfaceHolder)
  {
    if ((this.mEglSurface != null) && (this.mEglSurface != EGL10.EGL_NO_SURFACE))
    {
      this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      this.this$0.mEGLWindowSurfaceFactory.destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
    }
    this.mEglSurface = this.this$0.mEGLWindowSurfaceFactory.createWindowSurface(this.mEgl, this.mEglDisplay, this.mEglConfig, paramSurfaceHolder);
    if ((this.mEglSurface == null) || (this.mEglSurface == EGL10.EGL_NO_SURFACE))
      throwEglException("createWindowSurface");
    if (!this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglSurface, this.mEglSurface, this.mEglContext))
      throwEglException("eglMakeCurrent");
    GL localGL = this.mEglContext.getGL();
    if (this.this$0.mGLWrapper != null)
      localGL = this.this$0.mGLWrapper.wrap(localGL);
    if ((0x3 & this.this$0.mDebugFlags) != 0)
    {
      int i = 0x1 & this.this$0.mDebugFlags;
      int j = 0;
      if (i != 0)
        j = 1;
      int k = 0x2 & this.this$0.mDebugFlags;
      GLBaseSurfaceView.LogWriter localLogWriter = null;
      if (k != 0)
        localLogWriter = new GLBaseSurfaceView.LogWriter();
      localGL = GLDebugHelper.wrap(localGL, j, localLogWriter);
    }
    return localGL;
  }

  public void destroySurface()
  {
    if ((this.mEglSurface != null) && (this.mEglSurface != EGL10.EGL_NO_SURFACE))
    {
      this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      this.this$0.mEGLWindowSurfaceFactory.destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
      this.mEglSurface = null;
    }
  }

  public void finish()
  {
    if (this.mEglContext != null)
    {
      this.this$0.mEGLContextFactory.destroyContext(this.mEgl, this.mEglDisplay, this.mEglContext);
      this.mEglContext = null;
    }
    if (this.mEglDisplay != null)
    {
      this.mEgl.eglTerminate(this.mEglDisplay);
      this.mEglDisplay = null;
    }
  }

  public void start()
  {
    this.mEgl = ((EGL10)EGLContext.getEGL());
    this.mEglDisplay = this.mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
    int[] arrayOfInt = new int[2];
    this.mEgl.eglInitialize(this.mEglDisplay, arrayOfInt);
    this.mEglConfig = this.this$0.mEGLConfigChooser.chooseConfig(this.mEgl, this.mEglDisplay);
    this.mEglContext = this.this$0.mEGLContextFactory.createContext(this.mEgl, this.mEglDisplay, this.mEglConfig);
    if ((this.mEglContext == null) || (this.mEglContext == EGL10.EGL_NO_CONTEXT))
      throw new RuntimeException("createContext failed");
    this.mEglSurface = null;
  }

  public boolean swap()
  {
    this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface);
    return this.mEgl.eglGetError() != 12302;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLBaseSurfaceView.EglHelper
 * JD-Core Version:    0.6.2
 */