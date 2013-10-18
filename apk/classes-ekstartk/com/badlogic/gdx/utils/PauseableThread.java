package com.badlogic.gdx.utils;

public class PauseableThread extends Thread
{
  boolean exit = false;
  boolean paused = false;
  final Runnable runnable;

  public PauseableThread(Runnable paramRunnable)
  {
    this.runnable = paramRunnable;
  }

  public boolean isPaused()
  {
    return this.paused;
  }

  public void onPause()
  {
    this.paused = true;
  }

  public void onResume()
  {
    try
    {
      this.paused = false;
      notifyAll();
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
    while (true)
    {
      try
      {
        while (this.paused)
          wait();
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        if (this.exit)
          return;
      }
      finally
      {
      }
      this.runnable.run();
    }
  }

  public void stopThread()
  {
    this.exit = true;
    if (this.paused)
      onResume();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.PauseableThread
 * JD-Core Version:    0.6.2
 */