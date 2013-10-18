package com.badlogic.gdx.input;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.TimeUtils;
import com.badlogic.gdx.utils.Timer;
import com.badlogic.gdx.utils.Timer.Task;

public class GestureDetector extends InputAdapter
{
  public static final int DEFAULT_HALF_TAP_SQUARE_PIXELS = 20;
  public static final float DEFAULT_LONG_PRESS_DURATION_S = 1.1F;
  public static final float DEFAULT_MAX_FLING_DELAY_S = 0.15F;
  public static final float DEFAULT_TAP_COUNT_INTERVAL_S = 0.4F;
  private long gestureStartTime;
  private boolean inTapSquare;
  private final Vector2 initialPointer1 = new Vector2();
  private final Vector2 initialPointer2 = new Vector2();
  private long lastTapTimeNs;
  final GestureDetector.GestureListener listener;
  boolean longPressFired;
  private float longPressSeconds;
  private final Timer.Task longPressTask = new GestureDetector.1(this);
  private long maxFlingDelayNs;
  private boolean panning;
  private boolean pinching;
  Vector2 pointer1 = new Vector2();
  private final Vector2 pointer2 = new Vector2();
  private int tapCount;
  private long tapCountIntervalNs;
  private float tapSquareCenterX;
  private float tapSquareCenterY;
  private float tapSquareSize;
  private final GestureDetector.VelocityTracker tracker = new GestureDetector.VelocityTracker();

  public GestureDetector(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, GestureDetector.GestureListener paramGestureListener)
  {
    this.tapSquareSize = paramFloat1;
    this.tapCountIntervalNs = (()(paramFloat2 * 1.0E+09F));
    this.longPressSeconds = paramFloat3;
    this.maxFlingDelayNs = (()(paramFloat4 * 1.0E+09F));
    this.listener = paramGestureListener;
  }

  public GestureDetector(GestureDetector.GestureListener paramGestureListener)
  {
    this(20.0F, 0.4F, 1.1F, 0.15F, paramGestureListener);
  }

  public boolean isLongPressed()
  {
    return isLongPressed(this.longPressSeconds);
  }

  public boolean isLongPressed(float paramFloat)
  {
    if (this.gestureStartTime == 0L);
    while (TimeUtils.nanoTime() - this.gestureStartTime <= ()(1.0E+09F * paramFloat))
      return false;
    return true;
  }

  public boolean isPanning()
  {
    return this.panning;
  }

  public void reset()
  {
    this.gestureStartTime = 0L;
    this.panning = false;
    this.inTapSquare = false;
  }

  public void setLongPressSeconds(float paramFloat)
  {
    this.longPressSeconds = paramFloat;
  }

  public void setMaxFlingDelay(long paramLong)
  {
    this.maxFlingDelayNs = paramLong;
  }

  public void setTapCountInterval(long paramLong)
  {
    this.tapCountIntervalNs = paramLong;
  }

  public void setTapSquareSize(int paramInt)
  {
    this.tapSquareSize = paramInt;
  }

  public boolean touchDown(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (paramInt1 > 1)
      return false;
    if (paramInt1 == 0)
    {
      this.pointer1.set(paramFloat1, paramFloat2);
      this.gestureStartTime = Gdx.input.getCurrentEventTime();
      this.tracker.start(paramFloat1, paramFloat2, this.gestureStartTime);
      if (Gdx.input.isTouched(1))
      {
        this.inTapSquare = false;
        this.pinching = true;
        this.initialPointer1.set(this.pointer1);
        this.initialPointer2.set(this.pointer2);
        this.longPressTask.cancel();
      }
    }
    while (true)
    {
      return this.listener.touchDown(paramFloat1, paramFloat2, paramInt1);
      this.inTapSquare = true;
      this.pinching = false;
      this.longPressFired = false;
      this.tapSquareCenterX = paramFloat1;
      this.tapSquareCenterY = paramFloat2;
      if (!this.longPressTask.isScheduled())
      {
        Timer.schedule(this.longPressTask, this.longPressSeconds);
        continue;
        this.pointer2.set(paramFloat1, paramFloat2);
        this.inTapSquare = false;
        this.pinching = true;
        this.initialPointer1.set(this.pointer1);
        this.initialPointer2.set(this.pointer2);
        this.longPressTask.cancel();
      }
    }
  }

  public boolean touchDown(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return touchDown(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public boolean touchDragged(float paramFloat1, float paramFloat2, int paramInt)
  {
    if (paramInt > 1);
    label121: 
    do
    {
      while (true)
      {
        return false;
        if (!this.longPressFired)
        {
          if (!this.pinching)
            break;
          if (paramInt == 0)
            this.pointer1.set(paramFloat1, paramFloat2);
          while (true)
          {
            if (this.listener == null)
              break label121;
            boolean bool = this.listener.pinch(this.initialPointer1, this.initialPointer2, this.pointer1, this.pointer2);
            if ((!this.listener.zoom(this.initialPointer1.dst(this.initialPointer2), this.pointer1.dst(this.pointer2))) && (!bool))
              break;
            return true;
            this.pointer2.set(paramFloat1, paramFloat2);
          }
        }
      }
      this.tracker.update(paramFloat1, paramFloat2, Gdx.input.getCurrentEventTime());
      if ((this.inTapSquare) && ((Math.abs(paramFloat1 - this.tapSquareCenterX) >= this.tapSquareSize) || (Math.abs(paramFloat2 - this.tapSquareCenterY) >= this.tapSquareSize)))
      {
        this.longPressTask.cancel();
        this.inTapSquare = false;
      }
    }
    while (this.inTapSquare);
    this.inTapSquare = false;
    this.panning = true;
    return this.listener.pan(paramFloat1, paramFloat2, this.tracker.deltaX, this.tracker.deltaY);
  }

  public boolean touchDragged(int paramInt1, int paramInt2, int paramInt3)
  {
    return touchDragged(paramInt1, paramInt2, paramInt3);
  }

  public boolean touchUp(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (paramInt1 > 1);
    long l;
    do
    {
      do
      {
        return false;
        if ((this.inTapSquare) && ((Math.abs(paramFloat1 - this.tapSquareCenterX) >= this.tapSquareSize) || (Math.abs(paramFloat2 - this.tapSquareCenterY) >= this.tapSquareSize)))
          this.inTapSquare = false;
        this.longPressTask.cancel();
        this.panning = false;
      }
      while (this.longPressFired);
      if (this.inTapSquare)
      {
        if (TimeUtils.nanoTime() - this.lastTapTimeNs > this.tapCountIntervalNs)
          this.tapCount = 0;
        this.tapCount = (1 + this.tapCount);
        this.lastTapTimeNs = TimeUtils.nanoTime();
        this.gestureStartTime = 0L;
        return this.listener.tap(paramFloat1, paramFloat2, this.tapCount, paramInt1, paramInt2);
      }
      if (this.pinching)
      {
        this.pinching = false;
        this.panning = true;
        if (paramInt1 == 0)
        {
          this.tracker.start(this.pointer2.x, this.pointer2.y, Gdx.input.getCurrentEventTime());
          return false;
        }
        this.tracker.start(this.pointer1.x, this.pointer1.y, Gdx.input.getCurrentEventTime());
        return false;
      }
      this.gestureStartTime = 0L;
      l = Gdx.input.getCurrentEventTime();
    }
    while (l - this.tracker.lastTime >= this.maxFlingDelayNs);
    this.tracker.update(paramFloat1, paramFloat2, l);
    return this.listener.fling(this.tracker.getVelocityX(), this.tracker.getVelocityY(), paramInt1, paramInt2);
  }

  public boolean touchUp(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return touchUp(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.input.GestureDetector
 * JD-Core Version:    0.6.2
 */