package com.badlogic.gdx.graphics.g2d;

public class ParticleEffectPool$PooledEffect extends ParticleEffect
{
  ParticleEffectPool$PooledEffect(ParticleEffectPool paramParticleEffectPool, ParticleEffect paramParticleEffect)
  {
    super(paramParticleEffect);
  }

  public void free()
  {
    this.this$0.free(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEffectPool.PooledEffect
 * JD-Core Version:    0.6.2
 */