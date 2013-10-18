package com.badlogic.gdx.graphics.g3d.loaders.md5;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public class MD5Model
{
  public MD5Joints baseSkeleton;
  public MD5Mesh[] meshes;
  public int numJoints;

  public int getNumTriangles()
  {
    int i = 0;
    int j = 0;
    while (i < this.meshes.length)
    {
      j += this.meshes[i].numTriangles;
      i++;
    }
    return j;
  }

  public int getNumVertices()
  {
    int i = 0;
    int j = 0;
    while (i < this.meshes.length)
    {
      j += this.meshes[i].numVertices;
      i++;
    }
    return j;
  }

  public void read(DataInputStream paramDataInputStream)
  {
    this.numJoints = paramDataInputStream.readInt();
    this.baseSkeleton = new MD5Joints();
    this.baseSkeleton.read(paramDataInputStream);
    int i = paramDataInputStream.readInt();
    this.meshes = new MD5Mesh[i];
    for (int j = 0; j < i; j++)
    {
      this.meshes[j] = new MD5Mesh();
      this.meshes[j].read(paramDataInputStream);
    }
  }

  public void write(DataOutputStream paramDataOutputStream)
  {
    paramDataOutputStream.writeInt(this.numJoints);
    this.baseSkeleton.write(paramDataOutputStream);
    paramDataOutputStream.writeInt(this.meshes.length);
    for (int i = 0; i < this.meshes.length; i++)
      this.meshes[i].write(paramDataOutputStream);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Model
 * JD-Core Version:    0.6.2
 */