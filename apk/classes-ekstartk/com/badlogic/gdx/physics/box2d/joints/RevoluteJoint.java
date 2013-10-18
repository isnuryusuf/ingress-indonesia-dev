package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class RevoluteJoint extends Joint
{
  public RevoluteJoint(World paramWorld, long paramLong)
  {
    super(paramWorld, paramLong);
  }

  private native void jniEnableLimit(long paramLong, boolean paramBoolean);

  private native void jniEnableMotor(long paramLong, boolean paramBoolean);

  private native float jniGetJointAngle(long paramLong);

  private native float jniGetJointSpeed(long paramLong);

  private native float jniGetLowerLimit(long paramLong);

  private native float jniGetMotorSpeed(long paramLong);

  private native float jniGetMotorTorque(long paramLong, float paramFloat);

  private native float jniGetUpperLimit(long paramLong);

  private native boolean jniIsLimitEnabled(long paramLong);

  private native boolean jniIsMotorEnabled(long paramLong);

  private native void jniSetLimits(long paramLong, float paramFloat1, float paramFloat2);

  private native void jniSetMaxMotorTorque(long paramLong, float paramFloat);

  private native void jniSetMotorSpeed(long paramLong, float paramFloat);

  public void enableLimit(boolean paramBoolean)
  {
    jniEnableLimit(this.addr, paramBoolean);
  }

  public void enableMotor(boolean paramBoolean)
  {
    jniEnableMotor(this.addr, paramBoolean);
  }

  public float getJointAngle()
  {
    return jniGetJointAngle(this.addr);
  }

  public float getJointSpeed()
  {
    return jniGetJointSpeed(this.addr);
  }

  public float getLowerLimit()
  {
    return jniGetLowerLimit(this.addr);
  }

  public float getMotorSpeed()
  {
    return jniGetMotorSpeed(this.addr);
  }

  public float getMotorTorque(float paramFloat)
  {
    return jniGetMotorTorque(this.addr, paramFloat);
  }

  public float getUpperLimit()
  {
    return jniGetUpperLimit(this.addr);
  }

  public boolean isLimitEnabled()
  {
    return jniIsLimitEnabled(this.addr);
  }

  public boolean isMotorEnabled()
  {
    return jniIsMotorEnabled(this.addr);
  }

  public void setLimits(float paramFloat1, float paramFloat2)
  {
    jniSetLimits(this.addr, paramFloat1, paramFloat2);
  }

  public void setMaxMotorTorque(float paramFloat)
  {
    jniSetMaxMotorTorque(this.addr, paramFloat);
  }

  public void setMotorSpeed(float paramFloat)
  {
    jniSetMotorSpeed(this.addr, paramFloat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.RevoluteJoint
 * JD-Core Version:    0.6.2
 */