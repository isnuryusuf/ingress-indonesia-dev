package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class MouseJoint extends Joint
{
  private final Vector2 target = new Vector2();
  final float[] tmp = new float[2];

  public MouseJoint(World paramWorld, long paramLong)
  {
    super(paramWorld, paramLong);
  }

  private native float jniGetDampingRatio(long paramLong);

  private native float jniGetFrequency(long paramLong);

  private native float jniGetMaxForce(long paramLong);

  private native void jniGetTarget(long paramLong, float[] paramArrayOfFloat);

  private native void jniSetDampingRatio(long paramLong, float paramFloat);

  private native void jniSetFrequency(long paramLong, float paramFloat);

  private native void jniSetMaxForce(long paramLong, float paramFloat);

  private native void jniSetTarget(long paramLong, float paramFloat1, float paramFloat2);

  public float getDampingRatio()
  {
    return jniGetDampingRatio(this.addr);
  }

  public float getFrequency()
  {
    return jniGetFrequency(this.addr);
  }

  public float getMaxForce()
  {
    return jniGetMaxForce(this.addr);
  }

  public Vector2 getTarget()
  {
    jniGetTarget(this.addr, this.tmp);
    this.target.x = this.tmp[0];
    this.target.y = this.tmp[1];
    return this.target;
  }

  public void setDampingRatio(float paramFloat)
  {
    jniSetDampingRatio(this.addr, paramFloat);
  }

  public void setFrequency(float paramFloat)
  {
    jniSetFrequency(this.addr, paramFloat);
  }

  public void setMaxForce(float paramFloat)
  {
    jniSetMaxForce(this.addr, paramFloat);
  }

  public void setTarget(Vector2 paramVector2)
  {
    jniSetTarget(this.addr, paramVector2.x, paramVector2.y);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.MouseJoint
 * JD-Core Version:    0.6.2
 */