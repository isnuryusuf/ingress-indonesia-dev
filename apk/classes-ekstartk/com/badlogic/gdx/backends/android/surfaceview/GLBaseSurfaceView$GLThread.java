package com.badlogic.gdx.backends.android.surfaceview;

import android.opengl.GLSurfaceView.Renderer;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL10;

class GLBaseSurfaceView$GLThread extends Thread
{
  private GLBaseSurfaceView.EglHelper mEglHelper;
  private ArrayList<Runnable> mEventQueue = new ArrayList();
  boolean mExited;
  private boolean mHasSurface;
  private boolean mHaveEgl;
  private int mHeight = 0;
  private boolean mPaused;
  private boolean mRenderComplete;
  private int mRenderMode = 1;
  private GLSurfaceView.Renderer mRenderer;
  private boolean mRequestRender = true;
  private boolean mShouldExit;
  private boolean mWaitingForSurface;
  private int mWidth = 0;

  GLBaseSurfaceView$GLThread(GLBaseSurfaceView paramGLBaseSurfaceView, GLSurfaceView.Renderer paramRenderer)
  {
    this.mRenderer = paramRenderer;
  }

  private void guardedRun()
  {
    this.mEglHelper = new GLBaseSurfaceView.EglHelper(this.this$0);
    Object localObject1 = null;
    int i = 0;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    Object localObject2 = null;
    while (true)
      try
      {
        synchronized (GLBaseSurfaceView.sGLThreadManager)
        {
          if (this.mShouldExit)
            synchronized (GLBaseSurfaceView.sGLThreadManager)
            {
              stopEglLocked();
              return;
            }
          if (!this.mEventQueue.isEmpty())
          {
            Runnable localRunnable = (Runnable)this.mEventQueue.remove(0);
            i2 = i1;
            i3 = n;
            i4 = m;
            i5 = k;
            i6 = j;
            i7 = i;
            localObject7 = localRunnable;
            if (localObject7 != null)
            {
              ((Runnable)localObject7).run();
              i = i7;
              j = i6;
              k = i5;
              m = i4;
              n = i3;
              i1 = i2;
              localObject1 = null;
            }
          }
          else
          {
            if ((this.mHaveEgl) && (this.mPaused))
              stopEglLocked();
            if ((!this.mHasSurface) && (!this.mWaitingForSurface))
            {
              if (this.mHaveEgl)
                stopEglLocked();
              this.mWaitingForSurface = true;
              GLBaseSurfaceView.sGLThreadManager.notifyAll();
            }
            if ((this.mHasSurface) && (this.mWaitingForSurface))
            {
              this.mWaitingForSurface = false;
              GLBaseSurfaceView.sGLThreadManager.notifyAll();
            }
            if (k != 0)
            {
              this.mRenderComplete = true;
              GLBaseSurfaceView.sGLThreadManager.notifyAll();
              k = 0;
              m = 0;
            }
            if ((!this.mPaused) && (this.mHasSurface) && (this.mWidth > 0) && (this.mHeight > 0) && ((this.mRequestRender) || (this.mRenderMode == 1)))
            {
              if ((!this.mHaveEgl) && (GLBaseSurfaceView.sGLThreadManager.tryAcquireEglSurfaceLocked(this)))
              {
                this.mHaveEgl = true;
                this.mEglHelper.start();
                GLBaseSurfaceView.sGLThreadManager.notifyAll();
                n = 1;
                i1 = 1;
              }
              if (this.mHaveEgl)
              {
                if (this.this$0.mSizeChanged)
                {
                  j = this.mWidth;
                  i = this.mHeight;
                  this.this$0.mSizeChanged = false;
                  m = 1;
                  n = 1;
                  GLBaseSurfaceView.sGLThreadManager.notifyAll();
                  Object localObject6 = localObject1;
                  i2 = i1;
                  i3 = n;
                  i4 = m;
                  i5 = k;
                  i6 = j;
                  i7 = i;
                  localObject7 = localObject6;
                  continue;
                }
                this.mRequestRender = false;
              }
            }
          }
        }
      }
      finally
      {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Object localObject7;
        Object localObject8;
        synchronized (GLBaseSurfaceView.sGLThreadManager)
        {
          stopEglLocked();
          throw localObject3;
          GLBaseSurfaceView.sGLThreadManager.wait();
          continue;
          if (i2 != 0)
          {
            GL10 localGL10 = (GL10)this.mEglHelper.createSurface(this.this$0.getHolder());
            this.mRenderer.onSurfaceCreated(localGL10, this.mEglHelper.mEglConfig);
            localObject2 = localGL10;
            i2 = 0;
          }
          if (i3 != 0)
          {
            this.mRenderer.onSurfaceChanged(localObject2, i6, i7);
            i3 = 0;
          }
          this.mRenderer.onDrawFrame(localObject2);
          this.mEglHelper.swap();
          if (i4 != 0)
          {
            m = i4;
            n = i3;
            i1 = i2;
            localObject1 = localObject7;
            i = i7;
            j = i6;
            k = 1;
          }
        }
        i = i7;
        j = i6;
        k = i5;
        m = i4;
        n = i3;
        i1 = i2;
        localObject1 = localObject8;
      }
  }

  private void stopEglLocked()
  {
    if (this.mHaveEgl)
    {
      this.mHaveEgl = false;
      this.mEglHelper.destroySurface();
      this.mEglHelper.finish();
      GLBaseSurfaceView.sGLThreadManager.releaseEglSurfaceLocked(this);
    }
  }

  public int getRenderMode()
  {
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      int i = this.mRenderMode;
      return i;
    }
  }

  public void onPause()
  {
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mPaused = true;
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      return;
    }
  }

  public void onResume()
  {
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mPaused = false;
      this.mRequestRender = true;
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      return;
    }
  }

  public void onWindowResize(int paramInt1, int paramInt2)
  {
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mWidth = paramInt1;
      this.mHeight = paramInt2;
      this.this$0.mSizeChanged = true;
      this.mRequestRender = true;
      this.mRenderComplete = false;
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      while (true)
        if ((!this.mExited) && (!this.mPaused))
        {
          boolean bool = this.mRenderComplete;
          if (!bool)
            try
            {
              GLBaseSurfaceView.sGLThreadManager.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
        }
    }
  }

  public void queueEvent(Runnable paramRunnable)
  {
    if (paramRunnable == null)
      throw new IllegalArgumentException("r must not be null");
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mEventQueue.add(paramRunnable);
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      return;
    }
  }

  public void requestExitAndWait()
  {
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mShouldExit = true;
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      while (true)
      {
        boolean bool = this.mExited;
        if (!bool)
          try
          {
            GLBaseSurfaceView.sGLThreadManager.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            Thread.currentThread().interrupt();
          }
      }
    }
  }

  public void requestRender()
  {
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mRequestRender = true;
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      return;
    }
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 185	java/lang/StringBuilder
    //   4: dup
    //   5: ldc 187
    //   7: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   10: aload_0
    //   11: invokevirtual 192	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread:getId	()J
    //   14: invokevirtual 196	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   17: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   20: invokevirtual 203	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread:setName	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: invokespecial 205	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread:guardedRun	()V
    //   27: getstatic 62	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView:sGLThreadManager	Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;
    //   30: aload_0
    //   31: invokevirtual 208	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager:threadExiting	(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V
    //   34: return
    //   35: astore_2
    //   36: getstatic 62	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView:sGLThreadManager	Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;
    //   39: aload_0
    //   40: invokevirtual 208	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager:threadExiting	(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V
    //   43: return
    //   44: astore_1
    //   45: getstatic 62	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView:sGLThreadManager	Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;
    //   48: aload_0
    //   49: invokevirtual 208	com/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager:threadExiting	(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V
    //   52: aload_1
    //   53: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   23	27	35	java/lang/InterruptedException
    //   23	27	44	finally
  }

  public void setRenderMode(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 1))
      throw new IllegalArgumentException("renderMode");
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mRenderMode = paramInt;
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      return;
    }
  }

  public void surfaceCreated()
  {
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mHasSurface = true;
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      return;
    }
  }

  public void surfaceDestroyed()
  {
    synchronized (GLBaseSurfaceView.sGLThreadManager)
    {
      this.mHasSurface = false;
      GLBaseSurfaceView.sGLThreadManager.notifyAll();
      while (true)
        if (!this.mWaitingForSurface)
        {
          boolean bool = this.mExited;
          if (!bool)
            try
            {
              GLBaseSurfaceView.sGLThreadManager.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
        }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLBaseSurfaceView.GLThread
 * JD-Core Version:    0.6.2
 */