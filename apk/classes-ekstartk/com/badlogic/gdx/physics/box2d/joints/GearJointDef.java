package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.JointDef;
import com.badlogic.gdx.physics.box2d.JointDef.JointType;

public class GearJointDef extends JointDef
{
  public Joint joint1 = null;
  public Joint joint2 = null;
  public float ratio = 1.0F;

  public GearJointDef()
  {
    this.type = JointDef.JointType.GearJoint;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.GearJointDef
 * JD-Core Version:    0.6.2
 */