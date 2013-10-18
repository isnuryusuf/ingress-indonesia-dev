package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Fixture;
import com.badlogic.gdx.physics.box2d.RayCastCallback;

class ParticleEmitterBox2D$1
  implements RayCastCallback
{
  ParticleEmitterBox2D$1(ParticleEmitterBox2D paramParticleEmitterBox2D)
  {
  }

  public float reportRayFixture(Fixture paramFixture, Vector2 paramVector21, Vector2 paramVector22, float paramFloat)
  {
    this.this$0.particleCollided = true;
    this.this$0.normalAngle = (57.295776F * MathUtils.atan2(paramVector22.y, paramVector22.x));
    return paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.ParticleEmitterBox2D.1
 * JD-Core Version:    0.6.2
 */