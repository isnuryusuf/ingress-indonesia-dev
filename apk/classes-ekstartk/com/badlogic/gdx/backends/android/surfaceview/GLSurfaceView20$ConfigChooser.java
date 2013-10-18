package com.badlogic.gdx.backends.android.surfaceview;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

class GLSurfaceView20$ConfigChooser
  implements GLSurfaceViewICS.EGLConfigChooser
{
  private static int EGL_OPENGL_ES2_BIT = 4;
  private static int[] s_configAttribs2 = arrayOfInt;
  protected int mAlphaSize;
  protected int mBlueSize;
  protected int mDepthSize;
  protected int mGreenSize;
  protected int mRedSize;
  protected int mStencilSize;
  private int[] mValue = new int[1];

  static
  {
    int[] arrayOfInt = new int[9];
    arrayOfInt[0] = 12324;
    arrayOfInt[1] = 4;
    arrayOfInt[2] = 12323;
    arrayOfInt[3] = 4;
    arrayOfInt[4] = 12322;
    arrayOfInt[5] = 4;
    arrayOfInt[6] = 12352;
    arrayOfInt[7] = EGL_OPENGL_ES2_BIT;
    arrayOfInt[8] = 12344;
  }

  public GLSurfaceView20$ConfigChooser(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.mRedSize = paramInt1;
    this.mGreenSize = paramInt2;
    this.mBlueSize = paramInt3;
    this.mAlphaSize = paramInt4;
    this.mDepthSize = paramInt5;
    this.mStencilSize = paramInt6;
  }

  private int findConfigAttrib(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt1, int paramInt2)
  {
    if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt1, this.mValue))
      paramInt2 = this.mValue[0];
    return paramInt2;
  }

  private void printConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig)
  {
    int[] arrayOfInt1 = { 12320, 12321, 12322, 12323, 12324, 12325, 12326, 12327, 12328, 12329, 12330, 12331, 12332, 12333, 12334, 12335, 12336, 12337, 12338, 12339, 12340, 12343, 12342, 12341, 12345, 12346, 12347, 12348, 12349, 12350, 12351, 12352, 12354 };
    String[] arrayOfString = { "EGL_BUFFER_SIZE", "EGL_ALPHA_SIZE", "EGL_BLUE_SIZE", "EGL_GREEN_SIZE", "EGL_RED_SIZE", "EGL_DEPTH_SIZE", "EGL_STENCIL_SIZE", "EGL_CONFIG_CAVEAT", "EGL_CONFIG_ID", "EGL_LEVEL", "EGL_MAX_PBUFFER_HEIGHT", "EGL_MAX_PBUFFER_PIXELS", "EGL_MAX_PBUFFER_WIDTH", "EGL_NATIVE_RENDERABLE", "EGL_NATIVE_VISUAL_ID", "EGL_NATIVE_VISUAL_TYPE", "EGL_PRESERVED_RESOURCES", "EGL_SAMPLES", "EGL_SAMPLE_BUFFERS", "EGL_SURFACE_TYPE", "EGL_TRANSPARENT_TYPE", "EGL_TRANSPARENT_RED_VALUE", "EGL_TRANSPARENT_GREEN_VALUE", "EGL_TRANSPARENT_BLUE_VALUE", "EGL_BIND_TO_TEXTURE_RGB", "EGL_BIND_TO_TEXTURE_RGBA", "EGL_MIN_SWAP_INTERVAL", "EGL_MAX_SWAP_INTERVAL", "EGL_LUMINANCE_SIZE", "EGL_ALPHA_MASK_SIZE", "EGL_COLOR_BUFFER_TYPE", "EGL_RENDERABLE_TYPE", "EGL_CONFORMANT" };
    int[] arrayOfInt2 = new int[1];
    int i = 0;
    if (i < arrayOfInt1.length)
    {
      int j = arrayOfInt1[i];
      String str1 = arrayOfString[i];
      if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, j, arrayOfInt2))
      {
        String str2 = GLSurfaceView20.TAG;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = str1;
        arrayOfObject[1] = Integer.valueOf(arrayOfInt2[0]);
        Log.w(str2, String.format("  %s: %d\n", arrayOfObject));
      }
      while (true)
      {
        i++;
        break;
        while (paramEGL10.eglGetError() != 12288);
      }
    }
  }

  private void printConfigs(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig)
  {
    int i = paramArrayOfEGLConfig.length;
    String str1 = GLSurfaceView20.TAG;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    Log.w(str1, String.format("%d configurations", arrayOfObject1));
    for (int j = 0; j < i; j++)
    {
      String str2 = GLSurfaceView20.TAG;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      Log.w(str2, String.format("Configuration %d:\n", arrayOfObject2));
      printConfig(paramEGL10, paramEGLDisplay, paramArrayOfEGLConfig[j]);
    }
  }

  public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay)
  {
    int[] arrayOfInt = new int[1];
    paramEGL10.eglChooseConfig(paramEGLDisplay, s_configAttribs2, null, 0, arrayOfInt);
    int i = arrayOfInt[0];
    if (i <= 0)
      throw new IllegalArgumentException("No configs match configSpec");
    EGLConfig[] arrayOfEGLConfig = new EGLConfig[i];
    paramEGL10.eglChooseConfig(paramEGLDisplay, s_configAttribs2, arrayOfEGLConfig, i, arrayOfInt);
    return chooseConfig(paramEGL10, paramEGLDisplay, arrayOfEGLConfig);
  }

  public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig)
  {
    int i = paramArrayOfEGLConfig.length;
    for (int j = 0; j < i; j++)
    {
      EGLConfig localEGLConfig = paramArrayOfEGLConfig[j];
      int k = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12325, 0);
      int m = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12326, 0);
      if ((k >= this.mDepthSize) && (m >= this.mStencilSize))
      {
        int n = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12324, 0);
        int i1 = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12323, 0);
        int i2 = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12322, 0);
        int i3 = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12321, 0);
        if ((n == this.mRedSize) && (i1 == this.mGreenSize) && (i2 == this.mBlueSize) && (i3 == this.mAlphaSize))
          return localEGLConfig;
      }
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20.ConfigChooser
 * JD-Core Version:    0.6.2
 */