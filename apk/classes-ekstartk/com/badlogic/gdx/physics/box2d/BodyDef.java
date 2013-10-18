package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class BodyDef
{
  public boolean active = true;
  public boolean allowSleep = true;
  public float angle = 0.0F;
  public float angularDamping = 0.0F;
  public float angularVelocity = 0.0F;
  public boolean awake = true;
  public boolean bullet = false;
  public boolean fixedRotation = false;
  public float gravityScale = 1.0F;
  public float linearDamping = 0.0F;
  public final Vector2 linearVelocity = new Vector2();
  public final Vector2 position = new Vector2();
  public BodyDef.BodyType type = BodyDef.BodyType.StaticBody;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.BodyDef
 * JD-Core Version:    0.6.2
 */