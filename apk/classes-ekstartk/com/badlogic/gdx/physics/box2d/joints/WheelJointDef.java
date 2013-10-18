package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.JointDef;
import com.badlogic.gdx.physics.box2d.JointDef.JointType;

public class WheelJointDef extends JointDef
{
  public float dampingRatio = 0.7F;
  public boolean enableMotor = false;
  public float frequencyHz = 2.0F;
  public final Vector2 localAnchorA = new Vector2();
  public final Vector2 localAnchorB = new Vector2();
  public final Vector2 localAxisA = new Vector2(1.0F, 0.0F);
  public float maxMotorTorque = 0.0F;
  public float motorSpeed = 0.0F;

  public WheelJointDef()
  {
    this.type = JointDef.JointType.WheelJoint;
  }

  public void initialize(Body paramBody1, Body paramBody2, Vector2 paramVector21, Vector2 paramVector22)
  {
    this.bodyA = paramBody1;
    this.bodyB = paramBody2;
    this.localAnchorA.set(paramBody1.getLocalPoint(paramVector21));
    this.localAnchorB.set(paramBody2.getLocalPoint(paramVector21));
    this.localAxisA.set(paramBody1.getLocalVector(paramVector22));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.WheelJointDef
 * JD-Core Version:    0.6.2
 */