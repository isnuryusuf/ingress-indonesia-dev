package com.badlogic.gdx.math;

import com.badlogic.gdx.math.collision.BoundingBox;

public class Frustum
{
  protected static final Vector3[] clipSpacePlanePoints;
  protected static final float[] clipSpacePlanePointsArray;
  public final Vector3[] planePoints;
  protected final float[] planePointsArray;
  public final Plane[] planes = new Plane[6];

  static
  {
    int i = 0;
    Vector3[] arrayOfVector31 = new Vector3[8];
    arrayOfVector31[0] = new Vector3(-1.0F, -1.0F, -1.0F);
    arrayOfVector31[1] = new Vector3(1.0F, -1.0F, -1.0F);
    arrayOfVector31[2] = new Vector3(1.0F, 1.0F, -1.0F);
    arrayOfVector31[3] = new Vector3(-1.0F, 1.0F, -1.0F);
    arrayOfVector31[4] = new Vector3(-1.0F, -1.0F, 1.0F);
    arrayOfVector31[5] = new Vector3(1.0F, -1.0F, 1.0F);
    arrayOfVector31[6] = new Vector3(1.0F, 1.0F, 1.0F);
    arrayOfVector31[7] = new Vector3(-1.0F, 1.0F, 1.0F);
    clipSpacePlanePoints = arrayOfVector31;
    clipSpacePlanePointsArray = new float[24];
    Vector3[] arrayOfVector32 = clipSpacePlanePoints;
    int j = arrayOfVector32.length;
    int k = 0;
    while (i < j)
    {
      Vector3 localVector3 = arrayOfVector32[i];
      float[] arrayOfFloat1 = clipSpacePlanePointsArray;
      int m = k + 1;
      arrayOfFloat1[k] = localVector3.x;
      float[] arrayOfFloat2 = clipSpacePlanePointsArray;
      int n = m + 1;
      arrayOfFloat2[m] = localVector3.y;
      float[] arrayOfFloat3 = clipSpacePlanePointsArray;
      k = n + 1;
      arrayOfFloat3[n] = localVector3.z;
      i++;
    }
  }

  public Frustum()
  {
    Vector3[] arrayOfVector3 = new Vector3[8];
    arrayOfVector3[0] = new Vector3();
    arrayOfVector3[1] = new Vector3();
    arrayOfVector3[2] = new Vector3();
    arrayOfVector3[3] = new Vector3();
    arrayOfVector3[4] = new Vector3();
    arrayOfVector3[5] = new Vector3();
    arrayOfVector3[6] = new Vector3();
    arrayOfVector3[7] = new Vector3();
    this.planePoints = arrayOfVector3;
    this.planePointsArray = new float[24];
    while (i < 6)
    {
      this.planes[i] = new Plane(new Vector3(), 0.0F);
      i++;
    }
  }

  public boolean boundsInFrustum(BoundingBox paramBoundingBox)
  {
    Vector3[] arrayOfVector3 = paramBoundingBox.getCorners();
    int i = arrayOfVector3.length;
    int j = this.planes.length;
    for (int k = 0; k < j; k++)
    {
      int m = 0;
      int n = 0;
      while (m < i)
      {
        if (this.planes[k].testPoint(arrayOfVector3[m]) == Plane.PlaneSide.Back)
          n++;
        m++;
      }
      if (n == 8)
        return false;
    }
    return true;
  }

  public boolean pointInFrustum(Vector3 paramVector3)
  {
    for (int i = 0; i < this.planes.length; i++)
      if (this.planes[i].testPoint(paramVector3) == Plane.PlaneSide.Back)
        return false;
    return true;
  }

  public boolean sphereInFrustum(Vector3 paramVector3, float paramFloat)
  {
    for (int i = 0; i < 6; i++)
      if (this.planes[i].normal.x * paramVector3.x + this.planes[i].normal.y * paramVector3.y + this.planes[i].normal.z * paramVector3.z < -paramFloat - this.planes[i].d)
        return false;
    return true;
  }

  public boolean sphereInFrustumWithoutNearFar(Vector3 paramVector3, float paramFloat)
  {
    for (int i = 2; i < 6; i++)
      if (this.planes[i].normal.x * paramVector3.x + this.planes[i].normal.y * paramVector3.y + this.planes[i].normal.z * paramVector3.z < -paramFloat - this.planes[i].d)
        return false;
    return true;
  }

  public void update(Matrix4 paramMatrix4)
  {
    System.arraycopy(clipSpacePlanePointsArray, 0, this.planePointsArray, 0, clipSpacePlanePointsArray.length);
    Matrix4.prj(paramMatrix4.val, this.planePointsArray, 0, 8, 3);
    int i = 0;
    for (int j = 0; j < 8; j++)
    {
      Vector3 localVector3 = this.planePoints[j];
      float[] arrayOfFloat1 = this.planePointsArray;
      int k = i + 1;
      localVector3.x = arrayOfFloat1[i];
      float[] arrayOfFloat2 = this.planePointsArray;
      int m = k + 1;
      localVector3.y = arrayOfFloat2[k];
      float[] arrayOfFloat3 = this.planePointsArray;
      i = m + 1;
      localVector3.z = arrayOfFloat3[m];
    }
    this.planes[0].set(this.planePoints[1], this.planePoints[0], this.planePoints[2]);
    this.planes[1].set(this.planePoints[4], this.planePoints[5], this.planePoints[7]);
    this.planes[2].set(this.planePoints[0], this.planePoints[4], this.planePoints[3]);
    this.planes[3].set(this.planePoints[5], this.planePoints[1], this.planePoints[6]);
    this.planes[4].set(this.planePoints[2], this.planePoints[3], this.planePoints[6]);
    this.planes[5].set(this.planePoints[4], this.planePoints[0], this.planePoints[1]);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Frustum
 * JD-Core Version:    0.6.2
 */