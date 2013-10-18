package com.badlogic.gdx.math;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CatmullRomSpline
  implements Serializable
{
  private static final long serialVersionUID = -3290464799289771451L;
  Vector3 T1 = new Vector3();
  Vector3 T2 = new Vector3();
  private List<Vector3> controlPoints = new ArrayList();

  public void add(Vector3 paramVector3)
  {
    this.controlPoints.add(paramVector3);
  }

  public List<Vector3> getControlPoints()
  {
    return this.controlPoints;
  }

  public List<Vector3> getPath(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (this.controlPoints.size() < 4)
      return localArrayList;
    Vector3 localVector31 = new Vector3();
    Vector3 localVector32 = new Vector3();
    for (int i = 1; i <= -3 + this.controlPoints.size(); i++)
    {
      localArrayList.add(this.controlPoints.get(i));
      float f1 = 1.0F / (paramInt + 1);
      localVector31.set((Vector3)this.controlPoints.get(i + 1)).sub((Vector3)this.controlPoints.get(i - 1)).mul(0.5F);
      localVector32.set((Vector3)this.controlPoints.get(i + 2)).sub((Vector3)this.controlPoints.get(i)).mul(0.5F);
      int j = 0;
      float f2 = f1;
      while (j < paramInt)
      {
        float f3 = 1.0F + (f2 * (f2 * (2.0F * f2)) - f2 * (3.0F * f2));
        float f4 = f2 * (f2 * (-2.0F * f2)) + f2 * (3.0F * f2);
        float f5 = f2 + (f2 * (f2 * f2) - f2 * (2.0F * f2));
        float f6 = f2 * (f2 * f2) - f2 * f2;
        Vector3 localVector33 = new Vector3((Vector3)this.controlPoints.get(i)).mul(f3);
        localVector33.add(((Vector3)this.controlPoints.get(i + 1)).tmp().mul(f4));
        localVector33.add(localVector31.tmp().mul(f5));
        localVector33.add(localVector32.tmp().mul(f6));
        localArrayList.add(localVector33);
        f2 += f1;
        j++;
      }
    }
    if (this.controlPoints.size() >= 4)
      localArrayList.add(this.controlPoints.get(-2 + this.controlPoints.size()));
    return localArrayList;
  }

  public void getPath(Vector3[] paramArrayOfVector3, int paramInt)
  {
    if (this.controlPoints.size() < 4)
      return;
    int i = 0;
    int j = 1;
    while (j <= -3 + this.controlPoints.size())
    {
      int k = i + 1;
      paramArrayOfVector3[i].set((Vector3)this.controlPoints.get(j));
      float f1 = 1.0F / (paramInt + 1);
      this.T1.set((Vector3)this.controlPoints.get(j + 1)).sub((Vector3)this.controlPoints.get(j - 1)).mul(0.5F);
      this.T2.set((Vector3)this.controlPoints.get(j + 2)).sub((Vector3)this.controlPoints.get(j)).mul(0.5F);
      int m = 0;
      float f2 = f1;
      while (m < paramInt)
      {
        float f3 = 1.0F + (f2 * (f2 * (2.0F * f2)) - f2 * (3.0F * f2));
        float f4 = f2 * (f2 * (-2.0F * f2)) + f2 * (3.0F * f2);
        float f5 = f2 + (f2 * (f2 * f2) - f2 * (2.0F * f2));
        float f6 = f2 * (f2 * f2) - f2 * f2;
        int n = k + 1;
        Vector3 localVector3 = paramArrayOfVector3[k].set((Vector3)this.controlPoints.get(j)).mul(f3);
        localVector3.add(((Vector3)this.controlPoints.get(j + 1)).tmp().mul(f4));
        localVector3.add(this.T1.tmp().mul(f5));
        localVector3.add(this.T2.tmp().mul(f6));
        float f7 = f2 + f1;
        m++;
        f2 = f7;
        k = n;
      }
      j++;
      i = k;
    }
    paramArrayOfVector3[i].set((Vector3)this.controlPoints.get(-2 + this.controlPoints.size()));
  }

  public List<Vector3> getTangentNormals(int paramInt, Vector3 paramVector3)
  {
    List localList = getTangents(paramInt);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(new Vector3((Vector3)localIterator.next()).crs(paramVector3).nor());
    return localArrayList;
  }

  public List<Vector3> getTangentNormals(int paramInt, List<Vector3> paramList)
  {
    List localList = getTangents(paramInt);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    int j;
    for (int i = 0; localIterator.hasNext(); i = j)
    {
      Vector3 localVector3 = new Vector3((Vector3)localIterator.next());
      j = i + 1;
      localArrayList.add(localVector3.crs((Vector3)paramList.get(i)).nor());
    }
    return localArrayList;
  }

  public List<Vector3> getTangentNormals2D(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (this.controlPoints.size() < 4)
      return localArrayList;
    Vector3 localVector31 = new Vector3();
    Vector3 localVector32 = new Vector3();
    for (int i = 1; i <= -3 + this.controlPoints.size(); i++)
    {
      float f1 = 1.0F / (paramInt + 1);
      localVector31.set((Vector3)this.controlPoints.get(i + 1)).sub((Vector3)this.controlPoints.get(i - 1)).mul(0.5F);
      localVector32.set((Vector3)this.controlPoints.get(i + 2)).sub((Vector3)this.controlPoints.get(i)).mul(0.5F);
      Vector3 localVector33 = new Vector3(localVector31).nor();
      float f2 = localVector33.x;
      localVector33.x = localVector33.y;
      localVector33.y = (-f2);
      localArrayList.add(localVector33);
      int j = 0;
      float f3 = f1;
      while (j < paramInt)
      {
        float f4 = f3 * (6.0F * f3) - 6.0F * f3;
        float f5 = f3 * (-6.0F * f3) + 6.0F * f3;
        float f6 = 1.0F + (f3 * (3.0F * f3) - 4.0F * f3);
        float f7 = f3 * (3.0F * f3) - 2.0F * f3;
        Vector3 localVector34 = new Vector3((Vector3)this.controlPoints.get(i)).mul(f4);
        localVector34.add(((Vector3)this.controlPoints.get(i + 1)).tmp().mul(f5));
        localVector34.add(localVector31.tmp().mul(f6));
        localVector34.add(localVector32.tmp().mul(f7));
        localVector34.nor();
        float f8 = localVector34.x;
        localVector34.x = localVector34.y;
        localVector34.y = (-f8);
        localArrayList.add(localVector34);
        f3 += f1;
        j++;
      }
    }
    return localArrayList;
  }

  public List<Vector3> getTangents(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (this.controlPoints.size() < 4)
      return localArrayList;
    Vector3 localVector31 = new Vector3();
    Vector3 localVector32 = new Vector3();
    for (int i = 1; i <= -3 + this.controlPoints.size(); i++)
    {
      float f1 = 1.0F / (paramInt + 1);
      localVector31.set((Vector3)this.controlPoints.get(i + 1)).sub((Vector3)this.controlPoints.get(i - 1)).mul(0.5F);
      localVector32.set((Vector3)this.controlPoints.get(i + 2)).sub((Vector3)this.controlPoints.get(i)).mul(0.5F);
      localArrayList.add(new Vector3(localVector31).nor());
      int j = 0;
      float f2 = f1;
      while (j < paramInt)
      {
        float f3 = f2 * (6.0F * f2) - 6.0F * f2;
        float f4 = f2 * (-6.0F * f2) + 6.0F * f2;
        float f5 = 1.0F + (f2 * (3.0F * f2) - 4.0F * f2);
        float f6 = f2 * (3.0F * f2) - 2.0F * f2;
        Vector3 localVector33 = new Vector3((Vector3)this.controlPoints.get(i)).mul(f3);
        localVector33.add(((Vector3)this.controlPoints.get(i + 1)).tmp().mul(f4));
        localVector33.add(localVector31.tmp().mul(f5));
        localVector33.add(localVector32.tmp().mul(f6));
        localArrayList.add(localVector33.nor());
        f2 += f1;
        j++;
      }
    }
    if (this.controlPoints.size() >= 4)
      localArrayList.add(localVector31.set((Vector3)this.controlPoints.get(-1 + this.controlPoints.size())).sub((Vector3)this.controlPoints.get(-3 + this.controlPoints.size())).mul(0.5F).cpy().nor());
    return localArrayList;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.CatmullRomSpline
 * JD-Core Version:    0.6.2
 */