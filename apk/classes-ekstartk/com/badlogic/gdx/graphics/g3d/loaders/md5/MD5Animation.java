package com.badlogic.gdx.graphics.g3d.loaders.md5;

import com.badlogic.gdx.graphics.g3d.Animation;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import java.io.DataInputStream;
import java.io.DataOutputStream;

public class MD5Animation extends Animation
{
  static MD5Quaternion jointAOrient = new MD5Quaternion();
  static MD5Quaternion jointBOrient = new MD5Quaternion();
  public BoundingBox[] bounds;
  public int frameRate;
  public MD5Joints[] frames;
  public String name;
  public float secondsPerFrame;

  public static void interpolate(MD5Joints paramMD5Joints1, MD5Joints paramMD5Joints2, MD5Joints paramMD5Joints3, float paramFloat)
  {
    int i = 0;
    int j = 0;
    while (j < paramMD5Joints1.numJoints)
    {
      float f1 = paramMD5Joints1.joints[(i + 1)];
      float f2 = paramMD5Joints1.joints[(i + 2)];
      float f3 = paramMD5Joints1.joints[(i + 3)];
      jointAOrient.x = paramMD5Joints1.joints[(i + 4)];
      jointAOrient.y = paramMD5Joints1.joints[(i + 5)];
      jointAOrient.z = paramMD5Joints1.joints[(i + 6)];
      jointAOrient.w = paramMD5Joints1.joints[(i + 7)];
      float f4 = paramMD5Joints2.joints[(i + 1)];
      float f5 = paramMD5Joints2.joints[(i + 2)];
      float f6 = paramMD5Joints2.joints[(i + 3)];
      jointBOrient.x = paramMD5Joints2.joints[(i + 4)];
      jointBOrient.y = paramMD5Joints2.joints[(i + 5)];
      jointBOrient.z = paramMD5Joints2.joints[(i + 6)];
      jointBOrient.w = paramMD5Joints2.joints[(i + 7)];
      paramMD5Joints3.joints[i] = paramMD5Joints1.joints[i];
      paramMD5Joints3.joints[(i + 1)] = (f1 + paramFloat * (f4 - f1));
      paramMD5Joints3.joints[(i + 2)] = (f2 + paramFloat * (f5 - f2));
      paramMD5Joints3.joints[(i + 3)] = (f3 + paramFloat * (f6 - f3));
      jointAOrient.slerp(jointBOrient, paramFloat);
      paramMD5Joints3.joints[(i + 4)] = jointAOrient.x;
      paramMD5Joints3.joints[(i + 5)] = jointAOrient.y;
      paramMD5Joints3.joints[(i + 6)] = jointAOrient.z;
      paramMD5Joints3.joints[(i + 7)] = jointAOrient.w;
      j++;
      i += 8;
    }
  }

  public float getLength()
  {
    return this.frames.length * this.secondsPerFrame;
  }

  public int getNumFrames()
  {
    return this.frames.length;
  }

  public void read(DataInputStream paramDataInputStream)
  {
    int i = 0;
    this.name = paramDataInputStream.readUTF();
    this.frameRate = paramDataInputStream.readInt();
    this.secondsPerFrame = paramDataInputStream.readFloat();
    int j = paramDataInputStream.readInt();
    this.frames = new MD5Joints[j];
    for (int k = 0; k < j; k++)
    {
      this.frames[k] = new MD5Joints();
      this.frames[k].read(paramDataInputStream);
    }
    int m = paramDataInputStream.readInt();
    this.bounds = new BoundingBox[m];
    while (i < m)
    {
      this.bounds[i] = new BoundingBox();
      this.bounds[i].min.x = paramDataInputStream.readFloat();
      this.bounds[i].min.y = paramDataInputStream.readFloat();
      this.bounds[i].min.z = paramDataInputStream.readFloat();
      this.bounds[i].max.x = paramDataInputStream.readFloat();
      this.bounds[i].max.y = paramDataInputStream.readFloat();
      this.bounds[i].max.z = paramDataInputStream.readFloat();
      i++;
    }
  }

  public void write(DataOutputStream paramDataOutputStream)
  {
    int i = 0;
    paramDataOutputStream.writeUTF(this.name);
    paramDataOutputStream.writeInt(this.frameRate);
    paramDataOutputStream.writeFloat(this.secondsPerFrame);
    paramDataOutputStream.writeInt(this.frames.length);
    for (int j = 0; j < this.frames.length; j++)
      this.frames[j].write(paramDataOutputStream);
    paramDataOutputStream.writeInt(this.bounds.length);
    while (i < this.bounds.length)
    {
      paramDataOutputStream.writeFloat(this.bounds[i].min.x);
      paramDataOutputStream.writeFloat(this.bounds[i].min.y);
      paramDataOutputStream.writeFloat(this.bounds[i].min.z);
      paramDataOutputStream.writeFloat(this.bounds[i].max.x);
      paramDataOutputStream.writeFloat(this.bounds[i].max.y);
      paramDataOutputStream.writeFloat(this.bounds[i].max.z);
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Animation
 * JD-Core Version:    0.6.2
 */