package com.badlogic.gdx.graphics.g3d.loaders.md5;

import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import java.io.DataInputStream;
import java.io.DataOutputStream;

public class MD5Mesh
{
  static Vector3 _A = new Vector3();
  static Vector3 _B = new Vector3();
  static Vector3 _n = new Vector3();
  static Vector3 bn = new Vector3();
  static MD5Quaternion quat = new MD5Quaternion();
  static Vector3 vn = new Vector3();
  public int floatsPerVertex;
  public int floatsPerWeight;
  public short[] indices;
  public int numTriangles;
  public int numVertices;
  public int numWeights;
  public String shader;
  public float[] vertices;
  public float[] weights;

  private static Vector3 calcNor(Vector3 paramVector31, Vector3 paramVector32, Vector3 paramVector33)
  {
    Vector3 localVector31 = paramVector32.cpy();
    _A = localVector31;
    localVector31.sub(paramVector31);
    Vector3 localVector32 = paramVector33.cpy();
    _B = localVector32;
    localVector32.sub(paramVector32);
    Vector3 localVector33 = _A.crs(_B).nor();
    _n = localVector33;
    return localVector33;
  }

  public static void calculateNormalsBind(MD5Joints paramMD5Joints, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, short[] paramArrayOfShort, float[] paramArrayOfFloat3, int paramInt1, int paramInt2)
  {
    int i = 2;
    int j = 0;
    while (i < paramArrayOfFloat2.length)
    {
      float f8 = 0.0F;
      float f9 = 0.0F;
      float f10 = 0.0F;
      int i34 = (int)paramArrayOfFloat2[i];
      int i35 = (int)paramArrayOfFloat2[(i + 1)];
      int i36 = i34 * paramInt2;
      for (int i37 = 0; i37 < i35; i37++)
      {
        int i41 = i36 + 1;
        int i42 = (int)paramArrayOfFloat1[i36] << 3;
        int i43 = i41 + 1;
        float f11 = paramArrayOfFloat1[i41];
        int i44 = i43 + 1;
        float f12 = paramArrayOfFloat1[i43];
        int i45 = i44 + 1;
        float f13 = paramArrayOfFloat1[i44];
        int i46 = i45 + 1;
        float f14 = paramArrayOfFloat1[i45];
        i36 = i46 + 3;
        float f15 = paramMD5Joints.joints[(i42 + 4)];
        float f16 = paramMD5Joints.joints[(i42 + 5)];
        float f17 = paramMD5Joints.joints[(i42 + 6)];
        float f18 = paramMD5Joints.joints[(i42 + 7)];
        float f19 = -f15;
        float f20 = -f16;
        float f21 = -f17;
        float f22 = f12 * -f15 - f16 * f13 - f17 * f14;
        float f23 = f18 * f12 + f16 * f14 - f17 * f13;
        float f24 = f18 * f13 + f17 * f12 - f15 * f14;
        float f25 = f14 * f18 + f13 * f15 - f12 * f16;
        float f26 = f23 * f18 + f22 * f19 + f24 * f21 - f25 * f20;
        float f27 = f24 * f18 + f22 * f20 + f25 * f19 - f23 * f21;
        float f28 = f25 * f18 + f22 * f21 + f23 * f20 - f24 * f19;
        f8 += f11 * (f26 + paramMD5Joints.joints[(i42 + 1)]);
        f9 += f11 * (f27 + paramMD5Joints.joints[(i42 + 2)]);
        f10 += f11 * (f28 + paramMD5Joints.joints[(i42 + 3)]);
      }
      int i38 = j + 1;
      paramArrayOfFloat3[j] = f8;
      int i39 = i38 + 1;
      paramArrayOfFloat3[i38] = f9;
      int i40 = i39 + 1;
      paramArrayOfFloat3[i39] = f10;
      j = 3 + (i40 + 2);
      i += paramInt1;
    }
    for (int k = 0; k < paramArrayOfShort.length; k += 3)
    {
      int i16 = paramArrayOfShort[k];
      int i17 = paramArrayOfShort[(k + 1)];
      int i18 = paramArrayOfShort[(k + 2)];
      int i19 = i16 * 8;
      int i20 = i17 * 8;
      int i21 = i18 * 8;
      Vector3 localVector3 = calcNor(new Vector3(paramArrayOfFloat3[i19], paramArrayOfFloat3[(i19 + 1)], paramArrayOfFloat3[(i19 + 2)]), new Vector3(paramArrayOfFloat3[i20], paramArrayOfFloat3[(i20 + 1)], paramArrayOfFloat3[(i20 + 2)]), new Vector3(paramArrayOfFloat3[i21], paramArrayOfFloat3[(i21 + 1)], paramArrayOfFloat3[(i21 + 2)]));
      int i22 = i16 * 7;
      int i23 = i17 * 7;
      int i24 = i18 * 7;
      int i25 = i22 + 4;
      paramArrayOfFloat2[i25] += localVector3.x;
      int i26 = i22 + 5;
      paramArrayOfFloat2[i26] += localVector3.y;
      int i27 = i22 + 6;
      paramArrayOfFloat2[i27] += localVector3.z;
      int i28 = i23 + 4;
      paramArrayOfFloat2[i28] += localVector3.x;
      int i29 = i23 + 5;
      paramArrayOfFloat2[i29] += localVector3.y;
      int i30 = i23 + 6;
      paramArrayOfFloat2[i30] += localVector3.z;
      int i31 = i24 + 4;
      paramArrayOfFloat2[i31] += localVector3.x;
      int i32 = i24 + 5;
      paramArrayOfFloat2[i32] += localVector3.y;
      int i33 = i24 + 6;
      paramArrayOfFloat2[i33] += localVector3.z;
    }
    for (int m = 0; m < paramArrayOfShort.length; m += 3)
    {
      int i10 = paramArrayOfShort[m];
      int i11 = paramArrayOfShort[(m + 1)];
      int i12 = paramArrayOfShort[(m + 2)];
      int i13 = i10 * 7;
      int i14 = i11 * 7;
      int i15 = i12 * 7;
      vn.set(paramArrayOfFloat2[(i13 + 4)], paramArrayOfFloat2[(i13 + 5)], paramArrayOfFloat2[(i13 + 6)]);
      vn.nor();
      paramArrayOfFloat2[(i13 + 4)] = vn.x;
      paramArrayOfFloat2[(i13 + 5)] = vn.y;
      paramArrayOfFloat2[(i13 + 6)] = vn.z;
      vn.set(paramArrayOfFloat2[(i14 + 4)], paramArrayOfFloat2[(i14 + 5)], paramArrayOfFloat2[(i14 + 6)]);
      vn.nor();
      paramArrayOfFloat2[(i14 + 4)] = vn.x;
      paramArrayOfFloat2[(i14 + 5)] = vn.y;
      paramArrayOfFloat2[(i14 + 6)] = vn.z;
      vn.set(paramArrayOfFloat2[(i15 + 4)], paramArrayOfFloat2[(i15 + 5)], paramArrayOfFloat2[(i15 + 6)]);
      vn.nor();
      paramArrayOfFloat2[(i15 + 4)] = vn.x;
      paramArrayOfFloat2[(i15 + 5)] = vn.y;
      paramArrayOfFloat2[(i15 + 6)] = vn.z;
    }
    int n = 2;
    while (n < paramArrayOfFloat2.length)
    {
      int i2 = (int)paramArrayOfFloat2[n];
      int i3 = (int)paramArrayOfFloat2[(n + 1)];
      int i4 = i2 * paramInt2;
      for (int i5 = 0; i5 < i3; i5++)
      {
        int i6 = i4 + 1;
        int i7 = (int)paramArrayOfFloat1[i4] << 3;
        float f1 = paramMD5Joints.joints[(i7 + 4)];
        float f2 = paramMD5Joints.joints[(i7 + 5)];
        float f3 = paramMD5Joints.joints[(i7 + 6)];
        float f4 = paramMD5Joints.joints[(i7 + 7)];
        float f5 = paramArrayOfFloat2[(n + 2)];
        float f6 = paramArrayOfFloat2[(n + 3)];
        float f7 = paramArrayOfFloat2[(n + 4)];
        vn.set(f5, f6, f7);
        quat.x = f1;
        quat.y = f2;
        quat.z = f3;
        quat.w = f4;
        quat.invert();
        quat.rotate(vn);
        int i8 = i6 + 1;
        paramArrayOfFloat1[i6] += vn.x;
        int i9 = i8 + 1;
        paramArrayOfFloat1[i8] += vn.y;
        i4 = i9 + 1;
        paramArrayOfFloat1[i9] += vn.z;
      }
      n += paramInt1;
    }
    int i1 = 0;
    while (i1 < paramArrayOfFloat1.length)
    {
      vn.set(paramArrayOfFloat1[(i1 + 5)], paramArrayOfFloat1[(i1 + 6)], paramArrayOfFloat1[(i1 + 7)]);
      vn.nor();
      paramArrayOfFloat1[(i1 + 5)] = vn.x;
      paramArrayOfFloat1[(i1 + 6)] = vn.y;
      paramArrayOfFloat1[(i1 + 7)] = vn.z;
      i1 += paramInt2;
    }
  }

  public static void calculateVertices(MD5Joints paramMD5Joints, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, float[] paramArrayOfFloat3, int paramInt1, int paramInt2, BoundingBox paramBoundingBox)
  {
    int i = 2;
    int j = 0;
    while (i < paramArrayOfFloat2.length)
    {
      float f1 = 0.0F;
      float f2 = 0.0F;
      float f3 = 0.0F;
      int k = (int)paramArrayOfFloat2[i];
      int m = (int)paramArrayOfFloat2[(i + 1)];
      int n = k + (k << 2);
      for (int i1 = 0; i1 < m; i1++)
      {
        int i5 = n + 1;
        int i6 = (int)paramArrayOfFloat1[n] << 3;
        int i7 = i5 + 1;
        float f4 = paramArrayOfFloat1[i5];
        int i8 = i7 + 1;
        float f5 = paramArrayOfFloat1[i7];
        int i9 = i8 + 1;
        float f6 = paramArrayOfFloat1[i8];
        n = i9 + 1;
        float f7 = paramArrayOfFloat1[i9];
        float f8 = paramMD5Joints.joints[(i6 + 4)];
        float f9 = paramMD5Joints.joints[(i6 + 5)];
        float f10 = paramMD5Joints.joints[(i6 + 6)];
        float f11 = paramMD5Joints.joints[(i6 + 7)];
        float f12 = -f8;
        float f13 = -f9;
        float f14 = -f10;
        float f15 = f5 * -f8 - f9 * f6 - f10 * f7;
        float f16 = f11 * f5 + f9 * f7 - f10 * f6;
        float f17 = f11 * f6 + f10 * f5 - f8 * f7;
        float f18 = f7 * f11 + f6 * f8 - f5 * f9;
        float f19 = f16 * f11 + f15 * f12 + f17 * f14 - f18 * f13;
        float f20 = f17 * f11 + f15 * f13 + f18 * f12 - f16 * f14;
        float f21 = f18 * f11 + f15 * f14 + f16 * f13 - f17 * f12;
        f1 += f4 * (f19 + paramMD5Joints.joints[(i6 + 1)]);
        f2 += f4 * (f20 + paramMD5Joints.joints[(i6 + 2)]);
        f3 += f4 * (f21 + paramMD5Joints.joints[(i6 + 3)]);
      }
      paramBoundingBox.ext(f1, f2, f3);
      int i2 = j + 1;
      paramArrayOfFloat3[j] = f1;
      int i3 = i2 + 1;
      paramArrayOfFloat3[i2] = f2;
      int i4 = i3 + 1;
      paramArrayOfFloat3[i3] = f3;
      j = i4 + 2;
      i += paramInt1;
    }
  }

  public static void calculateVerticesN(MD5Joints paramMD5Joints, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, float[] paramArrayOfFloat3, int paramInt1, int paramInt2, BoundingBox paramBoundingBox)
  {
    int i = 2;
    int j = 0;
    while (i < paramArrayOfFloat2.length)
    {
      float f1 = 0.0F;
      float f2 = 0.0F;
      float f3 = 0.0F;
      int k = (int)paramArrayOfFloat2[i];
      int m = (int)paramArrayOfFloat2[(i + 1)];
      int n = k * paramInt2;
      bn.set(paramArrayOfFloat2[(i + 2)], paramArrayOfFloat2[(i + 3)], paramArrayOfFloat2[(i + 4)]);
      for (int i1 = 0; i1 < m; i1++)
      {
        int i8 = n + 1;
        int i9 = (int)paramArrayOfFloat1[n] << 3;
        int i10 = i8 + 1;
        float f4 = paramArrayOfFloat1[i8];
        int i11 = i10 + 1;
        float f5 = paramArrayOfFloat1[i10];
        int i12 = i11 + 1;
        float f6 = paramArrayOfFloat1[i11];
        int i13 = i12 + 1;
        float f7 = paramArrayOfFloat1[i12];
        Vector3 localVector3 = vn;
        int i14 = i13 + 1;
        float f8 = paramArrayOfFloat1[i13];
        int i15 = i14 + 1;
        float f9 = paramArrayOfFloat1[i14];
        n = i15 + 1;
        localVector3.set(f8, f9, paramArrayOfFloat1[i15]);
        float f10 = paramMD5Joints.joints[(i9 + 4)];
        float f11 = paramMD5Joints.joints[(i9 + 5)];
        float f12 = paramMD5Joints.joints[(i9 + 6)];
        float f13 = paramMD5Joints.joints[(i9 + 7)];
        quat.x = f10;
        quat.y = f11;
        quat.z = f12;
        quat.w = f13;
        quat.rotate(vn);
        vn.mul(f4);
        bn.add(vn);
        float f14 = -f10;
        float f15 = -f11;
        float f16 = -f12;
        float f17 = f5 * -f10 - f11 * f6 - f12 * f7;
        float f18 = f13 * f5 + f11 * f7 - f12 * f6;
        float f19 = f13 * f6 + f12 * f5 - f10 * f7;
        float f20 = f7 * f13 + f6 * f10 - f5 * f11;
        float f21 = f18 * f13 + f17 * f14 + f19 * f16 - f20 * f15;
        float f22 = f19 * f13 + f17 * f15 + f20 * f14 - f18 * f16;
        float f23 = f20 * f13 + f17 * f16 + f18 * f15 - f19 * f14;
        f1 += f4 * (f21 + paramMD5Joints.joints[(i9 + 1)]);
        f2 += f4 * (f22 + paramMD5Joints.joints[(i9 + 2)]);
        f3 += f4 * (f23 + paramMD5Joints.joints[(i9 + 3)]);
      }
      paramBoundingBox.ext(f1, f2, f3);
      int i2 = j + 1;
      paramArrayOfFloat3[j] = f1;
      int i3 = i2 + 1;
      paramArrayOfFloat3[i2] = f2;
      int i4 = i3 + 1;
      paramArrayOfFloat3[i3] = f3;
      int i5 = i4 + 2;
      bn.nor();
      int i6 = i5 + 1;
      paramArrayOfFloat3[i5] = bn.x;
      int i7 = i6 + 1;
      paramArrayOfFloat3[i6] = bn.y;
      j = i7 + 1;
      paramArrayOfFloat3[i7] = bn.z;
      i += paramInt1;
    }
  }

  public void calculateNormalsBind(MD5Joints paramMD5Joints, float[] paramArrayOfFloat)
  {
    calculateNormalsBind(paramMD5Joints, this.weights, this.vertices, this.indices, paramArrayOfFloat, this.floatsPerVertex, this.floatsPerWeight);
  }

  public void calculateVertices(MD5Joints paramMD5Joints, float[] paramArrayOfFloat, BoundingBox paramBoundingBox)
  {
    calculateVertices(paramMD5Joints, this.weights, this.vertices, paramArrayOfFloat, this.floatsPerVertex, this.floatsPerWeight, paramBoundingBox);
  }

  public void calculateVerticesJni(MD5Joints paramMD5Joints, float[] paramArrayOfFloat)
  {
    MD5Jni.calculateVertices(paramMD5Joints.joints, this.weights, this.vertices, paramArrayOfFloat, this.vertices.length, this.floatsPerVertex, this.floatsPerWeight);
  }

  public void calculateVerticesN(MD5Joints paramMD5Joints, float[] paramArrayOfFloat, BoundingBox paramBoundingBox)
  {
    calculateVerticesN(paramMD5Joints, this.weights, this.vertices, paramArrayOfFloat, this.floatsPerVertex, this.floatsPerWeight, paramBoundingBox);
  }

  public float[] createVertexArray()
  {
    return createVertexArray(5);
  }

  public float[] createVertexArray(int paramInt)
  {
    int i = 0;
    float[] arrayOfFloat = new float[paramInt * this.numVertices];
    int j = this.floatsPerVertex;
    int k = 0;
    while (k < this.vertices.length)
    {
      int m = i + 3;
      int n = m + 1;
      arrayOfFloat[m] = this.vertices[k];
      i = n + 1;
      arrayOfFloat[n] = this.vertices[(k + 1)];
      if (paramInt == 8)
        i += 3;
      k += j;
    }
    return arrayOfFloat;
  }

  public short[] getIndices()
  {
    return this.indices;
  }

  public void read(DataInputStream paramDataInputStream)
  {
    this.shader = paramDataInputStream.readUTF();
    this.numVertices = paramDataInputStream.readInt();
    this.numWeights = paramDataInputStream.readInt();
    this.numTriangles = paramDataInputStream.readInt();
    this.floatsPerVertex = paramDataInputStream.readInt();
    this.floatsPerWeight = paramDataInputStream.readInt();
    this.vertices = new float[this.numVertices * this.floatsPerVertex];
    this.indices = new short[3 * this.numTriangles];
    this.weights = new float[this.numWeights * this.floatsPerWeight];
    for (int i = 0; i < this.vertices.length; i++)
      this.vertices[i] = paramDataInputStream.readFloat();
    int m;
    for (int j = 0; ; j++)
    {
      int k = this.indices.length;
      m = 0;
      if (j >= k)
        break;
      this.indices[j] = paramDataInputStream.readShort();
    }
    while (m < this.weights.length)
    {
      this.weights[m] = paramDataInputStream.readFloat();
      m++;
    }
  }

  public void write(DataOutputStream paramDataOutputStream)
  {
    paramDataOutputStream.writeUTF(this.shader);
    paramDataOutputStream.writeInt(this.numVertices);
    paramDataOutputStream.writeInt(this.numWeights);
    paramDataOutputStream.writeInt(this.numTriangles);
    paramDataOutputStream.writeInt(this.floatsPerVertex);
    paramDataOutputStream.writeInt(this.floatsPerWeight);
    for (int i = 0; i < this.vertices.length; i++)
      paramDataOutputStream.writeFloat(this.vertices[i]);
    int m;
    for (int j = 0; ; j++)
    {
      int k = this.indices.length;
      m = 0;
      if (j >= k)
        break;
      paramDataOutputStream.writeShort(this.indices[j]);
    }
    while (m < this.weights.length)
    {
      paramDataOutputStream.writeFloat(this.weights[m]);
      m++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Mesh
 * JD-Core Version:    0.6.2
 */