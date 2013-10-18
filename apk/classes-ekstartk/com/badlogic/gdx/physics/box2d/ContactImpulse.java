package com.badlogic.gdx.physics.box2d;

public class ContactImpulse
{
  long addr;
  final float[] normalImpulses = new float[2];
  final float[] tangentImpulses = new float[2];
  float[] tmp = new float[2];
  final World world;

  protected ContactImpulse(World paramWorld, long paramLong)
  {
    this.world = paramWorld;
    this.addr = paramLong;
  }

  private native int jniGetCount(long paramLong);

  private native void jniGetNormalImpulses(long paramLong, float[] paramArrayOfFloat);

  private native void jniGetTangentImpulses(long paramLong, float[] paramArrayOfFloat);

  public int getCount()
  {
    return jniGetCount(this.addr);
  }

  public float[] getNormalImpulses()
  {
    jniGetNormalImpulses(this.addr, this.normalImpulses);
    return this.normalImpulses;
  }

  public float[] getTangentImpulses()
  {
    jniGetTangentImpulses(this.addr, this.tangentImpulses);
    return this.tangentImpulses;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.ContactImpulse
 * JD-Core Version:    0.6.2
 */