package com.badlogic.gdx.utils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;

public class Timer
{
  private static final int CANCELLED = -1;
  private static final int FOREVER = -2;
  public static final Timer instance = new Timer();
  private boolean posted;
  private boolean stopped;
  private final Array<Timer.Task> tasks = new Array(false, 8);
  private final Runnable timerRunnable = new Timer.1(this);

  public static void post(Timer.Task paramTask)
  {
    instance.postTask(paramTask);
  }

  private void postRunnable()
  {
    if ((this.stopped) || (this.posted))
      return;
    this.posted = true;
    Gdx.app.postRunnable(this.timerRunnable);
  }

  public static void schedule(Timer.Task paramTask)
  {
    instance.scheduleTask(paramTask);
  }

  public static void schedule(Timer.Task paramTask, float paramFloat)
  {
    instance.scheduleTask(paramTask, paramFloat);
  }

  public static void schedule(Timer.Task paramTask, float paramFloat1, float paramFloat2)
  {
    instance.scheduleTask(paramTask, paramFloat1, paramFloat2);
  }

  public static void schedule(Timer.Task paramTask, float paramFloat1, float paramFloat2, int paramInt)
  {
    instance.scheduleTask(paramTask, paramFloat1, paramFloat2, paramInt);
  }

  public void clear()
  {
    int i = this.tasks.size;
    for (int j = 0; j < i; j++)
      ((Timer.Task)this.tasks.get(j)).cancel();
    this.tasks.clear();
  }

  public void postTask(Timer.Task paramTask)
  {
    scheduleTask(paramTask, 0.0F, 0.0F, 0);
  }

  public void scheduleTask(Timer.Task paramTask)
  {
    scheduleTask(paramTask, 0.0F, 0.0F, -2);
  }

  public void scheduleTask(Timer.Task paramTask, float paramFloat)
  {
    scheduleTask(paramTask, paramFloat, 0.0F, 0);
  }

  public void scheduleTask(Timer.Task paramTask, float paramFloat1, float paramFloat2)
  {
    scheduleTask(paramTask, paramFloat1, paramFloat2, -2);
  }

  public void scheduleTask(Timer.Task paramTask, float paramFloat1, float paramFloat2, int paramInt)
  {
    if (paramTask.repeatCount != -1)
      throw new IllegalArgumentException("The same task may not be scheduled twice.");
    paramTask.delaySeconds = paramFloat1;
    paramTask.intervalSeconds = paramFloat2;
    paramTask.repeatCount = paramInt;
    this.tasks.add(paramTask);
    postRunnable();
  }

  public void start()
  {
    this.stopped = false;
    postRunnable();
  }

  public void stop()
  {
    this.stopped = true;
  }

  void update()
  {
    if (this.stopped)
    {
      this.posted = false;
      return;
    }
    float f = Gdx.graphics.getDeltaTime();
    int i = this.tasks.size;
    int j = 0;
    if (j < i)
    {
      Timer.Task localTask = (Timer.Task)this.tasks.get(j);
      localTask.delaySeconds -= f;
      int n;
      int k;
      if (localTask.delaySeconds <= 0.0F)
      {
        if (localTask.repeatCount != -1)
        {
          if (localTask.repeatCount == 0)
            localTask.repeatCount = -1;
          localTask.run();
        }
        if (localTask.repeatCount == -1)
        {
          this.tasks.removeIndex(j);
          n = j - 1;
          k = i - 1;
        }
      }
      for (int m = n; ; m = j)
      {
        j = m + 1;
        i = k;
        break;
        localTask.delaySeconds = localTask.intervalSeconds;
        if (localTask.repeatCount > 0)
          localTask.repeatCount = (-1 + localTask.repeatCount);
        k = i;
      }
    }
    if (this.tasks.size == 0)
    {
      this.posted = false;
      return;
    }
    Gdx.app.postRunnable(this.timerRunnable);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Timer
 * JD-Core Version:    0.6.2
 */