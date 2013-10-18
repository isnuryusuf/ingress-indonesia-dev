package com.badlogic.gdx.math;

public final class WindowedMean
{
  int added_values = 0;
  boolean dirty = true;
  int last_value;
  float mean = 0.0F;
  float[] values;

  public WindowedMean(int paramInt)
  {
    this.values = new float[paramInt];
  }

  public final void addValue(float paramFloat)
  {
    this.added_values = (1 + this.added_values);
    float[] arrayOfFloat = this.values;
    int i = this.last_value;
    this.last_value = (i + 1);
    arrayOfFloat[i] = paramFloat;
    if (this.last_value > -1 + this.values.length)
      this.last_value = 0;
    this.dirty = true;
  }

  public final void clear()
  {
    int i = 0;
    this.added_values = 0;
    this.last_value = 0;
    while (i < this.values.length)
    {
      this.values[i] = 0.0F;
      i++;
    }
    this.dirty = true;
  }

  public final float getLatest()
  {
    float[] arrayOfFloat = this.values;
    if (-1 + this.last_value == -1);
    for (int i = -1 + this.values.length; ; i = -1 + this.last_value)
      return arrayOfFloat[i];
  }

  public final float getMean()
  {
    boolean bool = hasEnoughData();
    float f1 = 0.0F;
    if (bool)
    {
      if (this.dirty == true)
      {
        float f2 = 0.0F;
        for (int i = 0; i < this.values.length; i++)
          f2 += this.values[i];
        this.mean = (f2 / this.values.length);
        this.dirty = false;
      }
      f1 = this.mean;
    }
    return f1;
  }

  public final float getOldest()
  {
    if (this.last_value == -1 + this.values.length)
      return this.values[0];
    return this.values[(1 + this.last_value)];
  }

  public final boolean hasEnoughData()
  {
    return this.added_values >= this.values.length;
  }

  public final float standardDeviation()
  {
    float f1 = 0.0F;
    if (!hasEnoughData())
      return 0.0F;
    float f2 = getMean();
    for (int i = 0; i < this.values.length; i++)
      f1 += (this.values[i] - f2) * (this.values[i] - f2);
    return (float)Math.sqrt(f1 / this.values.length);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.WindowedMean
 * JD-Core Version:    0.6.2
 */