package com.badlogic.gdx.math.collision;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

public class BoundingBox
  implements Serializable
{
  private static final long serialVersionUID = -1286036817192127343L;
  final Vector3 cnt = new Vector3();
  final Vector3[] crn = new Vector3[8];
  boolean crn_dirty = true;
  final Vector3 dim = new Vector3();
  public final Vector3 max = new Vector3();
  public final Vector3 min = new Vector3();

  public BoundingBox()
  {
    for (int i = 0; i < 8; i++)
      this.crn[i] = new Vector3();
    clr();
  }

  public BoundingBox(Vector3 paramVector31, Vector3 paramVector32)
  {
    for (int i = 0; i < 8; i++)
      this.crn[i] = new Vector3();
    set(paramVector31, paramVector32);
  }

  public BoundingBox(BoundingBox paramBoundingBox)
  {
    for (int i = 0; i < 8; i++)
      this.crn[i] = new Vector3();
    set(paramBoundingBox);
  }

  static float max(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > paramFloat2)
      return paramFloat1;
    return paramFloat2;
  }

  static float min(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > paramFloat2)
      return paramFloat2;
    return paramFloat1;
  }

  public BoundingBox clr()
  {
    this.crn_dirty = true;
    return set(this.min.set(0.0F, 0.0F, 0.0F), this.max.set(0.0F, 0.0F, 0.0F));
  }

  public boolean contains(Vector3 paramVector3)
  {
    if (this.min.x > paramVector3.x);
    while ((this.max.x < paramVector3.x) || (this.min.y > paramVector3.y) || (this.max.y < paramVector3.y) || (this.min.z > paramVector3.z) || (this.max.z < paramVector3.z))
      return false;
    return true;
  }

  public boolean contains(BoundingBox paramBoundingBox)
  {
    if (!isValid());
    do
    {
      return true;
      if (this.min.x > paramBoundingBox.min.x)
        return false;
      if (this.min.y > paramBoundingBox.min.y)
        return false;
      if (this.min.z > paramBoundingBox.min.z)
        return false;
      if (this.max.x < paramBoundingBox.max.x)
        return false;
      if (this.max.y < paramBoundingBox.max.y)
        return false;
    }
    while (this.max.z >= paramBoundingBox.max.z);
    return false;
  }

  public BoundingBox ext(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.crn_dirty = true;
    return set(this.min.set(min(this.min.x, paramFloat1), min(this.min.y, paramFloat2), min(this.min.z, paramFloat3)), this.max.set(max(this.max.x, paramFloat1), max(this.max.y, paramFloat2), max(this.max.z, paramFloat3)));
  }

  public BoundingBox ext(Vector3 paramVector3)
  {
    this.crn_dirty = true;
    return set(this.min.set(min(this.min.x, paramVector3.x), min(this.min.y, paramVector3.y), min(this.min.z, paramVector3.z)), this.max.set(Math.max(this.max.x, paramVector3.x), Math.max(this.max.y, paramVector3.y), Math.max(this.max.z, paramVector3.z)));
  }

  public BoundingBox ext(BoundingBox paramBoundingBox)
  {
    this.crn_dirty = true;
    return set(this.min.set(min(this.min.x, paramBoundingBox.min.x), min(this.min.y, paramBoundingBox.min.y), min(this.min.z, paramBoundingBox.min.z)), this.max.set(max(this.max.x, paramBoundingBox.max.x), max(this.max.y, paramBoundingBox.max.y), max(this.max.z, paramBoundingBox.max.z)));
  }

  public Vector3 getCenter()
  {
    return this.cnt;
  }

  public Vector3[] getCorners()
  {
    updateCorners();
    return this.crn;
  }

  public Vector3 getDimensions()
  {
    return this.dim;
  }

  public Vector3 getMax()
  {
    try
    {
      Vector3 localVector3 = this.max;
      return localVector3;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Vector3 getMin()
  {
    return this.min;
  }

  public BoundingBox inf()
  {
    this.min.set((1.0F / 1.0F), (1.0F / 1.0F), (1.0F / 1.0F));
    this.max.set((1.0F / -1.0F), (1.0F / -1.0F), (1.0F / -1.0F));
    this.cnt.set(0.0F, 0.0F, 0.0F);
    this.dim.set(0.0F, 0.0F, 0.0F);
    this.crn_dirty = true;
    return this;
  }

  public boolean isValid()
  {
    return (this.min.x < this.max.x) && (this.min.y < this.max.y) && (this.min.z < this.max.z);
  }

  public BoundingBox mul(Matrix4 paramMatrix4)
  {
    updateCorners();
    inf();
    for (Vector3 localVector3 : this.crn)
    {
      localVector3.mul(paramMatrix4);
      this.min.set(min(this.min.x, localVector3.x), min(this.min.y, localVector3.y), min(this.min.z, localVector3.z));
      this.max.set(max(this.max.x, localVector3.x), max(this.max.y, localVector3.y), max(this.max.z, localVector3.z));
    }
    this.crn_dirty = true;
    return set(this.min, this.max);
  }

  public BoundingBox set(Vector3 paramVector31, Vector3 paramVector32)
  {
    Vector3 localVector31 = this.min;
    float f1;
    float f2;
    label41: float f3;
    label59: Vector3 localVector32;
    float f4;
    label94: float f5;
    if (paramVector31.x < paramVector32.x)
    {
      f1 = paramVector31.x;
      if (paramVector31.y >= paramVector32.y)
        break label201;
      f2 = paramVector31.y;
      if (paramVector31.z >= paramVector32.z)
        break label210;
      f3 = paramVector31.z;
      localVector31.set(f1, f2, f3);
      localVector32 = this.max;
      if (paramVector31.x <= paramVector32.x)
        break label219;
      f4 = paramVector31.x;
      if (paramVector31.y <= paramVector32.y)
        break label228;
      f5 = paramVector31.y;
      label112: if (paramVector31.z <= paramVector32.z)
        break label237;
    }
    label201: label210: label219: label228: label237: for (float f6 = paramVector31.z; ; f6 = paramVector32.z)
    {
      localVector32.set(f4, f5, f6);
      this.cnt.set(this.min).add(this.max).mul(0.5F);
      this.dim.set(this.max).sub(this.min);
      this.crn_dirty = true;
      return this;
      f1 = paramVector32.x;
      break;
      f2 = paramVector32.y;
      break label41;
      f3 = paramVector32.z;
      break label59;
      f4 = paramVector32.x;
      break label94;
      f5 = paramVector32.y;
      break label112;
    }
  }

  public BoundingBox set(BoundingBox paramBoundingBox)
  {
    this.crn_dirty = true;
    return set(paramBoundingBox.min, paramBoundingBox.max);
  }

  public BoundingBox set(List<Vector3> paramList)
  {
    inf();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      ext((Vector3)localIterator.next());
    this.crn_dirty = true;
    return this;
  }

  public BoundingBox set(Vector3[] paramArrayOfVector3)
  {
    inf();
    int i = paramArrayOfVector3.length;
    for (int j = 0; j < i; j++)
      ext(paramArrayOfVector3[j]);
    this.crn_dirty = true;
    return this;
  }

  public String toString()
  {
    return "[" + this.min + "|" + this.max + "]";
  }

  protected void updateCorners()
  {
    if (!this.crn_dirty)
      return;
    this.crn[0].set(this.min.x, this.min.y, this.min.z);
    this.crn[1].set(this.max.x, this.min.y, this.min.z);
    this.crn[2].set(this.max.x, this.max.y, this.min.z);
    this.crn[3].set(this.min.x, this.max.y, this.min.z);
    this.crn[4].set(this.min.x, this.min.y, this.max.z);
    this.crn[5].set(this.max.x, this.min.y, this.max.z);
    this.crn[6].set(this.max.x, this.max.y, this.max.z);
    this.crn[7].set(this.min.x, this.max.y, this.max.z);
    this.crn_dirty = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.collision.BoundingBox
 * JD-Core Version:    0.6.2
 */