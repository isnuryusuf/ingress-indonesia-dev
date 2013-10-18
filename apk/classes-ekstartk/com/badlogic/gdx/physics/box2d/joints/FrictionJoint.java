package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class FrictionJoint extends Joint
{
  public FrictionJoint(World paramWorld, long paramLong)
  {
    super(paramWorld, paramLong);
  }

  private native float jniGetMaxForce(long paramLong);

  private native float jniGetMaxTorque(long paramLong);

  private native void jniSetMaxForce(long paramLong, float paramFloat);

  private native void jniSetMaxTorque(long paramLong, float paramFloat);

  public float getMaxForce()
  {
    return jniGetMaxForce(this.addr);
  }

  public float getMaxTorque()
  {
    return jniGetMaxTorque(this.addr);
  }

  public void setMaxForce(float paramFloat)
  {
    jniSetMaxForce(this.addr, paramFloat);
  }

  public void setMaxTorque(float paramFloat)
  {
    jniSetMaxTorque(this.addr, paramFloat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.FrictionJoint
 * JD-Core Version:    0.6.2
 */