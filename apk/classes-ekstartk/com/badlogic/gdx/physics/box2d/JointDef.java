package com.badlogic.gdx.physics.box2d;

public class JointDef
{
  public Body bodyA = null;
  public Body bodyB = null;
  public boolean collideConnected = false;
  public JointDef.JointType type = JointDef.JointType.Unknown;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.JointDef
 * JD-Core Version:    0.6.2
 */