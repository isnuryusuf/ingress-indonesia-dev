package com.badlogic.gdx.math.collision;

import com.badlogic.gdx.math.Vector3;
import java.io.Serializable;

public class Sphere
  implements Serializable
{
  private static final long serialVersionUID = -6487336868908521596L;
  public final Vector3 center;
  public float radius;

  public Sphere(Vector3 paramVector3, float paramFloat)
  {
    this.center = new Vector3(paramVector3);
    this.radius = paramFloat;
  }

  public boolean overlaps(Sphere paramSphere)
  {
    return this.center.dst2(paramSphere.center) < this.radius * this.radius + paramSphere.radius * this.radius;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.collision.Sphere
 * JD-Core Version:    0.6.2
 */