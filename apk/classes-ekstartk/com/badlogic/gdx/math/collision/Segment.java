package com.badlogic.gdx.math.collision;

import com.badlogic.gdx.math.Vector3;
import java.io.Serializable;

public class Segment
  implements Serializable
{
  private static final long serialVersionUID = 2739667069736519602L;
  public final Vector3 a = new Vector3();
  public final Vector3 b = new Vector3();

  public Segment(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.a.set(paramFloat1, paramFloat2, paramFloat3);
    this.b.set(paramFloat4, paramFloat5, paramFloat6);
  }

  public Segment(Vector3 paramVector31, Vector3 paramVector32)
  {
    this.a.set(paramVector31);
    this.b.set(paramVector32);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.collision.Segment
 * JD-Core Version:    0.6.2
 */