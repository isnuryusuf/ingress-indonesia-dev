package com.badlogic.gdx.backends.android.surfaceview;

import android.opengl.GLSurfaceView.EGLConfigChooser;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

abstract class GLBaseSurfaceView$BaseConfigChooser
  implements GLSurfaceView.EGLConfigChooser
{
  protected int[] mConfigSpec;

  public GLBaseSurfaceView$BaseConfigChooser(int[] paramArrayOfInt)
  {
    this.mConfigSpec = paramArrayOfInt;
  }

  public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay)
  {
    int[] arrayOfInt = new int[1];
    paramEGL10.eglChooseConfig(paramEGLDisplay, this.mConfigSpec, null, 0, arrayOfInt);
    int i = arrayOfInt[0];
    if (i <= 0)
      throw new IllegalArgumentException("No configs match configSpec");
    EGLConfig[] arrayOfEGLConfig = new EGLConfig[i];
    paramEGL10.eglChooseConfig(paramEGLDisplay, this.mConfigSpec, arrayOfEGLConfig, i, arrayOfInt);
    EGLConfig localEGLConfig = chooseConfig(paramEGL10, paramEGLDisplay, arrayOfEGLConfig);
    if (localEGLConfig == null)
      throw new IllegalArgumentException("No config chosen");
    return localEGLConfig;
  }

  abstract EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLBaseSurfaceView.BaseConfigChooser
 * JD-Core Version:    0.6.2
 */