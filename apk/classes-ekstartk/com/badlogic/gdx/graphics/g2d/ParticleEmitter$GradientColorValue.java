package com.badlogic.gdx.graphics.g2d;

import java.io.BufferedReader;
import java.io.Writer;

public class ParticleEmitter$GradientColorValue extends ParticleEmitter.ParticleValue
{
  private static float[] temp = new float[4];
  private float[] colors = { 1.0F, 1.0F, 1.0F };
  float[] timeline = { 0.0F };

  public ParticleEmitter$GradientColorValue()
  {
    this.alwaysActive = true;
  }

  public float[] getColor(float paramFloat)
  {
    float[] arrayOfFloat = this.timeline;
    int i = arrayOfFloat.length;
    int j = 1;
    int k = 0;
    if (j < i)
      if (arrayOfFloat[j] <= paramFloat);
    while (true)
    {
      float f1 = arrayOfFloat[k];
      int m = k * 3;
      float f2 = this.colors[m];
      float f3 = this.colors[(m + 1)];
      float f4 = this.colors[(m + 2)];
      if (j == -1)
      {
        temp[0] = f2;
        temp[1] = f3;
        temp[2] = f4;
        return temp;
        int i1 = j + 1;
        k = j;
        j = i1;
        break;
      }
      float f5 = (paramFloat - f1) / (arrayOfFloat[j] - f1);
      int n = j * 3;
      temp[0] = (f2 + f5 * (this.colors[n] - f2));
      temp[1] = (f3 + f5 * (this.colors[(n + 1)] - f3));
      temp[2] = (f4 + f5 * (this.colors[(n + 2)] - f4));
      return temp;
      j = -1;
    }
  }

  public float[] getColors()
  {
    return this.colors;
  }

  public float[] getTimeline()
  {
    return this.timeline;
  }

  public void load(GradientColorValue paramGradientColorValue)
  {
    super.load(paramGradientColorValue);
    this.colors = new float[paramGradientColorValue.colors.length];
    System.arraycopy(paramGradientColorValue.colors, 0, this.colors, 0, this.colors.length);
    this.timeline = new float[paramGradientColorValue.timeline.length];
    System.arraycopy(paramGradientColorValue.timeline, 0, this.timeline, 0, this.timeline.length);
  }

  public void load(BufferedReader paramBufferedReader)
  {
    int i = 0;
    super.load(paramBufferedReader);
    if (!this.active);
    while (true)
    {
      return;
      this.colors = new float[ParticleEmitter.readInt(paramBufferedReader, "colorsCount")];
      for (int j = 0; j < this.colors.length; j++)
        this.colors[j] = ParticleEmitter.readFloat(paramBufferedReader, "colors" + j);
      this.timeline = new float[ParticleEmitter.readInt(paramBufferedReader, "timelineCount")];
      while (i < this.timeline.length)
      {
        this.timeline[i] = ParticleEmitter.readFloat(paramBufferedReader, "timeline" + i);
        i++;
      }
    }
  }

  public void save(Writer paramWriter)
  {
    int i = 0;
    super.save(paramWriter);
    if (!this.active);
    while (true)
    {
      return;
      paramWriter.write("colorsCount: " + this.colors.length + "\n");
      for (int j = 0; j < this.colors.length; j++)
        paramWriter.write("colors" + j + ": " + this.colors[j] + "\n");
      paramWriter.write("timelineCount: " + this.timeline.length + "\n");
      while (i < this.timeline.length)
      {
        paramWriter.write("timeline" + i + ": " + this.timeline[i] + "\n");
        i++;
      }
    }
  }

  public void setColors(float[] paramArrayOfFloat)
  {
    this.colors = paramArrayOfFloat;
  }

  public void setTimeline(float[] paramArrayOfFloat)
  {
    this.timeline = paramArrayOfFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitter.GradientColorValue
 * JD-Core Version:    0.6.2
 */