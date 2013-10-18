package com.badlogic.gdx.backends.android.surfaceview;

class GLBaseSurfaceView$GLThreadManager
{
  private GLBaseSurfaceView.GLThread mEglOwner;

  public void releaseEglSurfaceLocked(GLBaseSurfaceView.GLThread paramGLThread)
  {
    if (this.mEglOwner == paramGLThread)
      this.mEglOwner = null;
    notifyAll();
  }

  public void threadExiting(GLBaseSurfaceView.GLThread paramGLThread)
  {
    try
    {
      paramGLThread.mExited = true;
      if (this.mEglOwner == paramGLThread)
        this.mEglOwner = null;
      notifyAll();
      return;
    }
    finally
    {
    }
  }

  public boolean tryAcquireEglSurfaceLocked(GLBaseSurfaceView.GLThread paramGLThread)
  {
    if ((this.mEglOwner == paramGLThread) || (this.mEglOwner == null))
    {
      this.mEglOwner = paramGLThread;
      notifyAll();
      return true;
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLBaseSurfaceView.GLThreadManager
 * JD-Core Version:    0.6.2
 */