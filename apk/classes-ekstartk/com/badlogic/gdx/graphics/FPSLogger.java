package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;

public class FPSLogger
{
  long startTime = System.currentTimeMillis();

  public void log()
  {
    if (System.currentTimeMillis() - this.startTime > 1000L)
    {
      Gdx.app.log("FPSLogger", "fps: " + Gdx.graphics.getFramesPerSecond());
      this.startTime = System.currentTimeMillis();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.FPSLogger
 * JD-Core Version:    0.6.2
 */