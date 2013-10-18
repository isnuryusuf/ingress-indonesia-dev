package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.math.MathUtils;
import java.io.BufferedReader;
import java.io.Writer;

public class ParticleEmitter$ScaledNumericValue extends ParticleEmitter.RangedNumericValue
{
  private float highMax;
  private float highMin;
  private boolean relative;
  private float[] scaling = { 1.0F };
  float[] timeline = { 0.0F };

  public float getHighMax()
  {
    return this.highMax;
  }

  public float getHighMin()
  {
    return this.highMin;
  }

  public float getScale(float paramFloat)
  {
    float[] arrayOfFloat1 = this.timeline;
    int i = arrayOfFloat1.length;
    int j = 1;
    if (j < i)
      if (arrayOfFloat1[j] <= paramFloat);
    while (true)
    {
      if (j == -1)
      {
        return this.scaling[(i - 1)];
        j++;
        break;
      }
      float[] arrayOfFloat2 = this.scaling;
      int k = j - 1;
      float f1 = arrayOfFloat2[k];
      float f2 = arrayOfFloat1[k];
      return f1 + (arrayOfFloat2[j] - f1) * ((paramFloat - f2) / (arrayOfFloat1[j] - f2));
      j = -1;
    }
  }

  public float[] getScaling()
  {
    return this.scaling;
  }

  public float[] getTimeline()
  {
    return this.timeline;
  }

  public boolean isRelative()
  {
    return this.relative;
  }

  public void load(ScaledNumericValue paramScaledNumericValue)
  {
    super.load(paramScaledNumericValue);
    this.highMax = paramScaledNumericValue.highMax;
    this.highMin = paramScaledNumericValue.highMin;
    this.scaling = new float[paramScaledNumericValue.scaling.length];
    System.arraycopy(paramScaledNumericValue.scaling, 0, this.scaling, 0, this.scaling.length);
    this.timeline = new float[paramScaledNumericValue.timeline.length];
    System.arraycopy(paramScaledNumericValue.timeline, 0, this.timeline, 0, this.timeline.length);
    this.relative = paramScaledNumericValue.relative;
  }

  public void load(BufferedReader paramBufferedReader)
  {
    int i = 0;
    super.load(paramBufferedReader);
    if (!this.active);
    while (true)
    {
      return;
      this.highMin = ParticleEmitter.readFloat(paramBufferedReader, "highMin");
      this.highMax = ParticleEmitter.readFloat(paramBufferedReader, "highMax");
      this.relative = ParticleEmitter.readBoolean(paramBufferedReader, "relative");
      this.scaling = new float[ParticleEmitter.readInt(paramBufferedReader, "scalingCount")];
      for (int j = 0; j < this.scaling.length; j++)
        this.scaling[j] = ParticleEmitter.readFloat(paramBufferedReader, "scaling" + j);
      this.timeline = new float[ParticleEmitter.readInt(paramBufferedReader, "timelineCount")];
      while (i < this.timeline.length)
      {
        this.timeline[i] = ParticleEmitter.readFloat(paramBufferedReader, "timeline" + i);
        i++;
      }
    }
  }

  public float newHighValue()
  {
    return this.highMin + (this.highMax - this.highMin) * MathUtils.random();
  }

  public void save(Writer paramWriter)
  {
    int i = 0;
    super.save(paramWriter);
    if (!this.active);
    while (true)
    {
      return;
      paramWriter.write("highMin: " + this.highMin + "\n");
      paramWriter.write("highMax: " + this.highMax + "\n");
      paramWriter.write("relative: " + this.relative + "\n");
      paramWriter.write("scalingCount: " + this.scaling.length + "\n");
      for (int j = 0; j < this.scaling.length; j++)
        paramWriter.write("scaling" + j + ": " + this.scaling[j] + "\n");
      paramWriter.write("timelineCount: " + this.timeline.length + "\n");
      while (i < this.timeline.length)
      {
        paramWriter.write("timeline" + i + ": " + this.timeline[i] + "\n");
        i++;
      }
    }
  }

  public void setHigh(float paramFloat)
  {
    this.highMin = paramFloat;
    this.highMax = paramFloat;
  }

  public void setHigh(float paramFloat1, float paramFloat2)
  {
    this.highMin = paramFloat1;
    this.highMax = paramFloat2;
  }

  public void setHighMax(float paramFloat)
  {
    this.highMax = paramFloat;
  }

  public void setHighMin(float paramFloat)
  {
    this.highMin = paramFloat;
  }

  public void setRelative(boolean paramBoolean)
  {
    this.relative = paramBoolean;
  }

  public void setScaling(float[] paramArrayOfFloat)
  {
    this.scaling = paramArrayOfFloat;
  }

  public void setTimeline(float[] paramArrayOfFloat)
  {
    this.timeline = paramArrayOfFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitter.ScaledNumericValue
 * JD-Core Version:    0.6.2
 */