package com.badlogic.gdx;

public class Graphics$DisplayMode
{
  public final int bitsPerPixel;
  public final int height;
  public final int refreshRate;
  public final int width;

  protected Graphics$DisplayMode(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.width = paramInt1;
    this.height = paramInt2;
    this.refreshRate = paramInt3;
    this.bitsPerPixel = paramInt4;
  }

  public String toString()
  {
    return this.width + "x" + this.height + ", bpp: " + this.bitsPerPixel + ", hz: " + this.refreshRate;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Graphics.DisplayMode
 * JD-Core Version:    0.6.2
 */