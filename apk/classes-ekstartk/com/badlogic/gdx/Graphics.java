package com.badlogic.gdx;

import com.badlogic.gdx.graphics.GL10;
import com.badlogic.gdx.graphics.GL11;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.GLU;

public abstract interface Graphics
{
  public abstract Graphics.BufferFormat getBufferFormat();

  public abstract float getDeltaTime();

  public abstract float getDensity();

  public abstract Graphics.DisplayMode getDesktopDisplayMode();

  public abstract Graphics.DisplayMode[] getDisplayModes();

  public abstract int getFramesPerSecond();

  public abstract GL10 getGL10();

  public abstract GL11 getGL11();

  public abstract GL20 getGL20();

  public abstract GLCommon getGLCommon();

  public abstract GLU getGLU();

  public abstract int getHeight();

  public abstract float getPpcX();

  public abstract float getPpcY();

  public abstract float getPpiX();

  public abstract float getPpiY();

  public abstract float getRawDeltaTime();

  public abstract Graphics.GraphicsType getType();

  public abstract int getWidth();

  public abstract boolean isContinuousRendering();

  public abstract boolean isFullscreen();

  public abstract boolean isGL11Available();

  public abstract boolean isGL20Available();

  public abstract void requestRendering();

  public abstract void setContinuousRendering(boolean paramBoolean);

  public abstract boolean setDisplayMode(int paramInt1, int paramInt2, boolean paramBoolean);

  public abstract boolean setDisplayMode(Graphics.DisplayMode paramDisplayMode);

  public abstract void setTitle(String paramString);

  public abstract void setVSync(boolean paramBoolean);

  public abstract boolean supportsDisplayModeChange();

  public abstract boolean supportsExtension(String paramString);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Graphics
 * JD-Core Version:    0.6.2
 */