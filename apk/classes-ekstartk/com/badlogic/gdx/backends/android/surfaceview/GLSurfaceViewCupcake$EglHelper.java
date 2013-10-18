package com.badlogic.gdx.backends.android.surfaceview;

import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.view.SurfaceHolder;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;

class GLSurfaceViewCupcake$EglHelper
{
  EGL10 mEgl;
  EGLConfig mEglConfig;
  EGLContext mEglContext;
  EGLDisplay mEglDisplay;
  EGLSurface mEglSurface;

  public GLSurfaceViewCupcake$EglHelper(GLSurfaceViewCupcake paramGLSurfaceViewCupcake)
  {
  }

  public GL createSurface(SurfaceHolder paramSurfaceHolder)
  {
    if (this.mEglSurface != null)
    {
      this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      this.mEgl.eglDestroySurface(this.mEglDisplay, this.mEglSurface);
    }
    this.mEglSurface = this.mEgl.eglCreateWindowSurface(this.mEglDisplay, this.mEglConfig, paramSurfaceHolder, null);
    this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglSurface, this.mEglSurface, this.mEglContext);
    GL localGL = this.mEglContext.getGL();
    if (this.this$0.mGLWrapper != null)
      localGL = this.this$0.mGLWrapper.wrap(localGL);
    return localGL;
  }

  public void finish()
  {
    if (this.mEglSurface != null)
    {
      this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      this.mEgl.eglDestroySurface(this.mEglDisplay, this.mEglSurface);
      this.mEglSurface = null;
    }
    if (this.mEglContext != null)
    {
      this.mEgl.eglDestroyContext(this.mEglDisplay, this.mEglContext);
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
    this.mEglContext = this.mEgl.eglCreateContext(this.mEglDisplay, this.mEglConfig, EGL10.EGL_NO_CONTEXT, null);
    this.mEglSurface = null;
  }

  public boolean swap()
  {
    this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface);
    return this.mEgl.eglGetError() != 12302;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewCupcake.EglHelper
 * JD-Core Version:    0.6.2
 */