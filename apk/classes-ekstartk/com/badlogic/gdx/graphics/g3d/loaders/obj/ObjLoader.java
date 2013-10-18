package com.badlogic.gdx.graphics.g3d.loaders.obj;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.utils.IntArray;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class ObjLoader
{
  private static int getIndex(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return 0;
    int i = Integer.parseInt(paramString);
    if (i < 0)
      return i + paramInt;
    return i - 1;
  }

  public static Mesh loadObj(InputStream paramInputStream)
  {
    return loadObj(paramInputStream, false);
  }

  public static Mesh loadObj(InputStream paramInputStream, boolean paramBoolean)
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
      StringBuffer localStringBuffer = new StringBuffer();
      for (String str1 = localBufferedReader.readLine(); str1 != null; str1 = localBufferedReader.readLine())
      {
        localStringBuffer.append(str1);
        localStringBuffer.append("\n");
      }
      String str2 = localStringBuffer.toString();
      localBufferedReader.close();
      return loadObjFromString(str2, paramBoolean);
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static Mesh loadObj(InputStream paramInputStream, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
      StringBuffer localStringBuffer = new StringBuffer();
      for (String str1 = localBufferedReader.readLine(); str1 != null; str1 = localBufferedReader.readLine())
      {
        localStringBuffer.append(str1);
        localStringBuffer.append("\n");
      }
      String str2 = localStringBuffer.toString();
      localBufferedReader.close();
      return loadObjFromString(str2, paramBoolean1, paramBoolean2);
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static Mesh loadObjFromString(String paramString)
  {
    return loadObjFromString(paramString, false);
  }

  public static Mesh loadObjFromString(String paramString, boolean paramBoolean)
  {
    return loadObjFromString(paramString, paramBoolean, false);
  }

  public static Mesh loadObjFromString(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    String[] arrayOfString1 = paramString.split("\n");
    float[] arrayOfFloat1 = new float[3 * arrayOfString1.length];
    float[] arrayOfFloat2 = new float[3 * arrayOfString1.length];
    float[] arrayOfFloat3 = new float[3 * arrayOfString1.length];
    int i = 0;
    int j = 0;
    int k = 0;
    IntArray localIntArray1 = new IntArray();
    IntArray localIntArray2 = new IntArray();
    IntArray localIntArray3 = new IntArray();
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    if (i2 < arrayOfString1.length)
    {
      String str = arrayOfString1[i2];
      if (str.startsWith("v "))
      {
        String[] arrayOfString8 = str.split("[ ]+");
        arrayOfFloat1[m] = Float.parseFloat(arrayOfString8[1]);
        arrayOfFloat1[(m + 1)] = Float.parseFloat(arrayOfString8[2]);
        arrayOfFloat1[(m + 2)] = Float.parseFloat(arrayOfString8[3]);
        m += 3;
        i++;
      }
      while (true)
      {
        i2++;
        break;
        if (str.startsWith("vn "))
        {
          String[] arrayOfString7 = str.split("[ ]+");
          arrayOfFloat2[n] = Float.parseFloat(arrayOfString7[1]);
          arrayOfFloat2[(n + 1)] = Float.parseFloat(arrayOfString7[2]);
          arrayOfFloat2[(n + 2)] = Float.parseFloat(arrayOfString7[3]);
          n += 3;
          j++;
        }
        else
        {
          if (str.startsWith("vt"))
          {
            String[] arrayOfString6 = str.split("[ ]+");
            arrayOfFloat3[i1] = Float.parseFloat(arrayOfString6[1]);
            int i31 = i1 + 1;
            if (paramBoolean1);
            for (float f = 1.0F - Float.parseFloat(arrayOfString6[2]); ; f = Float.parseFloat(arrayOfString6[2]))
            {
              arrayOfFloat3[i31] = f;
              i1 += 2;
              k++;
              break;
            }
          }
          if (str.startsWith("f "))
          {
            String[] arrayOfString2 = str.split("[ ]+");
            for (int i30 = 3; i30 < arrayOfString2.length; i30++)
            {
              String[] arrayOfString3 = arrayOfString2[1].split("/");
              localIntArray1.add(getIndex(arrayOfString3[0], i));
              if (arrayOfString3.length > 2)
                localIntArray2.add(getIndex(arrayOfString3[2], j));
              if (arrayOfString3.length > 1)
                localIntArray3.add(getIndex(arrayOfString3[1], k));
              String[] arrayOfString4 = arrayOfString2[(i30 - 1)].split("/");
              localIntArray1.add(getIndex(arrayOfString4[0], i));
              if (arrayOfString4.length > 2)
                localIntArray2.add(getIndex(arrayOfString4[2], j));
              if (arrayOfString4.length > 1)
                localIntArray3.add(getIndex(arrayOfString4[1], k));
              String[] arrayOfString5 = arrayOfString2[i30].split("/");
              localIntArray1.add(getIndex(arrayOfString5[0], i));
              if (arrayOfString5.length > 2)
                localIntArray2.add(getIndex(arrayOfString5[2], j));
              if (arrayOfString5.length > 1)
                localIntArray3.add(getIndex(arrayOfString5[1], k));
            }
          }
        }
      }
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new VertexAttribute(0, 3, "a_position"));
    if (j > 0)
      localArrayList.add(new VertexAttribute(2, 3, "a_normal"));
    if (k > 0)
      localArrayList.add(new VertexAttribute(3, 2, "a_texCoord0"));
    int i3 = localIntArray1.size / 3;
    if (paramBoolean2)
    {
      int i18;
      int i20;
      label657: int i21;
      if (j > 0)
      {
        i18 = 3;
        int i19 = i18 + 3;
        if (k <= 0)
          break label762;
        i20 = 2;
        i21 = i19 + i20;
        if (j <= 0)
          break label768;
      }
      int i23;
      float[] arrayOfFloat5;
      label768: for (int i22 = 3; ; i22 = 0)
      {
        i23 = i22 + 3;
        arrayOfFloat5 = new float[i * i21];
        for (int i24 = 0; i24 < i; i24++)
        {
          arrayOfFloat5[(i24 * i21)] = arrayOfFloat1[(i24 * 3)];
          arrayOfFloat5[(1 + i24 * i21)] = arrayOfFloat1[(1 + i24 * 3)];
          arrayOfFloat5[(2 + i24 * i21)] = arrayOfFloat1[(2 + i24 * 3)];
        }
        i18 = 0;
        break;
        label762: i20 = 0;
        break label657;
      }
      for (int i25 = 0; i25 < i3 * 3; i25++)
      {
        int i27 = localIntArray1.get(i25);
        if (j > 0)
        {
          int i29 = 3 * localIntArray2.get(i25);
          arrayOfFloat5[(3 + i27 * i21)] = arrayOfFloat2[i29];
          arrayOfFloat5[(1 + (3 + i27 * i21))] = arrayOfFloat2[(i29 + 1)];
          arrayOfFloat5[(2 + (3 + i27 * i21))] = arrayOfFloat2[(i29 + 2)];
        }
        if (k > 0)
        {
          int i28 = 2 * localIntArray3.get(i25);
          arrayOfFloat5[(i23 + i27 * i21)] = arrayOfFloat3[i28];
          arrayOfFloat5[(1 + (i23 + i27 * i21))] = arrayOfFloat3[(i28 + 1)];
        }
      }
      short[] arrayOfShort = new short[i3 * 3];
      for (int i26 = 0; i26 < arrayOfShort.length; i26++)
        arrayOfShort[i26] = ((short)localIntArray1.get(i26));
      Mesh localMesh2 = new Mesh(true, arrayOfFloat5.length, arrayOfShort.length, (VertexAttribute[])localArrayList.toArray(new VertexAttribute[localArrayList.size()]));
      localMesh2.setVertices(arrayOfFloat5);
      localMesh2.setIndices(arrayOfShort);
      return localMesh2;
    }
    int i4 = i3 * 3;
    int i5;
    int i6;
    if (j > 0)
    {
      i5 = 3;
      i6 = i5 + 3;
      if (k <= 0)
        break label1257;
    }
    float[] arrayOfFloat4;
    label1257: for (int i7 = 2; ; i7 = 0)
    {
      arrayOfFloat4 = new float[i4 * (i7 + i6)];
      int i8 = 0;
      int i9 = 0;
      while (i8 < i3 * 3)
      {
        int i10 = 3 * localIntArray1.get(i8);
        int i11 = i9 + 1;
        arrayOfFloat4[i9] = arrayOfFloat1[i10];
        int i12 = i11 + 1;
        arrayOfFloat4[i11] = arrayOfFloat1[(i10 + 1)];
        i9 = i12 + 1;
        arrayOfFloat4[i12] = arrayOfFloat1[(i10 + 2)];
        if (j > 0)
        {
          int i15 = 3 * localIntArray2.get(i8);
          int i16 = i9 + 1;
          arrayOfFloat4[i9] = arrayOfFloat2[i15];
          int i17 = i16 + 1;
          arrayOfFloat4[i16] = arrayOfFloat2[(i15 + 1)];
          i9 = i17 + 1;
          arrayOfFloat4[i17] = arrayOfFloat2[(i15 + 2)];
        }
        if (k > 0)
        {
          int i13 = 2 * localIntArray3.get(i8);
          int i14 = i9 + 1;
          arrayOfFloat4[i9] = arrayOfFloat3[i13];
          i9 = i14 + 1;
          arrayOfFloat4[i14] = arrayOfFloat3[(i13 + 1)];
        }
        i8++;
      }
      i5 = 0;
      break;
    }
    Mesh localMesh1 = new Mesh(true, i3 * 3, 0, (VertexAttribute[])localArrayList.toArray(new VertexAttribute[localArrayList.size()]));
    localMesh1.setVertices(arrayOfFloat4);
    return localMesh1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.loaders.obj.ObjLoader
 * JD-Core Version:    0.6.2
 */