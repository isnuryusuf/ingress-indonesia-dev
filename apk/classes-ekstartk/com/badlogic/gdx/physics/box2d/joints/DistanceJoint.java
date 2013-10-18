package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class DistanceJoint extends Joint
{
  public DistanceJoint(World paramWorld, long paramLong)
  {
    super(paramWorld, paramLong);
  }

  private native float jniGetDampingRatio(long paramLong);

  private native float jniGetFrequency(long paramLong);

  private native float jniGetLength(long paramLong);

  private native void jniSetDampingRatio(long paramLong, float paramFloat);

  private native void jniSetFrequency(long paramLong, float paramFloat);

  private native void jniSetLength(long paramLong, float paramFloat);

  public float getDampingRatio()
  {
    return jniGetDampingRatio(this.addr);
  }

  public float getFrequency()
  {
    return jniGetFrequency(this.addr);
  }

  public float getLength()
  {
    return jniGetLength(this.addr);
  }

  public void setDampingRatio(float paramFloat)
  {
    jniSetDampingRatio(this.addr, paramFloat);
  }

  public void setFrequency(float paramFloat)
  {
    jniSetFrequency(this.addr, paramFloat);
  }

  public void setLength(float paramFloat)
  {
    jniSetLength(this.addr, paramFloat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.DistanceJoint
 * JD-Core Version:    0.6.2
 */