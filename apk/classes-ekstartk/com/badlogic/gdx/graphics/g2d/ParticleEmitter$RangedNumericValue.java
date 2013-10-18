package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.math.MathUtils;
import java.io.BufferedReader;
import java.io.Writer;

public class ParticleEmitter$RangedNumericValue extends ParticleEmitter.ParticleValue
{
  private float lowMax;
  private float lowMin;

  public float getLowMax()
  {
    return this.lowMax;
  }

  public float getLowMin()
  {
    return this.lowMin;
  }

  public void load(RangedNumericValue paramRangedNumericValue)
  {
    super.load(paramRangedNumericValue);
    this.lowMax = paramRangedNumericValue.lowMax;
    this.lowMin = paramRangedNumericValue.lowMin;
  }

  public void load(BufferedReader paramBufferedReader)
  {
    super.load(paramBufferedReader);
    if (!this.active)
      return;
    this.lowMin = ParticleEmitter.readFloat(paramBufferedReader, "lowMin");
    this.lowMax = ParticleEmitter.readFloat(paramBufferedReader, "lowMax");
  }

  public float newLowValue()
  {
    return this.lowMin + (this.lowMax - this.lowMin) * MathUtils.random();
  }

  public void save(Writer paramWriter)
  {
    super.save(paramWriter);
    if (!this.active)
      return;
    paramWriter.write("lowMin: " + this.lowMin + "\n");
    paramWriter.write("lowMax: " + this.lowMax + "\n");
  }

  public void setLow(float paramFloat)
  {
    this.lowMin = paramFloat;
    this.lowMax = paramFloat;
  }

  public void setLow(float paramFloat1, float paramFloat2)
  {
    this.lowMin = paramFloat1;
    this.lowMax = paramFloat2;
  }

  public void setLowMax(float paramFloat)
  {
    this.lowMax = paramFloat;
  }

  public void setLowMin(float paramFloat)
  {
    this.lowMin = paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitter.RangedNumericValue
 * JD-Core Version:    0.6.2
 */