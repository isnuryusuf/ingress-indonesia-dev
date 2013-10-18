package com.badlogic.gdx.backends.android.surfaceview;

import javax.microedition.khronos.opengles.GL10;

class GLSurfaceViewICS$GLThreadManager
{
  private static String TAG = "GLThreadManager";
  private static final String kADRENO = "Adreno";
  private static final int kGLES_20 = 131072;
  private static final String kMSM7K_RENDERER_PREFIX = "Q3Dimension MSM7500 ";
  private GLSurfaceViewICS.GLThread mEglOwner;
  private boolean mGLESDriverCheckComplete;
  private int mGLESVersion;
  private boolean mGLESVersionCheckComplete;
  private boolean mLimitedGLESContexts;
  private boolean mMultipleGLESContextsAllowed;

  private void checkGLESVersion()
  {
    if (!this.mGLESVersionCheckComplete)
    {
      this.mGLESVersion = 131072;
      if (this.mGLESVersion >= 131072)
        this.mMultipleGLESContextsAllowed = true;
      this.mGLESVersionCheckComplete = true;
    }
  }

  public void checkGLDriver(GL10 paramGL10)
  {
    boolean bool1 = true;
    try
    {
      boolean bool2;
      if (!this.mGLESDriverCheckComplete)
      {
        checkGLESVersion();
        String str = paramGL10.glGetString(7937);
        if (this.mGLESVersion < 131072)
        {
          if (str.startsWith("Q3Dimension MSM7500 "))
            break label78;
          bool2 = bool1;
          this.mMultipleGLESContextsAllowed = bool2;
          notifyAll();
        }
        if (this.mMultipleGLESContextsAllowed)
          break label84;
      }
      while (true)
      {
        this.mLimitedGLESContexts = bool1;
        this.mGLESDriverCheckComplete = true;
        return;
        label78: bool2 = false;
        break;
        label84: bool1 = false;
      }
    }
    finally
    {
    }
  }

  public void releaseEglContextLocked(GLSurfaceViewICS.GLThread paramGLThread)
  {
    if (this.mEglOwner == paramGLThread)
      this.mEglOwner = null;
    notifyAll();
  }

  public boolean shouldReleaseEGLContextWhenPausing()
  {
    try
    {
      boolean bool = this.mLimitedGLESContexts;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean shouldTerminateEGLWhenPausing()
  {
    try
    {
      checkGLESVersion();
      boolean bool1 = this.mMultipleGLESContextsAllowed;
      if (!bool1)
      {
        bool2 = true;
        return bool2;
      }
      boolean bool2 = false;
    }
    finally
    {
    }
  }

  public void threadExiting(GLSurfaceViewICS.GLThread paramGLThread)
  {
    try
    {
      GLSurfaceViewICS.GLThread.access$1202(paramGLThread, true);
      if (this.mEglOwner == paramGLThread)
        this.mEglOwner = null;
      notifyAll();
      return;
    }
    finally
    {
    }
  }

  public boolean tryAcquireEglContextLocked(GLSurfaceViewICS.GLThread paramGLThread)
  {
    if ((this.mEglOwner == paramGLThread) || (this.mEglOwner == null))
    {
      this.mEglOwner = paramGLThread;
      notifyAll();
    }
    do
    {
      return true;
      checkGLESVersion();
    }
    while (this.mMultipleGLESContextsAllowed);
    if (this.mEglOwner != null)
      this.mEglOwner.requestReleaseEglContextLocked();
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS.GLThreadManager
 * JD-Core Version:    0.6.2
 */