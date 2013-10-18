package com.badlogic.gdx.input;

class GestureDetector$VelocityTracker
{
  float deltaX;
  float deltaY;
  long lastTime;
  float lastX;
  float lastY;
  long[] meanTime = new long[this.sampleSize];
  float[] meanX = new float[this.sampleSize];
  float[] meanY = new float[this.sampleSize];
  int numSamples;
  int sampleSize = 10;

  private float getAverage(float[] paramArrayOfFloat, int paramInt)
  {
    int i = Math.min(this.sampleSize, paramInt);
    float f = 0.0F;
    for (int j = 0; j < i; j++)
      f += paramArrayOfFloat[j];
    return f / i;
  }

  private long getAverage(long[] paramArrayOfLong, int paramInt)
  {
    int i = Math.min(this.sampleSize, paramInt);
    int j = 0;
    long l = 0L;
    while (j < i)
    {
      l += paramArrayOfLong[j];
      j++;
    }
    if (i == 0)
      return 0L;
    return l / i;
  }

  private float getSum(float[] paramArrayOfFloat, int paramInt)
  {
    int i = Math.min(this.sampleSize, paramInt);
    int j = 0;
    float f2;
    for (float f1 = 0.0F; j < i; f1 = f2)
    {
      f2 = f1 + paramArrayOfFloat[j];
      j++;
    }
    if (i == 0)
      return 0.0F;
    return f1;
  }

  public float getVelocityX()
  {
    float f1 = getAverage(this.meanX, this.numSamples);
    float f2 = (float)getAverage(this.meanTime, this.numSamples) / 1.0E+09F;
    if (f2 == 0.0F)
      return 0.0F;
    return f1 / f2;
  }

  public float getVelocityY()
  {
    float f1 = getAverage(this.meanY, this.numSamples);
    float f2 = (float)getAverage(this.meanTime, this.numSamples) / 1.0E+09F;
    if (f2 == 0.0F)
      return 0.0F;
    return f1 / f2;
  }

  public void start(float paramFloat1, float paramFloat2, long paramLong)
  {
    int i = 0;
    this.lastX = paramFloat1;
    this.lastY = paramFloat2;
    this.deltaX = 0.0F;
    this.deltaY = 0.0F;
    this.numSamples = 0;
    while (i < this.sampleSize)
    {
      this.meanX[i] = 0.0F;
      this.meanY[i] = 0.0F;
      this.meanTime[i] = 0L;
      i++;
    }
    this.lastTime = paramLong;
  }

  public void update(float paramFloat1, float paramFloat2, long paramLong)
  {
    this.deltaX = (paramFloat1 - this.lastX);
    this.deltaY = (paramFloat2 - this.lastY);
    this.lastX = paramFloat1;
    this.lastY = paramFloat2;
    long l = paramLong - this.lastTime;
    this.lastTime = paramLong;
    int i = this.numSamples % this.sampleSize;
    this.meanX[i] = this.deltaX;
    this.meanY[i] = this.deltaY;
    this.meanTime[i] = l;
    this.numSamples = (1 + this.numSamples);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.input.GestureDetector.VelocityTracker
 * JD-Core Version:    0.6.2
 */