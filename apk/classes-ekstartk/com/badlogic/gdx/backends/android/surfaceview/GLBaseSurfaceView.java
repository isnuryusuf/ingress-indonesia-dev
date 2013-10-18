package com.badlogic.gdx.backends.android.surfaceview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.opengl.GLSurfaceView.Renderer;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

public class GLBaseSurfaceView extends GLSurfaceView
  implements SurfaceHolder.Callback
{
  public static final int DEBUG_CHECK_GL_ERROR = 1;
  public static final int DEBUG_LOG_GL_CALLS = 2;
  private static final boolean DRAW_TWICE_AFTER_SIZE_CHANGED = true;
  private static final boolean LOG_RENDERER = false;
  private static final boolean LOG_SURFACE = false;
  private static final boolean LOG_THREADS = false;
  public static final int RENDERMODE_CONTINUOUSLY = 1;
  public static final int RENDERMODE_WHEN_DIRTY;
  static final GLBaseSurfaceView.GLThreadManager sGLThreadManager = new GLBaseSurfaceView.GLThreadManager();
  int mDebugFlags;
  GLSurfaceView.EGLConfigChooser mEGLConfigChooser;
  GLBaseSurfaceView.EGLContextFactory mEGLContextFactory;
  GLBaseSurfaceView.EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
  private GLBaseSurfaceView.GLThread mGLThread;
  GLBaseSurfaceView.GLWrapper mGLWrapper;
  boolean mSizeChanged = true;

  public GLBaseSurfaceView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public GLBaseSurfaceView(Context paramContext, AttributeSet paramAttributeSet)
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

  public int getRenderMode()
  {
    return this.mGLThread.getRenderMode();
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.mGLThread.requestExitAndWait();
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
    setEGLConfigChooser(new GLBaseSurfaceView.ComponentSizeChooser(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6));
  }

  public void setEGLConfigChooser(GLSurfaceView.EGLConfigChooser paramEGLConfigChooser)
  {
    checkRenderThreadState();
    this.mEGLConfigChooser = paramEGLConfigChooser;
  }

  public void setEGLConfigChooser(boolean paramBoolean)
  {
    setEGLConfigChooser(new GLBaseSurfaceView.SimpleEGLConfigChooser(paramBoolean));
  }

  public void setEGLContextFactory(GLBaseSurfaceView.EGLContextFactory paramEGLContextFactory)
  {
    checkRenderThreadState();
    this.mEGLContextFactory = paramEGLContextFactory;
  }

  public void setEGLWindowSurfaceFactory(GLBaseSurfaceView.EGLWindowSurfaceFactory paramEGLWindowSurfaceFactory)
  {
    checkRenderThreadState();
    this.mEGLWindowSurfaceFactory = paramEGLWindowSurfaceFactory;
  }

  public void setGLWrapper(GLBaseSurfaceView.GLWrapper paramGLWrapper)
  {
    this.mGLWrapper = paramGLWrapper;
  }

  public void setRenderMode(int paramInt)
  {
    this.mGLThread.setRenderMode(paramInt);
  }

  public void setRenderer(GLSurfaceView.Renderer paramRenderer)
  {
    checkRenderThreadState();
    if (this.mEGLConfigChooser == null)
      this.mEGLConfigChooser = new GLBaseSurfaceView.SimpleEGLConfigChooser(true);
    if (this.mEGLContextFactory == null)
      this.mEGLContextFactory = new GLBaseSurfaceView.DefaultContextFactory();
    if (this.mEGLWindowSurfaceFactory == null)
      this.mEGLWindowSurfaceFactory = new GLBaseSurfaceView.DefaultWindowSurfaceFactory();
    this.mGLThread = new GLBaseSurfaceView.GLThread(this, paramRenderer);
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
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLBaseSurfaceView
 * JD-Core Version:    0.6.2
 */