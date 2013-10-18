package com.badlogic.gdx.audio;

import com.badlogic.gdx.utils.Disposable;

public abstract interface Music extends Disposable
{
  public abstract void dispose();

  public abstract float getPosition();

  public abstract boolean isLooping();

  public abstract boolean isPlaying();

  public abstract void pause();

  public abstract void play();

  public abstract void setLooping(boolean paramBoolean);

  public abstract void setVolume(float paramFloat);

  public abstract void stop();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.audio.Music
 * JD-Core Version:    0.6.2
 */