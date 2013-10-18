package com.badlogic.gdx.math;

import java.util.Arrays;

public class Intersector$SplitTriangle
{
  public float[] back;
  int backOffset = 0;
  float[] edgeSplit;
  public float[] front;
  boolean frontCurrent = false;
  int frontOffset = 0;
  public int numBack;
  public int numFront;
  public int total;

  public Intersector$SplitTriangle(int paramInt)
  {
    this.front = new float[2 * (paramInt * 3)];
    this.back = new float[2 * (paramInt * 3)];
    this.edgeSplit = new float[paramInt];
  }

  void add(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if (this.frontCurrent)
    {
      System.arraycopy(paramArrayOfFloat, paramInt1, this.front, this.frontOffset, paramInt2);
      this.frontOffset = (paramInt2 + this.frontOffset);
      return;
    }
    System.arraycopy(paramArrayOfFloat, paramInt1, this.back, this.backOffset, paramInt2);
    this.backOffset = (paramInt2 + this.backOffset);
  }

  boolean getSide()
  {
    return this.frontCurrent;
  }

  void reset()
  {
    this.frontCurrent = false;
    this.frontOffset = 0;
    this.backOffset = 0;
    this.numFront = 0;
    this.numBack = 0;
    this.total = 0;
  }

  void setSide(boolean paramBoolean)
  {
    this.frontCurrent = paramBoolean;
  }

  public String toString()
  {
    return "SplitTriangle [front=" + Arrays.toString(this.front) + ", back=" + Arrays.toString(this.back) + ", numFront=" + this.numFront + ", numBack=" + this.numBack + ", total=" + this.total + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Intersector.SplitTriangle
 * JD-Core Version:    0.6.2
 */