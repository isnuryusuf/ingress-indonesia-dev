package com.badlogic.gdx.math;

public class Interpolation$ElasticOut extends Interpolation.Elastic
{
  public Interpolation$ElasticOut(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }

  public float apply(float paramFloat)
  {
    float f = 1.0F - paramFloat;
    return 1.0F - 1.0955F * ((float)Math.pow(this.value, this.power * (f - 1.0F)) * MathUtils.sin(f * 20.0F));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.ElasticOut
 * JD-Core Version:    0.6.2
 */