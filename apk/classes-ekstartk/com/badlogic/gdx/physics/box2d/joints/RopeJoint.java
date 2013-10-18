package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class RopeJoint extends Joint
{
  public RopeJoint(World paramWorld, long paramLong)
  {
    super(paramWorld, paramLong);
  }

  private native float jniGetMaxLength(long paramLong);

  public float getMaxLength()
  {
    return jniGetMaxLength(this.addr);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.RopeJoint
 * JD-Core Version:    0.6.2
 */