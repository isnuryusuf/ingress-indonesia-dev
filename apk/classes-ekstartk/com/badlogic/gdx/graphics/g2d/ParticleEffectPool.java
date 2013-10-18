package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.utils.Pool;

public class ParticleEffectPool extends Pool<ParticleEffectPool.PooledEffect>
{
  private final ParticleEffect effect;

  public ParticleEffectPool(ParticleEffect paramParticleEffect, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    this.effect = paramParticleEffect;
  }

  protected ParticleEffectPool.PooledEffect newObject()
  {
    return new ParticleEffectPool.PooledEffect(this, this.effect);
  }

  public ParticleEffectPool.PooledEffect obtain()
  {
    ParticleEffectPool.PooledEffect localPooledEffect = (ParticleEffectPool.PooledEffect)super.obtain();
    localPooledEffect.start();
    return localPooledEffect;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEffectPool
 * JD-Core Version:    0.6.2
 */