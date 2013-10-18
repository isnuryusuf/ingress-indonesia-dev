package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.math.Vector2;

public class Manifold
{
  long addr;
  final Vector2 localNormal;
  final Vector2 localPoint;
  final Manifold.ManifoldPoint[] points;
  final float[] tmpFloat;
  final int[] tmpInt;

  protected Manifold(long paramLong)
  {
    Manifold.ManifoldPoint[] arrayOfManifoldPoint = new Manifold.ManifoldPoint[2];
    arrayOfManifoldPoint[0] = new Manifold.ManifoldPoint(this);
    arrayOfManifoldPoint[1] = new Manifold.ManifoldPoint(this);
    this.points = arrayOfManifoldPoint;
    this.localNormal = new Vector2();
    this.localPoint = new Vector2();
    this.tmpInt = new int[2];
    this.tmpFloat = new float[4];
    this.addr = paramLong;
  }

  private native void jniGetLocalNormal(long paramLong, float[] paramArrayOfFloat);

  private native void jniGetLocalPoint(long paramLong, float[] paramArrayOfFloat);

  private native int jniGetPoint(long paramLong, float[] paramArrayOfFloat, int paramInt);

  private native int jniGetPointCount(long paramLong);

  private native int jniGetType(long paramLong);

  public Vector2 getLocalNormal()
  {
    jniGetLocalNormal(this.addr, this.tmpFloat);
    this.localNormal.set(this.tmpFloat[0], this.tmpFloat[1]);
    return this.localNormal;
  }

  public Vector2 getLocalPoint()
  {
    jniGetLocalPoint(this.addr, this.tmpFloat);
    this.localPoint.set(this.tmpFloat[0], this.tmpFloat[1]);
    return this.localPoint;
  }

  public int getPointCount()
  {
    return jniGetPointCount(this.addr);
  }

  public Manifold.ManifoldPoint[] getPoints()
  {
    int i = jniGetPointCount(this.addr);
    for (int j = 0; j < i; j++)
    {
      int k = jniGetPoint(this.addr, this.tmpFloat, j);
      Manifold.ManifoldPoint localManifoldPoint = this.points[j];
      localManifoldPoint.contactID = k;
      localManifoldPoint.localPoint.set(this.tmpFloat[0], this.tmpFloat[1]);
      localManifoldPoint.normalImpulse = this.tmpFloat[2];
      localManifoldPoint.tangentImpulse = this.tmpFloat[3];
    }
    return this.points;
  }

  public Manifold.ManifoldType getType()
  {
    int i = jniGetType(this.addr);
    if (i == 0)
      return Manifold.ManifoldType.Circle;
    if (i == 1)
      return Manifold.ManifoldType.FaceA;
    if (i == 2)
      return Manifold.ManifoldType.FaceB;
    return Manifold.ManifoldType.Circle;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.physics.box2d.Manifold
 * JD-Core Version:    0.6.2
 */