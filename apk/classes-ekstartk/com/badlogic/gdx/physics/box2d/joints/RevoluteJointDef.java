package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.JointDef;
import com.badlogic.gdx.physics.box2d.JointDef.JointType;

public class RevoluteJointDef extends JointDef
{
  public boolean enableLimit = false;
  public boolean enableMotor = false;
  public final Vector2 localAnchorA = new Vector2();
  public final Vector2 localAnchorB = new Vector2();
  public float lowerAngle = 0.0F;
  public float maxMotorTorque = 0.0F;
  public float motorSpeed = 0.0F;
  public float referenceAngle = 0.0F;
  public float upperAngle = 0.0F;

  public RevoluteJointDef()
  {
    this.type = JointDef.JointType.RevoluteJoint;
  }

  public void initialize(Body paramBody1, Body paramBody2, Vector2 paramVector2)
  {
    this.bodyA = paramBody1;
    this.bodyB = paramBody2;
    this.localAnchorA.set(paramBody1.getLocalPoint(paramVector2));
    this.localAnchorB.set(paramBody2.getLocalPoint(paramVector2));
    this.referenceAngle = (paramBody2.getAngle() - paramBody1.getAngle());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.RevoluteJointDef
 * JD-Core Version:    0.6.2
 */