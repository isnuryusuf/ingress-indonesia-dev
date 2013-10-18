package com.badlogic.gdx.math;

import java.io.Serializable;

public class Plane
  implements Serializable
{
  private static final long serialVersionUID = -1240652082930747866L;
  public float d = 0.0F;
  public final Vector3 normal = new Vector3();

  public Plane(Vector3 paramVector3, float paramFloat)
  {
    this.normal.set(paramVector3).nor();
    this.d = paramFloat;
  }

  public Plane(Vector3 paramVector31, Vector3 paramVector32)
  {
    this.normal.set(paramVector31).nor();
    this.d = (-this.normal.dot(paramVector32));
  }

  public Plane(Vector3 paramVector31, Vector3 paramVector32, Vector3 paramVector33)
  {
    set(paramVector31, paramVector32, paramVector33);
  }

  public float distance(Vector3 paramVector3)
  {
    return this.normal.dot(paramVector3) + this.d;
  }

  public float getD()
  {
    return this.d;
  }

  public Vector3 getNormal()
  {
    return this.normal;
  }

  public boolean isFrontFacing(Vector3 paramVector3)
  {
    return this.normal.dot(paramVector3) <= 0.0F;
  }

  public void set(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.normal.set(paramFloat1, paramFloat2, paramFloat3);
    this.d = paramFloat4;
  }

  public void set(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.normal.set(paramFloat4, paramFloat5, paramFloat6);
    this.d = (-(paramFloat1 * paramFloat4 + paramFloat2 * paramFloat5 + paramFloat3 * paramFloat6));
  }

  public void set(Plane paramPlane)
  {
    this.normal.set(paramPlane.normal);
    this.d = paramPlane.d;
  }

  public void set(Vector3 paramVector31, Vector3 paramVector32)
  {
    this.normal.set(paramVector32);
    this.d = (-paramVector31.dot(paramVector32));
  }

  public void set(Vector3 paramVector31, Vector3 paramVector32, Vector3 paramVector33)
  {
    Vector3 localVector3 = paramVector31.tmp().sub(paramVector32).crs(paramVector32.tmp2().sub(paramVector33)).nor();
    this.normal.set(localVector3);
    this.d = (-paramVector31.dot(localVector3));
  }

  public Plane.PlaneSide testPoint(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f = this.normal.dot(paramFloat1, paramFloat2, paramFloat3) + this.d;
    if (f == 0.0F)
      return Plane.PlaneSide.OnPlane;
    if (f < 0.0F)
      return Plane.PlaneSide.Back;
    return Plane.PlaneSide.Front;
  }

  public Plane.PlaneSide testPoint(Vector3 paramVector3)
  {
    float f = this.normal.dot(paramVector3) + this.d;
    if (f == 0.0F)
      return Plane.PlaneSide.OnPlane;
    if (f < 0.0F)
      return Plane.PlaneSide.Back;
    return Plane.PlaneSide.Front;
  }

  public String toString()
  {
    return this.normal.toString() + ", " + this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Plane
 * JD-Core Version:    0.6.2
 */