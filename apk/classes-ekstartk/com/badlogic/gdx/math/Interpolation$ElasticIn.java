package com.badlogic.gdx.math;

public class Interpolation$ElasticIn extends Interpolation.Elastic
{
  public Interpolation$ElasticIn(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }

  public float apply(float paramFloat)
  {
    return 1.0955F * ((float)Math.pow(this.value, this.power * (paramFloat - 1.0F)) * MathUtils.sin(20.0F * paramFloat));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.ElasticIn
 * JD-Core Version:    0.6.2
 */