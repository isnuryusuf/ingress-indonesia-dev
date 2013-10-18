package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public abstract interface RayCastCallback
{
  public abstract float reportRayFixture(Fixture paramFixture, Vector2 paramVector21, Vector2 paramVector22, float paramFloat);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.RayCastCallback
 * JD-Core Version:    0.6.2
 */