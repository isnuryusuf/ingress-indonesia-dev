package com.badlogic.gdx;

public class Graphics$BufferFormat
{
  public final int a;
  public final int b;
  public final boolean coverageSampling;
  public final int depth;
  public final int g;
  public final int r;
  public final int samples;
  public final int stencil;

  public Graphics$BufferFormat(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, boolean paramBoolean)
  {
    this.r = paramInt1;
    this.g = paramInt2;
    this.b = paramInt3;
    this.a = paramInt4;
    this.depth = paramInt5;
    this.stencil = paramInt6;
    this.samples = paramInt7;
    this.coverageSampling = paramBoolean;
  }

  public String toString()
  {
    return "r: " + this.r + ", g: " + this.g + ", b: " + this.b + ", a: " + this.a + ", depth: " + this.depth + ", stencil: " + this.stencil + ", num samples: " + this.samples + ", coverage sampling: " + this.coverageSampling;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Graphics.BufferFormat
 * JD-Core Version:    0.6.2
 */