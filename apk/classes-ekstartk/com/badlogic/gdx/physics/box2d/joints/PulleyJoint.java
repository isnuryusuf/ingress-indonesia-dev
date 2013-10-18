package com.badlogic.gdx.physics.box2d.joints;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Joint;
import com.badlogic.gdx.physics.box2d.World;

public class PulleyJoint extends Joint
{
  private final Vector2 groundAnchorA = new Vector2();
  private final Vector2 groundAnchorB = new Vector2();
  private final float[] tmp = new float[2];

  public PulleyJoint(World paramWorld, long paramLong)
  {
    super(paramWorld, paramLong);
  }

  private native void jniGetGroundAnchorA(long paramLong, float[] paramArrayOfFloat);

  private native void jniGetGroundAnchorB(long paramLong, float[] paramArrayOfFloat);

  private native float jniGetLength1(long paramLong);

  private native float jniGetLength2(long paramLong);

  private native float jniGetRatio(long paramLong);

  public Vector2 getGroundAnchorA()
  {
    jniGetGroundAnchorA(this.addr, this.tmp);
    this.groundAnchorA.set(this.tmp[0], this.tmp[1]);
    return this.groundAnchorA;
  }

  public Vector2 getGroundAnchorB()
  {
    jniGetGroundAnchorB(this.addr, this.tmp);
    this.groundAnchorB.set(this.tmp[0], this.tmp[1]);
    return this.groundAnchorB;
  }

  public float getLength1()
  {
    return jniGetLength1(this.addr);
  }

  public float getLength2()
  {
    return jniGetLength2(this.addr);
  }

  public float getRatio()
  {
    return jniGetRatio(this.addr);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.joints.PulleyJoint
 * JD-Core Version:    0.6.2
 */