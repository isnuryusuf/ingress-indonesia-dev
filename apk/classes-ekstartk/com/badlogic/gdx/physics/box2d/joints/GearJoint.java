package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class GearJoint extends Joint
{
  public GearJoint(World paramWorld, long paramLong)
  {
    super(paramWorld, paramLong);
  }

  private native float jniGetRatio(long paramLong);

  private native void jniSetRatio(long paramLong, float paramFloat);

  public float getRatio()
  {
    return jniGetRatio(this.addr);
  }

  public void setRatio(float paramFloat)
  {
    jniSetRatio(this.addr, paramFloat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.GearJoint
 * JD-Core Version:    0.6.2
 */