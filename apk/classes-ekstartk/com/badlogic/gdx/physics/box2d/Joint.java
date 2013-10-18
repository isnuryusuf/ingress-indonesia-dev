package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.LongMap;

public abstract class Joint
{
  protected long addr;
  private final Vector2 anchorA = new Vector2();
  private final Vector2 anchorB = new Vector2();
  protected JointEdge jointEdgeA;
  protected JointEdge jointEdgeB;
  private final Vector2 reactionForce = new Vector2();
  private final float[] tmp = new float[2];
  private final World world;

  protected Joint(World paramWorld, long paramLong)
  {
    this.world = paramWorld;
    this.addr = paramLong;
  }

  private native void jniGetAnchorA(long paramLong, float[] paramArrayOfFloat);

  private native void jniGetAnchorB(long paramLong, float[] paramArrayOfFloat);

  private native long jniGetBodyA(long paramLong);

  private native long jniGetBodyB(long paramLong);

  private native void jniGetReactionForce(long paramLong, float paramFloat, float[] paramArrayOfFloat);

  private native float jniGetReactionTorque(long paramLong, float paramFloat);

  private native int jniGetType(long paramLong);

  private native boolean jniIsActive(long paramLong);

  public Vector2 getAnchorA()
  {
    jniGetAnchorA(this.addr, this.tmp);
    this.anchorA.x = this.tmp[0];
    this.anchorA.y = this.tmp[1];
    return this.anchorA;
  }

  public Vector2 getAnchorB()
  {
    jniGetAnchorB(this.addr, this.tmp);
    this.anchorB.x = this.tmp[0];
    this.anchorB.y = this.tmp[1];
    return this.anchorB;
  }

  public Body getBodyA()
  {
    return (Body)this.world.bodies.get(jniGetBodyA(this.addr));
  }

  public Body getBodyB()
  {
    return (Body)this.world.bodies.get(jniGetBodyB(this.addr));
  }

  public Vector2 getReactionForce(float paramFloat)
  {
    jniGetReactionForce(this.addr, paramFloat, this.tmp);
    this.reactionForce.x = this.tmp[0];
    this.reactionForce.y = this.tmp[1];
    return this.reactionForce;
  }

  public float getReactionTorque(float paramFloat)
  {
    return jniGetReactionTorque(this.addr, paramFloat);
  }

  public JointDef.JointType getType()
  {
    int i = jniGetType(this.addr);
    if ((i > 0) && (i < JointDef.JointType.valueTypes.length))
      return JointDef.JointType.valueTypes[i];
    return JointDef.JointType.Unknown;
  }

  public boolean isActive()
  {
    return jniIsActive(this.addr);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.Joint
 * JD-Core Version:    0.6.2
 */