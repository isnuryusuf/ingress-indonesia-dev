package com.badlogic.gdx.backends.android.surfaceview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;

public class DefaultGLSurfaceView extends GLSurfaceView
{
  final ResolutionStrategy resolutionStrategy;

  public DefaultGLSurfaceView(Context paramContext, AttributeSet paramAttributeSet, ResolutionStrategy paramResolutionStrategy)
  {
    super(paramContext, paramAttributeSet);
    this.resolutionStrategy = paramResolutionStrategy;
  }

  public DefaultGLSurfaceView(Context paramContext, ResolutionStrategy paramResolutionStrategy)
  {
    super(paramContext);
    this.resolutionStrategy = paramResolutionStrategy;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    ResolutionStrategy.MeasuredDimension localMeasuredDimension = this.resolutionStrategy.calcMeasures(paramInt1, paramInt2);
    setMeasuredDimension(localMeasuredDimension.width, localMeasuredDimension.height);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.DefaultGLSurfaceView
 * JD-Core Version:    0.6.2
 */