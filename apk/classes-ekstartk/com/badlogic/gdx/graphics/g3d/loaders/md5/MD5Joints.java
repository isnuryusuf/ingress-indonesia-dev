package com.badlogic.gdx.graphics.g3d.loaders.md5;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public class MD5Joints
{
  private static final int stride = 8;
  public float[] joints;
  public String[] names;
  public int numJoints;

  public void read(DataInputStream paramDataInputStream)
  {
    int i = 0;
    int j = paramDataInputStream.readInt();
    this.names = new String[j];
    for (int k = 0; k < j; k++)
      this.names[k] = paramDataInputStream.readUTF();
    this.numJoints = paramDataInputStream.readInt();
    this.joints = new float[8 * this.numJoints];
    while (i < 8 * this.numJoints)
    {
      this.joints[i] = paramDataInputStream.readFloat();
      i++;
    }
  }

  public void write(DataOutputStream paramDataOutputStream)
  {
    int i = 0;
    paramDataOutputStream.writeInt(this.names.length);
    for (int j = 0; j < this.names.length; j++)
      paramDataOutputStream.writeUTF(this.names[j]);
    paramDataOutputStream.writeInt(this.numJoints);
    while (i < 8 * this.numJoints)
    {
      paramDataOutputStream.writeFloat(this.joints[i]);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Joints
 * JD-Core Version:    0.6.2
 */