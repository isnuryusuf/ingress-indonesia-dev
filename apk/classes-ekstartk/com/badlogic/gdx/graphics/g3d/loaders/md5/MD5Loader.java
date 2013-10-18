package com.badlogic.gdx.graphics.g3d.loaders.md5;

import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class MD5Loader
{
  static MD5Quaternion parentOrient = new MD5Quaternion();
  static Vector3 parentPos = new Vector3();
  static MD5Quaternion thisOrient = new MD5Quaternion();

  private static void buildFrameSkeleton(MD5Loader.JointInfo[] paramArrayOfJointInfo, MD5Loader.BaseFrameJoint[] paramArrayOfBaseFrameJoint, float[] paramArrayOfFloat, MD5Animation paramMD5Animation, int paramInt)
  {
    MD5Joints localMD5Joints = paramMD5Animation.frames[paramInt];
    int i = 0;
    Vector3 localVector3;
    MD5Quaternion localMD5Quaternion;
    if (i < paramArrayOfJointInfo.length)
    {
      MD5Loader.BaseFrameJoint localBaseFrameJoint = paramArrayOfBaseFrameJoint[i];
      localVector3 = new Vector3();
      localMD5Quaternion = new MD5Quaternion();
      localVector3.set(localBaseFrameJoint.pos);
      localMD5Quaternion.set(localBaseFrameJoint.orient);
      if ((0x1 & paramArrayOfJointInfo[i].flags) == 0)
        break label703;
      localVector3.x = paramArrayOfFloat[(0 + paramArrayOfJointInfo[i].startIndex)];
    }
    label703: for (int j = 1; ; j = 0)
    {
      if ((0x2 & paramArrayOfJointInfo[i].flags) != 0)
      {
        localVector3.y = paramArrayOfFloat[(j + paramArrayOfJointInfo[i].startIndex)];
        j++;
      }
      if ((0x4 & paramArrayOfJointInfo[i].flags) != 0)
      {
        localVector3.z = paramArrayOfFloat[(j + paramArrayOfJointInfo[i].startIndex)];
        j++;
      }
      if ((0x8 & paramArrayOfJointInfo[i].flags) != 0)
      {
        localMD5Quaternion.x = paramArrayOfFloat[(j + paramArrayOfJointInfo[i].startIndex)];
        j++;
      }
      if ((0x10 & paramArrayOfJointInfo[i].flags) != 0)
      {
        localMD5Quaternion.y = paramArrayOfFloat[(j + paramArrayOfJointInfo[i].startIndex)];
        j++;
      }
      if ((0x20 & paramArrayOfJointInfo[i].flags) != 0)
        localMD5Quaternion.z = paramArrayOfFloat[(j + paramArrayOfJointInfo[i].startIndex)];
      localMD5Quaternion.computeW();
      int k = i << 3;
      localMD5Joints.names[i] = paramArrayOfJointInfo[i].name;
      localMD5Joints.joints[k] = paramArrayOfJointInfo[i].parent;
      if (paramArrayOfJointInfo[i].parent < 0)
      {
        localMD5Joints.joints[(k + 1)] = localVector3.x;
        localMD5Joints.joints[(k + 2)] = localVector3.y;
        localMD5Joints.joints[(k + 3)] = localVector3.z;
        localMD5Joints.joints[(k + 4)] = localMD5Quaternion.x;
        localMD5Joints.joints[(k + 5)] = localMD5Quaternion.y;
        localMD5Joints.joints[(k + 6)] = localMD5Quaternion.z;
        localMD5Joints.joints[(k + 7)] = localMD5Quaternion.w;
      }
      while (true)
      {
        i++;
        break;
        int m = paramArrayOfJointInfo[i].parent << 3;
        parentPos.x = localMD5Joints.joints[(m + 1)];
        parentPos.y = localMD5Joints.joints[(m + 2)];
        parentPos.z = localMD5Joints.joints[(m + 3)];
        parentOrient.x = localMD5Joints.joints[(m + 4)];
        parentOrient.y = localMD5Joints.joints[(m + 5)];
        parentOrient.z = localMD5Joints.joints[(m + 6)];
        parentOrient.w = localMD5Joints.joints[(m + 7)];
        parentOrient.rotate(localVector3);
        localMD5Joints.joints[(k + 1)] = (localVector3.x + parentPos.x);
        localMD5Joints.joints[(k + 2)] = (localVector3.y + parentPos.y);
        localMD5Joints.joints[(k + 3)] = (localVector3.z + parentPos.z);
        parentOrient.multiply(localMD5Quaternion);
        parentOrient.normalize();
        localMD5Joints.joints[(k + 4)] = parentOrient.x;
        localMD5Joints.joints[(k + 5)] = parentOrient.y;
        localMD5Joints.joints[(k + 6)] = parentOrient.z;
        localMD5Joints.joints[(k + 7)] = parentOrient.w;
      }
      return;
    }
  }

  public static MD5Animation loadAnimation(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    ArrayList localArrayList = new ArrayList();
    MD5Animation localMD5Animation = new MD5Animation();
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    try
    {
      do
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          break;
        tokenize(str, localArrayList);
      }
      while (localArrayList.size() == 0);
      if ((((String)localArrayList.get(0)).equals("MD5Version")) && (!((String)localArrayList.get(1)).equals("10")))
        throw new IllegalArgumentException("Not a valid MD5 animation file, version is " + (String)localArrayList.get(1) + ", expected 10");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return null;
    }
    if (((String)localArrayList.get(0)).equals("numFrames"))
    {
      int i10 = parseInt((String)localArrayList.get(1));
      localMD5Animation.frames = new MD5Joints[i10];
      localMD5Animation.bounds = new BoundingBox[i10];
    }
    Object localObject4;
    Object localObject5;
    label329: Object localObject6;
    label412: int i;
    label433: int i6;
    int j;
    label592: int i5;
    if (((String)localArrayList.get(0)).equals("numJoints"))
    {
      int i8 = parseInt((String)localArrayList.get(1));
      for (int i9 = 0; i9 < localMD5Animation.frames.length; i9++)
      {
        localMD5Animation.frames[i9] = new MD5Joints();
        localMD5Animation.frames[i9].numJoints = i8;
        localMD5Animation.frames[i9].names = new String[i8];
        localMD5Animation.frames[i9].joints = new float[i8 * 8];
      }
      MD5Loader.JointInfo[] arrayOfJointInfo = new MD5Loader.JointInfo[i8];
      localObject4 = new MD5Loader.BaseFrameJoint[i8];
      localObject5 = arrayOfJointInfo;
      if (((String)localArrayList.get(0)).equals("frameRate"))
      {
        int i7 = parseInt((String)localArrayList.get(1));
        localMD5Animation.frameRate = i7;
        localMD5Animation.secondsPerFrame = (1.0F / i7);
      }
      if (((String)localArrayList.get(0)).equals("numAnimatedComponents"))
      {
        localObject6 = new float[parseInt((String)localArrayList.get(1))];
        if (((String)localArrayList.get(0)).equals("hierarchy"))
        {
          i = 0;
          if (i < localObject5.length)
          {
            tokenize(localBufferedReader.readLine(), localArrayList);
            if ((localArrayList.size() == 0) || (((String)localArrayList.get(0)).equals("//")))
              break label1189;
            MD5Loader.JointInfo localJointInfo = new MD5Loader.JointInfo();
            localJointInfo.name = ((String)localArrayList.get(0));
            localJointInfo.parent = parseInt((String)localArrayList.get(1));
            localJointInfo.flags = parseInt((String)localArrayList.get(2));
            localJointInfo.startIndex = parseInt((String)localArrayList.get(3));
            localObject5[i] = localJointInfo;
            i6 = i;
            break label1195;
          }
        }
        if (((String)localArrayList.get(0)).equals("bounds"))
        {
          j = 0;
          if (j < localMD5Animation.bounds.length)
          {
            tokenize(localBufferedReader.readLine(), localArrayList);
            if (localArrayList.size() == 0)
            {
              i5 = j - 1;
              break label1204;
            }
            BoundingBox localBoundingBox = new BoundingBox();
            localBoundingBox.min.x = parseFloat((String)localArrayList.get(1));
            localBoundingBox.min.y = parseFloat((String)localArrayList.get(2));
            localBoundingBox.min.z = parseFloat((String)localArrayList.get(3));
            localBoundingBox.max.x = parseFloat((String)localArrayList.get(6));
            localBoundingBox.max.y = parseFloat((String)localArrayList.get(7));
            localBoundingBox.max.z = parseFloat((String)localArrayList.get(8));
            localMD5Animation.bounds[j] = localBoundingBox;
            i5 = j;
            break label1204;
          }
        }
        if (!((String)localArrayList.get(0)).equals("baseframe"));
      }
    }
    int i4;
    for (int k = 0; ; k = i4 + 1)
      if (k < localObject4.length)
      {
        tokenize(localBufferedReader.readLine(), localArrayList);
        if (localArrayList.size() == 0)
        {
          i4 = k - 1;
        }
        else
        {
          MD5Loader.BaseFrameJoint localBaseFrameJoint = new MD5Loader.BaseFrameJoint();
          localBaseFrameJoint.pos.x = parseFloat((String)localArrayList.get(1));
          localBaseFrameJoint.pos.y = parseFloat((String)localArrayList.get(2));
          localBaseFrameJoint.pos.z = parseFloat((String)localArrayList.get(3));
          localBaseFrameJoint.orient.x = parseFloat((String)localArrayList.get(6));
          localBaseFrameJoint.orient.y = parseFloat((String)localArrayList.get(7));
          localBaseFrameJoint.orient.z = parseFloat((String)localArrayList.get(8));
          localBaseFrameJoint.orient.computeW();
          localObject4[k] = localBaseFrameJoint;
          i4 = k;
        }
      }
      else
      {
        if (((String)localArrayList.get(0)).equals("frame"))
        {
          int m = parseInt((String)localArrayList.get(1));
          tokenize(localBufferedReader.readLine(), localArrayList);
          int i1;
          for (int n = 0; !((String)localArrayList.get(0)).equals("}"); n = i1)
          {
            i1 = n;
            int i2 = 0;
            while (i2 < localArrayList.size())
            {
              int i3 = i1 + 1;
              localObject6[i1] = parseFloat((String)localArrayList.get(i2));
              i2++;
              i1 = i3;
            }
            tokenize(localBufferedReader.readLine(), localArrayList);
          }
          buildFrameSkeleton((MD5Loader.JointInfo[])localObject5, (MD5Loader.BaseFrameJoint[])localObject4, (float[])localObject6, localMD5Animation, m);
          localObject1 = localObject6;
          localObject2 = localObject4;
          localObject3 = localObject5;
          break;
          return localMD5Animation;
          localObject6 = localObject1;
          break label412;
          localObject4 = localObject2;
          localObject5 = localObject3;
          break label329;
        }
        localObject1 = localObject6;
        localObject2 = localObject4;
        localObject3 = localObject5;
        break;
        label1189: i6 = i - 1;
        label1195: i = i6 + 1;
        break label433;
        label1204: j = i5 + 1;
        break label592;
      }
  }

  public static MD5Model loadModel(InputStream paramInputStream, boolean paramBoolean)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream), 1024);
    MD5Model localMD5Model = new MD5Model();
    ArrayList localArrayList = new ArrayList(10);
    MD5Quaternion localMD5Quaternion = new MD5Quaternion();
    int i;
    int j;
    label63: int k;
    label66: Object localObject1;
    Object localObject2;
    int m;
    label322: String str;
    int i16;
    label638: MD5Mesh localMD5Mesh;
    int n;
    if (paramBoolean)
    {
      i = 7;
      if (paramBoolean)
      {
        j = 8;
        k = 0;
        try
        {
          do
          {
            localObject1 = localBufferedReader.readLine();
            if (localObject1 == null)
              break;
            tokenize((String)localObject1, localArrayList);
          }
          while (localArrayList.size() == 0);
          if (((String)localArrayList.get(0)).equals("MD5Version"))
          {
            int i19 = parseInt((String)localArrayList.get(1));
            if (i19 != 10)
              throw new IllegalArgumentException("Not a valid MD5 file, go version " + i19 + ", need 10");
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return null;
        }
        if (((String)localArrayList.get(0)).equals("numJoints"))
        {
          int i18 = parseInt((String)localArrayList.get(1));
          localMD5Model.baseSkeleton = new MD5Joints();
          localMD5Model.baseSkeleton.names = new String[i18];
          localMD5Model.baseSkeleton.numJoints = i18;
          localMD5Model.baseSkeleton.joints = new float[i18 * 8];
        }
        if (((String)localArrayList.get(0)).equals("numMeshes"))
          localMD5Model.meshes = new MD5Mesh[parseInt((String)localArrayList.get(1))];
        if (((String)localArrayList.get(0)).equals("joints"))
        {
          localObject2 = localObject1;
          m = 0;
          if (m >= localMD5Model.baseSkeleton.numJoints)
            break label1533;
          str = localBufferedReader.readLine();
          tokenize(str, localArrayList);
          if (localArrayList.size() == 0)
          {
            i16 = m - 1;
            break label1520;
          }
          int i17 = m << 3;
          localMD5Model.baseSkeleton.names[m] = ((String)localArrayList.get(0));
          localMD5Model.baseSkeleton.joints[i17] = parseInt((String)localArrayList.get(1));
          localMD5Model.baseSkeleton.joints[(i17 + 1)] = parseFloat((String)localArrayList.get(3));
          localMD5Model.baseSkeleton.joints[(i17 + 2)] = parseFloat((String)localArrayList.get(4));
          localMD5Model.baseSkeleton.joints[(i17 + 3)] = parseFloat((String)localArrayList.get(5));
          localMD5Quaternion.x = parseFloat((String)localArrayList.get(8));
          localMD5Quaternion.y = parseFloat((String)localArrayList.get(9));
          localMD5Quaternion.z = parseFloat((String)localArrayList.get(10));
          localMD5Quaternion.computeW();
          localMD5Model.baseSkeleton.joints[(i17 + 4)] = localMD5Quaternion.x;
          localMD5Model.baseSkeleton.joints[(i17 + 5)] = localMD5Quaternion.y;
          localMD5Model.baseSkeleton.joints[(i17 + 6)] = localMD5Quaternion.z;
          localMD5Model.baseSkeleton.joints[(i17 + 7)] = localMD5Quaternion.w;
          i16 = m;
          break label1520;
        }
        if ((!((String)localArrayList.get(0)).equals("mesh")) || (!((String)localArrayList.get(1)).equals("{")))
          break label1538;
        localMD5Mesh = new MD5Mesh();
        localMD5Mesh.floatsPerVertex = i;
        localMD5Mesh.floatsPerWeight = j;
        MD5Mesh[] arrayOfMD5Mesh = localMD5Model.meshes;
        n = k + 1;
        arrayOfMD5Mesh[k] = localMD5Mesh;
        break label1540;
      }
    }
    while (true)
    {
      Object localObject3;
      if (!localObject3.contains("}"))
      {
        localObject1 = localBufferedReader.readLine();
        tokenize((String)localObject1, localArrayList);
        if (localArrayList.size() != 0)
        {
          if (((String)localArrayList.get(0)).equals("shader"))
            localMD5Mesh.shader = ((String)localArrayList.get(1));
          if (((String)localArrayList.get(0)).equals("numverts"))
          {
            localMD5Mesh.numVertices = parseInt((String)localArrayList.get(1));
            localMD5Mesh.vertices = new float[i * localMD5Mesh.numVertices];
          }
          if (((String)localArrayList.get(0)).equals("numtris"))
          {
            localMD5Mesh.indices = new short[3 * parseInt((String)localArrayList.get(1))];
            localMD5Mesh.numTriangles = (localMD5Mesh.indices.length / 3);
          }
          if (((String)localArrayList.get(0)).equals("numweights"))
          {
            localMD5Mesh.numWeights = parseInt((String)localArrayList.get(1));
            localMD5Mesh.weights = new float[j * localMD5Mesh.numWeights];
          }
          if (((String)localArrayList.get(0)).equals("vert"))
          {
            int i9 = i * parseInt((String)localArrayList.get(1));
            float[] arrayOfFloat5 = localMD5Mesh.vertices;
            int i10 = i9 + 1;
            arrayOfFloat5[i9] = parseFloat((String)localArrayList.get(3));
            float[] arrayOfFloat6 = localMD5Mesh.vertices;
            int i11 = i10 + 1;
            arrayOfFloat6[i10] = parseFloat((String)localArrayList.get(4));
            float[] arrayOfFloat7 = localMD5Mesh.vertices;
            int i12 = i11 + 1;
            arrayOfFloat7[i11] = parseFloat((String)localArrayList.get(6));
            float[] arrayOfFloat8 = localMD5Mesh.vertices;
            int i13 = i12 + 1;
            arrayOfFloat8[i12] = parseFloat((String)localArrayList.get(7));
            if (paramBoolean)
            {
              float[] arrayOfFloat9 = localMD5Mesh.vertices;
              int i14 = i13 + 1;
              arrayOfFloat9[i13] = 0.0F;
              float[] arrayOfFloat10 = localMD5Mesh.vertices;
              int i15 = i14 + 1;
              arrayOfFloat10[i14] = 0.0F;
              localMD5Mesh.vertices[i15] = 0.0F;
            }
          }
          if (((String)localArrayList.get(0)).equals("tri"))
          {
            int i6 = 3 * parseInt((String)localArrayList.get(1));
            short[] arrayOfShort1 = localMD5Mesh.indices;
            int i7 = i6 + 1;
            arrayOfShort1[i6] = Short.parseShort((String)localArrayList.get(2));
            short[] arrayOfShort2 = localMD5Mesh.indices;
            int i8 = i7 + 1;
            arrayOfShort2[i7] = Short.parseShort((String)localArrayList.get(3));
            localMD5Mesh.indices[i8] = Short.parseShort((String)localArrayList.get(4));
          }
          if (((String)localArrayList.get(0)).equals("weight"))
          {
            int i1 = j * parseInt((String)localArrayList.get(1));
            float[] arrayOfFloat1 = localMD5Mesh.weights;
            int i2 = i1 + 1;
            arrayOfFloat1[i1] = parseInt((String)localArrayList.get(2));
            float[] arrayOfFloat2 = localMD5Mesh.weights;
            int i3 = i2 + 1;
            arrayOfFloat2[i2] = parseFloat((String)localArrayList.get(3));
            float[] arrayOfFloat3 = localMD5Mesh.weights;
            int i4 = i3 + 1;
            arrayOfFloat3[i3] = parseFloat((String)localArrayList.get(5));
            float[] arrayOfFloat4 = localMD5Mesh.weights;
            int i5 = i4 + 1;
            arrayOfFloat4[i4] = parseFloat((String)localArrayList.get(6));
            localMD5Mesh.weights[i5] = parseFloat((String)localArrayList.get(7));
            localObject3 = localObject1;
          }
        }
      }
      else
      {
        k = n;
        break label66;
        return localMD5Model;
        j = 5;
        break label63;
        i = 4;
        break;
        label1520: m = i16 + 1;
        localObject2 = str;
        break label322;
        label1533: localObject1 = localObject2;
        break label638;
        label1538: break label66;
        label1540: localObject3 = localObject1;
      }
    }
  }

  private static float parseFloat(String paramString)
  {
    float f1 = 0.0F;
    float f2 = 0.0F;
    float f3 = 1.0F;
    int i = 0;
    int j = paramString.length();
    int k = 0;
    int m = 1;
    int n;
    float f5;
    float f6;
    float f4;
    int i1;
    if (k < j)
    {
      n = paramString.charAt(k);
      if (n == 45)
      {
        f5 = f2;
        f6 = f1;
        int i5 = i;
        f4 = -1.0F;
        i1 = i5;
      }
    }
    while (true)
    {
      k++;
      f1 = f6;
      f2 = f5;
      f3 = f4;
      i = i1;
      break;
      if (n != 43)
      {
        if ((n == 46) || (n == 44))
        {
          i1 = 1;
          f4 = f3;
          f5 = f2;
          f6 = f1;
        }
        else
        {
          float f7 = n - 48;
          if (i == 0)
          {
            float f9 = f7 + 10.0F * f1;
            int i4 = i;
            f4 = f3;
            f5 = f2;
            f6 = f9;
            i1 = i4;
          }
          else
          {
            int i2 = m + 1;
            float f8 = f2 + f7 * (1.0F / (float)Math.pow(10.0D, m));
            f6 = f1;
            int i3 = i;
            f4 = f3;
            f5 = f8;
            m = i2;
            i1 = i3;
            continue;
            return f3 * (f1 + f2);
          }
        }
      }
      else
      {
        i1 = i;
        f4 = f3;
        f5 = f2;
        f6 = f1;
      }
    }
  }

  private static int parseInt(String paramString)
  {
    int i = paramString.length();
    int j = 0;
    int k = 0;
    int m = 1;
    if (j < i)
    {
      int n = paramString.charAt(j);
      if (n == 45)
        m = -1;
      while (true)
      {
        j++;
        break;
        if (n != 43)
        {
          if ((n == 46) || (n == 44))
            break label75;
          k = n - 48 + k * 10;
        }
      }
    }
    label75: return m * k;
  }

  private static void tokenize(String paramString, List<String> paramList)
  {
    paramList.clear();
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString);
    while (localStringTokenizer.hasMoreTokens())
      paramList.add(localStringTokenizer.nextToken());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.md5.MD5Loader
 * JD-Core Version:    0.6.2
 */