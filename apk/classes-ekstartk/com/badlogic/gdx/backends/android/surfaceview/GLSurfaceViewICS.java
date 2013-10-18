package com.badlogic.gdx.backends.android.surfaceview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;

public class GLSurfaceViewICS extends SurfaceView
  implements SurfaceHolder.Callback
{
  public static final int DEBUG_CHECK_GL_ERROR = 1;
  public static final int DEBUG_LOG_GL_CALLS = 2;
  private static final boolean DRAW_TWICE_AFTER_SIZE_CHANGED = true;
  private static final boolean LOG_ATTACH_DETACH = false;
  private static final boolean LOG_EGL = false;
  private static final boolean LOG_PAUSE_RESUME = false;
  private static final boolean LOG_RENDERER = false;
  private static final boolean LOG_RENDERER_DRAW_FRAME = false;
  private static final boolean LOG_SURFACE = false;
  private static final boolean LOG_THREADS = false;
  public static final int RENDERMODE_CONTINUOUSLY = 1;
  public static final int RENDERMODE_WHEN_DIRTY = 0;
  private static final String TAG = "GLSurfaceView";
  private static final GLSurfaceViewICS.GLThreadManager sGLThreadManager = new GLSurfaceViewICS.GLThreadManager(null);
  private int mDebugFlags;
  private boolean mDetached;
  private GLSurfaceViewICS.EGLConfigChooser mEGLConfigChooser;
  private int mEGLContextClientVersion;
  private GLSurfaceViewICS.EGLContextFactory mEGLContextFactory;
  private GLSurfaceViewICS.EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
  private GLSurfaceViewICS.GLThread mGLThread;
  private GLSurfaceViewICS.GLWrapper mGLWrapper;
  private boolean mPreserveEGLContextOnPause;
  private GLSurfaceViewICS.Renderer mRenderer;
  private boolean mSizeChanged = true;

  public GLSurfaceViewICS(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public GLSurfaceViewICS(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void checkRenderThreadState()
  {
    if (this.mGLThread != null)
      throw new IllegalStateException("setRenderer has already been called for this instance.");
  }

  private void init()
  {
    getHolder().addCallback(this);
  }

  public int getDebugFlags()
  {
    return this.mDebugFlags;
  }

  public boolean getPreserveEGLContextOnPause()
  {
    return this.mPreserveEGLContextOnPause;
  }

  public int getRenderMode()
  {
    return this.mGLThread.getRenderMode();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((this.mDetached) && (this.mRenderer != null))
      if (this.mGLThread == null)
        break label75;
    label75: for (int i = this.mGLThread.getRenderMode(); ; i = 1)
    {
      this.mGLThread = new GLSurfaceViewICS.GLThread(this, this.mRenderer);
      if (i != 1)
        this.mGLThread.setRenderMode(i);
      this.mGLThread.start();
      this.mDetached = false;
      return;
    }
  }

  protected void onDetachedFromWindow()
  {
    if (this.mGLThread != null)
      this.mGLThread.requestExitAndWait();
    this.mDetached = true;
    super.onDetachedFromWindow();
  }

  public void onPause()
  {
    this.mGLThread.onPause();
  }

  public void onResume()
  {
    this.mGLThread.onResume();
  }

  public void queueEvent(Runnable paramRunnable)
  {
    this.mGLThread.queueEvent(paramRunnable);
  }

  public void requestRender()
  {
    this.mGLThread.requestRender();
  }

  public void setDebugFlags(int paramInt)
  {
    this.mDebugFlags = paramInt;
  }

  public void setEGLConfigChooser(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    setEGLConfigChooser(new GLSurfaceViewICS.ComponentSizeChooser(this, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6));
  }

  public void setEGLConfigChooser(GLSurfaceViewICS.EGLConfigChooser paramEGLConfigChooser)
  {
    checkRenderThreadState();
    this.mEGLConfigChooser = paramEGLConfigChooser;
  }

  public void setEGLConfigChooser(boolean paramBoolean)
  {
    setEGLConfigChooser(new GLSurfaceViewICS.SimpleEGLConfigChooser(this, paramBoolean));
  }

  public void setEGLContextClientVersion(int paramInt)
  {
    checkRenderThreadState();
    this.mEGLContextClientVersion = paramInt;
  }

  public void setEGLContextFactory(GLSurfaceViewICS.EGLContextFactory paramEGLContextFactory)
  {
    checkRenderThreadState();
    this.mEGLContextFactory = paramEGLContextFactory;
  }

  public void setEGLWindowSurfaceFactory(GLSurfaceViewICS.EGLWindowSurfaceFactory paramEGLWindowSurfaceFactory)
  {
    checkRenderThreadState();
    this.mEGLWindowSurfaceFactory = paramEGLWindowSurfaceFactory;
  }

  public void setGLWrapper(GLSurfaceViewICS.GLWrapper paramGLWrapper)
  {
    this.mGLWrapper = paramGLWrapper;
  }

  public void setPreserveEGLContextOnPause(boolean paramBoolean)
  {
    this.mPreserveEGLContextOnPause = paramBoolean;
  }

  public void setRenderMode(int paramInt)
  {
    this.mGLThread.setRenderMode(paramInt);
  }

  public void setRenderer(GLSurfaceViewICS.Renderer paramRenderer)
  {
    checkRenderThreadState();
    if (this.mEGLConfigChooser == null)
      this.mEGLConfigChooser = new GLSurfaceViewICS.SimpleEGLConfigChooser(this, true);
    if (this.mEGLContextFactory == null)
      this.mEGLContextFactory = new GLSurfaceViewICS.DefaultContextFactory(this, null);
    if (this.mEGLWindowSurfaceFactory == null)
      this.mEGLWindowSurfaceFactory = new GLSurfaceViewICS.DefaultWindowSurfaceFactory(null);
    this.mRenderer = paramRenderer;
    this.mGLThread = new GLSurfaceViewICS.GLThread(this, paramRenderer);
    this.mGLThread.start();
  }

  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    this.mGLThread.onWindowResize(paramInt2, paramInt3);
  }

  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    this.mGLThread.surfaceCreated();
  }

  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.mGLThread.surfaceDestroyed();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewICS
 * JD-Core Version:    0.6.2
 */