package com.badlogic.gdx.backends.android.surfaceview;

import java.io.IOException;
import java.io.Writer;
import javax.microedition.khronos.egl.EGL;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGL11;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

class EGLLogWrapper
  implements EGL11
{
  private int mArgCount;
  boolean mCheckError;
  private EGL10 mEgl10;
  Writer mLog;
  boolean mLogArgumentNames;

  public EGLLogWrapper(EGL paramEGL, int paramInt, Writer paramWriter)
  {
    this.mEgl10 = ((EGL10)paramEGL);
    this.mLog = paramWriter;
    boolean bool2;
    if ((paramInt & 0x4) != 0)
    {
      bool2 = bool1;
      this.mLogArgumentNames = bool2;
      if ((paramInt & 0x1) == 0)
        break label55;
    }
    while (true)
    {
      this.mCheckError = bool1;
      return;
      bool2 = false;
      break;
      label55: bool1 = false;
    }
  }

  private void arg(String paramString, int paramInt)
  {
    arg(paramString, Integer.toString(paramInt));
  }

  private void arg(String paramString, Object paramObject)
  {
    arg(paramString, toString(paramObject));
  }

  private void arg(String paramString1, String paramString2)
  {
    int i = this.mArgCount;
    this.mArgCount = (i + 1);
    if (i > 0)
      log(", ");
    if (this.mLogArgumentNames)
      log(paramString1 + "=");
    log(paramString2);
  }

  private void arg(String paramString, EGLContext paramEGLContext)
  {
    if (paramEGLContext == EGL10.EGL_NO_CONTEXT)
    {
      arg(paramString, "EGL10.EGL_NO_CONTEXT");
      return;
    }
    arg(paramString, toString(paramEGLContext));
  }

  private void arg(String paramString, EGLDisplay paramEGLDisplay)
  {
    if (paramEGLDisplay == EGL10.EGL_DEFAULT_DISPLAY)
    {
      arg(paramString, "EGL10.EGL_DEFAULT_DISPLAY");
      return;
    }
    if (paramEGLDisplay == EGL_NO_DISPLAY)
    {
      arg(paramString, "EGL10.EGL_NO_DISPLAY");
      return;
    }
    arg(paramString, toString(paramEGLDisplay));
  }

  private void arg(String paramString, EGLSurface paramEGLSurface)
  {
    if (paramEGLSurface == EGL10.EGL_NO_SURFACE)
    {
      arg(paramString, "EGL10.EGL_NO_SURFACE");
      return;
    }
    arg(paramString, toString(paramEGLSurface));
  }

  private void arg(String paramString, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null)
    {
      arg(paramString, "null");
      return;
    }
    arg(paramString, toString(paramArrayOfInt.length, paramArrayOfInt, 0));
  }

  private void arg(String paramString, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
    {
      arg(paramString, "null");
      return;
    }
    arg(paramString, toString(paramArrayOfObject.length, paramArrayOfObject, 0));
  }

  private void begin(String paramString)
  {
    log(paramString + '(');
    this.mArgCount = 0;
  }

  private void checkError()
  {
    int i = this.mEgl10.eglGetError();
    if (i != 12288)
    {
      String str = "eglError: " + getErrorString(i);
      logLine(str);
      if (this.mCheckError)
        throw new GLException(i, str);
    }
  }

  private void end()
  {
    log(");\n");
    flush();
  }

  private void flush()
  {
    try
    {
      this.mLog.flush();
      return;
    }
    catch (IOException localIOException)
    {
      this.mLog = null;
    }
  }

  public static String getErrorString(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return getHex(paramInt);
    case 12288:
      return "EGL_SUCCESS";
    case 12289:
      return "EGL_NOT_INITIALIZED";
    case 12290:
      return "EGL_BAD_ACCESS";
    case 12291:
      return "EGL_BAD_ALLOC";
    case 12292:
      return "EGL_BAD_ATTRIBUTE";
    case 12293:
      return "EGL_BAD_CONFIG";
    case 12294:
      return "EGL_BAD_CONTEXT";
    case 12295:
      return "EGL_BAD_CURRENT_SURFACE";
    case 12296:
      return "EGL_BAD_DISPLAY";
    case 12297:
      return "EGL_BAD_MATCH";
    case 12298:
      return "EGL_BAD_NATIVE_PIXMAP";
    case 12299:
      return "EGL_BAD_NATIVE_WINDOW";
    case 12300:
      return "EGL_BAD_PARAMETER";
    case 12301:
      return "EGL_BAD_SURFACE";
    case 12302:
    }
    return "EGL_CONTEXT_LOST";
  }

  private static String getHex(int paramInt)
  {
    return "0x" + Integer.toHexString(paramInt);
  }

  private void log(String paramString)
  {
    try
    {
      this.mLog.write(paramString);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private void logLine(String paramString)
  {
    log(paramString + '\n');
  }

  private void returns(int paramInt)
  {
    returns(Integer.toString(paramInt));
  }

  private void returns(Object paramObject)
  {
    returns(toString(paramObject));
  }

  private void returns(String paramString)
  {
    log(" returns " + paramString + ";\n");
    flush();
  }

  private void returns(boolean paramBoolean)
  {
    returns(Boolean.toString(paramBoolean));
  }

  private String toString(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    int i = paramArrayOfInt.length;
    int j = 0;
    if (j < paramInt1)
    {
      int k = paramInt2 + j;
      localStringBuilder.append(" [" + k + "] = ");
      if ((k < 0) || (k >= i))
        localStringBuilder.append("out of bounds");
      while (true)
      {
        localStringBuilder.append('\n');
        j++;
        break;
        localStringBuilder.append(paramArrayOfInt[k]);
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private String toString(int paramInt1, Object[] paramArrayOfObject, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\n");
    int i = paramArrayOfObject.length;
    int j = 0;
    if (j < paramInt1)
    {
      int k = paramInt2 + j;
      localStringBuilder.append(" [" + k + "] = ");
      if ((k < 0) || (k >= i))
        localStringBuilder.append("out of bounds");
      while (true)
      {
        localStringBuilder.append('\n');
        j++;
        break;
        localStringBuilder.append(paramArrayOfObject[k]);
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private String toString(Object paramObject)
  {
    if (paramObject == null)
      return "null";
    return paramObject.toString();
  }

  public boolean eglChooseConfig(EGLDisplay paramEGLDisplay, int[] paramArrayOfInt1, EGLConfig[] paramArrayOfEGLConfig, int paramInt, int[] paramArrayOfInt2)
  {
    begin("eglChooseConfig");
    arg("display", paramEGLDisplay);
    arg("attrib_list", paramArrayOfInt1);
    arg("config_size", paramInt);
    end();
    boolean bool = this.mEgl10.eglChooseConfig(paramEGLDisplay, paramArrayOfInt1, paramArrayOfEGLConfig, paramInt, paramArrayOfInt2);
    arg("configs", paramArrayOfEGLConfig);
    arg("num_config", paramArrayOfInt2);
    returns(bool);
    checkError();
    return bool;
  }

  public boolean eglCopyBuffers(EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface, Object paramObject)
  {
    begin("eglCopyBuffers");
    arg("display", paramEGLDisplay);
    arg("surface", paramEGLSurface);
    arg("native_pixmap", paramObject);
    end();
    boolean bool = this.mEgl10.eglCopyBuffers(paramEGLDisplay, paramEGLSurface, paramObject);
    returns(bool);
    checkError();
    return bool;
  }

  public EGLContext eglCreateContext(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, EGLContext paramEGLContext, int[] paramArrayOfInt)
  {
    begin("eglCreateContext");
    arg("display", paramEGLDisplay);
    arg("config", paramEGLConfig);
    arg("share_context", paramEGLContext);
    arg("attrib_list", paramArrayOfInt);
    end();
    EGLContext localEGLContext = this.mEgl10.eglCreateContext(paramEGLDisplay, paramEGLConfig, paramEGLContext, paramArrayOfInt);
    returns(localEGLContext);
    checkError();
    return localEGLContext;
  }

  public EGLSurface eglCreatePbufferSurface(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int[] paramArrayOfInt)
  {
    begin("eglCreatePbufferSurface");
    arg("display", paramEGLDisplay);
    arg("config", paramEGLConfig);
    arg("attrib_list", paramArrayOfInt);
    end();
    EGLSurface localEGLSurface = this.mEgl10.eglCreatePbufferSurface(paramEGLDisplay, paramEGLConfig, paramArrayOfInt);
    returns(localEGLSurface);
    checkError();
    return localEGLSurface;
  }

  public EGLSurface eglCreatePixmapSurface(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, Object paramObject, int[] paramArrayOfInt)
  {
    begin("eglCreatePixmapSurface");
    arg("display", paramEGLDisplay);
    arg("config", paramEGLConfig);
    arg("native_pixmap", paramObject);
    arg("attrib_list", paramArrayOfInt);
    end();
    EGLSurface localEGLSurface = this.mEgl10.eglCreatePixmapSurface(paramEGLDisplay, paramEGLConfig, paramObject, paramArrayOfInt);
    returns(localEGLSurface);
    checkError();
    return localEGLSurface;
  }

  public EGLSurface eglCreateWindowSurface(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, Object paramObject, int[] paramArrayOfInt)
  {
    begin("eglCreateWindowSurface");
    arg("display", paramEGLDisplay);
    arg("config", paramEGLConfig);
    arg("native_window", paramObject);
    arg("attrib_list", paramArrayOfInt);
    end();
    EGLSurface localEGLSurface = this.mEgl10.eglCreateWindowSurface(paramEGLDisplay, paramEGLConfig, paramObject, paramArrayOfInt);
    returns(localEGLSurface);
    checkError();
    return localEGLSurface;
  }

  public boolean eglDestroyContext(EGLDisplay paramEGLDisplay, EGLContext paramEGLContext)
  {
    begin("eglDestroyContext");
    arg("display", paramEGLDisplay);
    arg("context", paramEGLContext);
    end();
    boolean bool = this.mEgl10.eglDestroyContext(paramEGLDisplay, paramEGLContext);
    returns(bool);
    checkError();
    return bool;
  }

  public boolean eglDestroySurface(EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface)
  {
    begin("eglDestroySurface");
    arg("display", paramEGLDisplay);
    arg("surface", paramEGLSurface);
    end();
    boolean bool = this.mEgl10.eglDestroySurface(paramEGLDisplay, paramEGLSurface);
    returns(bool);
    checkError();
    return bool;
  }

  public boolean eglGetConfigAttrib(EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt, int[] paramArrayOfInt)
  {
    begin("eglGetConfigAttrib");
    arg("display", paramEGLDisplay);
    arg("config", paramEGLConfig);
    arg("attribute", paramInt);
    end();
    boolean bool = this.mEgl10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt, paramArrayOfInt);
    arg("value", paramArrayOfInt);
    returns(bool);
    checkError();
    return false;
  }

  public boolean eglGetConfigs(EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig, int paramInt, int[] paramArrayOfInt)
  {
    begin("eglGetConfigs");
    arg("display", paramEGLDisplay);
    arg("config_size", paramInt);
    end();
    boolean bool = this.mEgl10.eglGetConfigs(paramEGLDisplay, paramArrayOfEGLConfig, paramInt, paramArrayOfInt);
    arg("configs", paramArrayOfEGLConfig);
    arg("num_config", paramArrayOfInt);
    returns(bool);
    checkError();
    return bool;
  }

  public EGLContext eglGetCurrentContext()
  {
    begin("eglGetCurrentContext");
    end();
    EGLContext localEGLContext = this.mEgl10.eglGetCurrentContext();
    returns(localEGLContext);
    checkError();
    return localEGLContext;
  }

  public EGLDisplay eglGetCurrentDisplay()
  {
    begin("eglGetCurrentDisplay");
    end();
    EGLDisplay localEGLDisplay = this.mEgl10.eglGetCurrentDisplay();
    returns(localEGLDisplay);
    checkError();
    return localEGLDisplay;
  }

  public EGLSurface eglGetCurrentSurface(int paramInt)
  {
    begin("eglGetCurrentSurface");
    arg("readdraw", paramInt);
    end();
    EGLSurface localEGLSurface = this.mEgl10.eglGetCurrentSurface(paramInt);
    returns(localEGLSurface);
    checkError();
    return localEGLSurface;
  }

  public EGLDisplay eglGetDisplay(Object paramObject)
  {
    begin("eglGetDisplay");
    arg("native_display", paramObject);
    end();
    EGLDisplay localEGLDisplay = this.mEgl10.eglGetDisplay(paramObject);
    returns(localEGLDisplay);
    checkError();
    return localEGLDisplay;
  }

  public int eglGetError()
  {
    begin("eglGetError");
    end();
    int i = this.mEgl10.eglGetError();
    returns(getErrorString(i));
    return i;
  }

  public boolean eglInitialize(EGLDisplay paramEGLDisplay, int[] paramArrayOfInt)
  {
    begin("eglInitialize");
    arg("display", paramEGLDisplay);
    end();
    boolean bool = this.mEgl10.eglInitialize(paramEGLDisplay, paramArrayOfInt);
    returns(bool);
    arg("major_minor", paramArrayOfInt);
    checkError();
    return bool;
  }

  public boolean eglMakeCurrent(EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface1, EGLSurface paramEGLSurface2, EGLContext paramEGLContext)
  {
    begin("eglMakeCurrent");
    arg("display", paramEGLDisplay);
    arg("draw", paramEGLSurface1);
    arg("read", paramEGLSurface2);
    arg("context", paramEGLContext);
    end();
    boolean bool = this.mEgl10.eglMakeCurrent(paramEGLDisplay, paramEGLSurface1, paramEGLSurface2, paramEGLContext);
    returns(bool);
    checkError();
    return bool;
  }

  public boolean eglQueryContext(EGLDisplay paramEGLDisplay, EGLContext paramEGLContext, int paramInt, int[] paramArrayOfInt)
  {
    begin("eglQueryContext");
    arg("display", paramEGLDisplay);
    arg("context", paramEGLContext);
    arg("attribute", paramInt);
    end();
    boolean bool = this.mEgl10.eglQueryContext(paramEGLDisplay, paramEGLContext, paramInt, paramArrayOfInt);
    returns(paramArrayOfInt[0]);
    returns(bool);
    checkError();
    return bool;
  }

  public String eglQueryString(EGLDisplay paramEGLDisplay, int paramInt)
  {
    begin("eglQueryString");
    arg("display", paramEGLDisplay);
    arg("name", paramInt);
    end();
    String str = this.mEgl10.eglQueryString(paramEGLDisplay, paramInt);
    returns(str);
    checkError();
    return str;
  }

  public boolean eglQuerySurface(EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface, int paramInt, int[] paramArrayOfInt)
  {
    begin("eglQuerySurface");
    arg("display", paramEGLDisplay);
    arg("surface", paramEGLSurface);
    arg("attribute", paramInt);
    end();
    boolean bool = this.mEgl10.eglQuerySurface(paramEGLDisplay, paramEGLSurface, paramInt, paramArrayOfInt);
    returns(paramArrayOfInt[0]);
    returns(bool);
    checkError();
    return bool;
  }

  public boolean eglSwapBuffers(EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface)
  {
    begin("eglInitialize");
    arg("display", paramEGLDisplay);
    arg("surface", paramEGLSurface);
    end();
    boolean bool = this.mEgl10.eglSwapBuffers(paramEGLDisplay, paramEGLSurface);
    returns(bool);
    checkError();
    return bool;
  }

  public boolean eglTerminate(EGLDisplay paramEGLDisplay)
  {
    begin("eglTerminate");
    arg("display", paramEGLDisplay);
    end();
    boolean bool = this.mEgl10.eglTerminate(paramEGLDisplay);
    returns(bool);
    checkError();
    return bool;
  }

  public boolean eglWaitGL()
  {
    begin("eglWaitGL");
    end();
    boolean bool = this.mEgl10.eglWaitGL();
    returns(bool);
    checkError();
    return bool;
  }

  public boolean eglWaitNative(int paramInt, Object paramObject)
  {
    begin("eglWaitNative");
    arg("engine", paramInt);
    arg("bindTarget", paramObject);
    end();
    boolean bool = this.mEgl10.eglWaitNative(paramInt, paramObject);
    returns(bool);
    checkError();
    return bool;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.EGLLogWrapper
 * JD-Core Version:    0.6.2
 */