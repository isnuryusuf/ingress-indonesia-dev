package com.badlogic.gdx.backends.android.surfaceview;

import java.io.Writer;
import javax.microedition.khronos.egl.EGL;
import javax.microedition.khronos.opengles.GL;

public class GLDebugHelper
{
  public static final int CONFIG_CHECK_GL_ERROR = 1;
  public static final int CONFIG_CHECK_THREAD = 2;
  public static final int CONFIG_LOG_ARGUMENT_NAMES = 4;
  public static final int ERROR_WRONG_THREAD = 28672;

  public static EGL wrap(EGL paramEGL, int paramInt, Writer paramWriter)
  {
    if (paramWriter != null)
      paramEGL = new EGLLogWrapper(paramEGL, paramInt, paramWriter);
    return paramEGL;
  }

  public static GL wrap(GL paramGL, int paramInt, Writer paramWriter)
  {
    if (paramInt != 0);
    for (Object localObject = new GLErrorWrapper(paramGL, paramInt); ; localObject = paramGL)
    {
      if (paramWriter != null)
      {
        if ((paramInt & 0x4) != 0);
        for (boolean bool = true; ; bool = false)
          return new GLLogWrapper((GL)localObject, paramWriter, bool);
      }
      return localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLDebugHelper
 * JD-Core Version:    0.6.2
 */