package com.badlogic.gdx.backends.android.surfaceview;

import android.content.Context;
import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.opengl.GLSurfaceView.Renderer;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;

public class GLSurfaceViewCupcake extends SurfaceView
  implements SurfaceHolder.Callback
{
  public static final int DEBUG_CHECK_GL_ERROR = 1;
  public static final int DEBUG_LOG_GL_CALLS = 2;
  public static final int RENDERMODE_CONTINUOUSLY = 1;
  public static final int RENDERMODE_WHEN_DIRTY;
  static final Object sEglLock = new Object();
  private int mDebugFlags;
  GLSurfaceView.EGLConfigChooser mEGLConfigChooser;
  private GLSurfaceViewCupcake.GLThread mGLThread;
  GLSurfaceViewCupcake.GLWrapper mGLWrapper;
  private boolean mHasSurface;
  private int mRenderMode;
  private GLSurfaceView.Renderer mRenderer;
  private int mSurfaceHeight;
  private int mSurfaceWidth;
  final ResolutionStrategy resolutionStrategy;

  public GLSurfaceViewCupcake(Context paramContext, AttributeSet paramAttributeSet, ResolutionStrategy paramResolutionStrategy)
  {
    super(paramContext, paramAttributeSet);
    this.resolutionStrategy = paramResolutionStrategy;
    init();
  }

  public GLSurfaceViewCupcake(Context paramContext, ResolutionStrategy paramResolutionStrategy)
  {
    super(paramContext);
    this.resolutionStrategy = paramResolutionStrategy;
    init();
  }

  private void init()
  {
    SurfaceHolder localSurfaceHolder = getHolder();
    localSurfaceHolder.addCallback(this);
    localSurfaceHolder.setType(2);
    this.mRenderMode = 1;
  }

  public int getDebugFlags()
  {
    return this.mDebugFlags;
  }

  public int getRenderMode()
  {
    return this.mRenderMode;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    ResolutionStrategy.MeasuredDimension localMeasuredDimension = this.resolutionStrategy.calcMeasures(paramInt1, paramInt2);
    setMeasuredDimension(localMeasuredDimension.width, localMeasuredDimension.height);
  }

  public void onPause()
  {
    this.mGLThread.onPause();
    this.mGLThread.requestExitAndWait();
    this.mGLThread = null;
  }

  public void onResume()
  {
    if (this.mEGLConfigChooser == null)
      this.mEGLConfigChooser = new GLSurfaceViewCupcake.SimpleEGLConfigChooser(true);
    this.mGLThread = new GLSurfaceViewCupcake.GLThread(this, this.mRenderer);
    this.mGLThread.start();
    this.mGLThread.setRenderMode(this.mRenderMode);
    if (this.mHasSurface)
      this.mGLThread.surfaceCreated();
    if ((this.mSurfaceWidth > 0) && (this.mSurfaceHeight > 0))
      this.mGLThread.onWindowResize(this.mSurfaceWidth, this.mSurfaceHeight);
    this.mGLThread.onResume();
  }

  public void queueEvent(Runnable paramRunnable)
  {
    if (this.mGLThread != null)
      this.mGLThread.queueEvent(paramRunnable);
  }

  public void requestRender()
  {
    GLSurfaceViewCupcake.GLThread localGLThread = this.mGLThread;
    if (localGLThread != null)
      localGLThread.requestRender();
  }

  public void setDebugFlags(int paramInt)
  {
    this.mDebugFlags = paramInt;
  }

  public void setEGLConfigChooser(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    setEGLConfigChooser(new GLSurfaceViewCupcake.ComponentSizeChooser(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6));
  }

  public void setEGLConfigChooser(GLSurfaceView.EGLConfigChooser paramEGLConfigChooser)
  {
    if (this.mRenderer != null)
      throw new IllegalStateException("setRenderer has already been called for this instance.");
    this.mEGLConfigChooser = paramEGLConfigChooser;
  }

  public void setEGLConfigChooser(boolean paramBoolean)
  {
    setEGLConfigChooser(new GLSurfaceViewCupcake.SimpleEGLConfigChooser(paramBoolean));
  }

  public void setGLWrapper(GLSurfaceViewCupcake.GLWrapper paramGLWrapper)
  {
    this.mGLWrapper = paramGLWrapper;
  }

  public void setRenderMode(int paramInt)
  {
    this.mRenderMode = paramInt;
    if (this.mGLThread != null)
      this.mGLThread.setRenderMode(paramInt);
  }

  public void setRenderer(GLSurfaceView.Renderer paramRenderer)
  {
    if (this.mRenderer != null)
      throw new IllegalStateException("setRenderer has already been called for this instance.");
    this.mRenderer = paramRenderer;
  }

  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.mGLThread != null)
      this.mGLThread.onWindowResize(paramInt2, paramInt3);
    this.mSurfaceWidth = paramInt2;
    this.mSurfaceHeight = paramInt3;
  }

  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (this.mGLThread != null)
      this.mGLThread.surfaceCreated();
    this.mHasSurface = true;
  }

  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    if (this.mGLThread != null)
      this.mGLThread.surfaceDestroyed();
    this.mHasSurface = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.GLSurfaceViewCupcake
 * JD-Core Version:    0.6.2
 */