package com.badlogic.gdx.graphics.g2d;

import java.io.BufferedReader;
import java.io.Writer;

public class ParticleEmitter$NumericValue extends ParticleEmitter.ParticleValue
{
  private float value;

  public float getValue()
  {
    return this.value;
  }

  public void load(NumericValue paramNumericValue)
  {
    super.load(paramNumericValue);
    this.value = paramNumericValue.value;
  }

  public void load(BufferedReader paramBufferedReader)
  {
    super.load(paramBufferedReader);
    if (!this.active)
      return;
    this.value = ParticleEmitter.readFloat(paramBufferedReader, "value");
  }

  public void save(Writer paramWriter)
  {
    super.save(paramWriter);
    if (!this.active)
      return;
    paramWriter.write("value: " + this.value + "\n");
  }

  public void setValue(float paramFloat)
  {
    this.value = paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitter.NumericValue
 * JD-Core Version:    0.6.2
 */