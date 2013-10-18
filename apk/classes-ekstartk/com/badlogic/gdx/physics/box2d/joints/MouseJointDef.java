package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.JointDef;
import com.badlogic.gdx.physics.box2d.JointDef.JointType;

public class MouseJointDef extends JointDef
{
  public float dampingRatio = 0.7F;
  public float frequencyHz = 5.0F;
  public float maxForce = 0.0F;
  public final Vector2 target = new Vector2();

  public MouseJointDef()
  {
    this.type = JointDef.JointType.MouseJoint;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.MouseJointDef
 * JD-Core Version:    0.6.2
 */