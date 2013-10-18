package com.badlogic.gdx;

public abstract interface ApplicationListener
{
  public abstract void create();

  public abstract void dispose();

  public abstract void pause();

  public abstract void render();

  public abstract void resize(int paramInt1, int paramInt2);

  public abstract void resume();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.ApplicationListener
 * JD-Core Version:    0.6.2
 */