package com.badlogic.gdx.utils;

public abstract class Timer$Task
  implements Runnable
{
  float delaySeconds;
  float intervalSeconds;
  int repeatCount = -1;

  public void cancel()
  {
    this.delaySeconds = 0.0F;
    this.repeatCount = -1;
  }

  public boolean isScheduled()
  {
    return this.repeatCount != -1;
  }

  public abstract void run();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Timer.Task
 * JD-Core Version:    0.6.2
 */