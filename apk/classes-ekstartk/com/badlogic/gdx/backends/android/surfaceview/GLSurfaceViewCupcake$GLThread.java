package com.badlogic.gdx.backends.android.surfaceview;

import android.opengl.GLSurfaceView.Renderer;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL10;

class GLSurfaceViewCupcake$GLThread extends Thread
{
  private boolean mDone = false;
  private GLSurfaceViewCupcake.EglHelper mEglHelper;
  private ArrayList<Runnable> mEventQueue = new ArrayList();
  private boolean mHasSurface;
  private int mHeight = 0;
  private boolean mPaused;
  private int mRenderMode = 1;
  private GLSurfaceView.Renderer mRenderer;
  private boolean mRequestRender = true;
  private boolean mSizeChanged;
  private int mWidth = 0;

  GLSurfaceViewCupcake$GLThread(GLSurfaceViewCupcake paramGLSurfaceViewCupcake, GLSurfaceView.Renderer paramRenderer)
  {
    this.mRenderer = paramRenderer;
    this.mSizeChanged = true;
    setName("GLThread");
  }

  private Runnable getEvent()
  {
    try
    {
      if (this.mEventQueue.size() > 0)
      {
        Runnable localRunnable = (Runnable)this.mEventQueue.remove(0);
        return localRunnable;
      }
      return null;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void guardedRun()
  {
    this.mEglHelper = new GLSurfaceViewCupcake.EglHelper(this.this$0);
    this.mEglHelper.start();
    int i = 1;
    GL10 localGL10 = null;
    int j = 1;
    int k;
    if (!this.mDone)
    {
      try
      {
        while (true)
        {
          Runnable localRunnable = getEvent();
          if (localRunnable == null)
            break;
          localRunnable.run();
        }
      }
      finally
      {
      }
      if (!this.mPaused)
        break label271;
      this.mEglHelper.finish();
      k = 1;
      label82: 
      while (needToWait())
        wait();
      if (!this.mDone);
    }
    else
    {
      this.mEglHelper.finish();
      return;
    }
    boolean bool = this.mSizeChanged;
    int m = this.mWidth;
    int n = this.mHeight;
    this.mSizeChanged = false;
    this.mRequestRender = false;
    int i2;
    int i1;
    if (k != 0)
    {
      this.mEglHelper.start();
      i2 = 1;
      i1 = 1;
      label161: if (i2 != 0)
      {
        localGL10 = (GL10)this.mEglHelper.createSurface(this.this$0.getHolder());
        j = 1;
      }
      if (i1 == 0)
        break label277;
      this.mRenderer.onSurfaceCreated(localGL10, this.mEglHelper.mEglConfig);
    }
    label271: label277: for (i = 0; ; i = i1)
    {
      if (j != 0)
      {
        this.mRenderer.onSurfaceChanged(localGL10, m, n);
        j = 0;
      }
      if ((m <= 0) || (n <= 0))
        break;
      this.mRenderer.onDrawFrame(localGL10);
      this.mEglHelper.swap();
      break;
      i1 = i;
      i2 = bool;
      break label161;
      k = 0;
      break label82;
    }
  }

  private boolean needToWait()
  {
    if (this.mDone);
    do
    {
      return false;
      if ((this.mPaused) || (!this.mHasSurface))
        return true;
    }
    while ((this.mWidth > 0) && (this.mHeight > 0) && ((this.mRequestRender) || (this.mRenderMode == 1)));
    return true;
  }

  public int getRenderMode()
  {
    try
    {
      int i = this.mRenderMode;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onPause()
  {
    try
    {
      this.mPaused = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onResume()
  {
    try
    {
      this.mPaused = false;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onWindowResize(int paramInt1, int paramInt2)
  {
    try
    {
      this.mWidth = paramInt1;
      this.mHeight = paramInt2;
      this.mSizeChanged = true;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void queueEvent(Runnable paramRunnable)
  {
    try
    {
      this.mEventQueue.add(paramRunnable);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public void requestExitAndWait()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 37	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread:mDone	Z
    //   7: aload_0
    //   8: invokevirtual 138	java/lang/Object:notify	()V
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_0
    //   14: invokevirtual 152	com/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread:join	()V
    //   17: return
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: athrow
    //   23: astore_2
    //   24: invokestatic 156	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   27: invokevirtual 159	java/lang/Thread:interrupt	()V
    //   30: return
    //
    // Exception table:
    //   from	to	target	type
    //   2	13	18	finally
    //   13	17	23	java/lang/InterruptedException
  }

  public void requestRender()
  {
    try
    {
      this.mRequestRender = true;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void run()
  {
    try
    {
      synchronized (GLSurfaceViewCupcake.sEglLock)
      {
        guardedRun();
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException = localInterruptedException;
      return;
    }
    finally
    {
    }
  }

  public void setRenderMode(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 1))
      throw new IllegalArgumentException("renderMode");
    try
    {
      this.mRenderMode = paramInt;
      if (paramInt == 1)
        notify();
      return;
    }
    finally
    {
    }
  }

  public void surfaceCreated()
  {
    try
    {
      this.mHasSurface = true;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void surfaceDestroyed()
  {
    try
    {
      this.mHasSurface = false;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewCupcake.GLThread
 * JD-Core Version:    0.6.2
 */