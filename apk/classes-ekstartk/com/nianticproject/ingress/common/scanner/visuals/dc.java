package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.w.y;

public final class dc
{
  public static final VertexAttribute[] a = arrayOfVertexAttribute;

  static
  {
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[2];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 4, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(3, 4, "a_texCoord0");
  }

  public static float a(float paramFloat1, float paramFloat2)
  {
    float f = 1.0F;
    if (paramFloat1 > f - paramFloat2)
      f += -1.0F * ((paramFloat1 - (f - paramFloat2)) / paramFloat2);
    while (paramFloat1 >= paramFloat2)
      return f;
    return 0.0F + f * (paramFloat1 / paramFloat2);
  }

  public static void a(float[] paramArrayOfFloat)
  {
    int i = 0;
    float[] arrayOfFloat = a(20);
    int j = 0;
    while (j < 20)
    {
      double d1 = 3.141593F * (j * 2) / 20.0F;
      double d2 = 3.141593F * (2 * (j + 1)) / 20.0F;
      double d3 = (d1 + d2) / 2.0D;
      double[] arrayOfDouble = y.a(d1, arrayOfFloat[(j * 2)], d3, arrayOfFloat[(1 + j * 2)], d2, arrayOfFloat[(2 + j * 2)]);
      int k = 0;
      int n;
      for (int m = i; k < 10; m = n)
      {
        double d4 = arrayOfDouble[(k * 2)];
        double d5 = arrayOfDouble[(2 + k * 2)];
        double d6 = (d4 + d5) / 2.0D;
        float f1 = 0.75F * (float)Math.cos(d4);
        float f2 = 0.75F * (float)Math.cos(d6);
        float f3 = 0.75F * (float)Math.cos(d5);
        float f4 = 0.75F * (float)Math.sin(d4);
        float f5 = 0.75F * (float)Math.sin(d5);
        float f6 = 0.75F * (float)Math.sin(d6);
        float f7 = (float)arrayOfDouble[(1 + k * 2)];
        float f8 = (float)arrayOfDouble[(3 + k * 2)];
        float f9 = (f7 + f8) / 2.0F;
        double d7 = 1.5D * d6;
        double d8 = d4 * 1.5D;
        double d9 = d5 * 1.5D;
        a(paramArrayOfFloat, m + 0, f4, f7 + 1.5F, f1, (float)d8, 0.0F, new Vector3(f4, 0.0F, f1), f7 - 0.5F);
        a(paramArrayOfFloat, m + 1, f4, 3.5F + (1.5F + f7), f1, (float)d8, 1.0F, new Vector3(f4, 0.0F, f1), 0.5F + (-0.5F + f7));
        a(paramArrayOfFloat, m + 2, f6, f9 + 1.5F, f2, (float)d7, 0.0F, new Vector3(f6, 0.0F, f2), f9 - 0.5F);
        a(paramArrayOfFloat, m + 3, f6, 3.5F + (1.5F + f9), f2, (float)d7, 1.0F, new Vector3(f6, 0.0F, f2), 0.5F + (-0.5F + f9));
        a(paramArrayOfFloat, m + 4, f5, f8 + 1.5F, f3, (float)d9, 0.0F, new Vector3(f5, 0.0F, f3), f8 - 0.5F);
        a(paramArrayOfFloat, m + 5, f5, 3.5F + (1.5F + f8), f3, (float)d9, 1.0F, new Vector3(f5, 0.0F, f3), 0.5F + (-0.5F + f8));
        n = m + 6;
        k++;
      }
      j++;
      i = m;
    }
  }

  public static void a(float[] paramArrayOfFloat, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, Vector3 paramVector3, float paramFloat6)
  {
    paramArrayOfFloat[(0 + paramInt * 8)] = paramFloat1;
    paramArrayOfFloat[(1 + paramInt * 8)] = paramFloat2;
    paramArrayOfFloat[(2 + paramInt * 8)] = paramFloat3;
    paramArrayOfFloat[(3 + paramInt * 8)] = paramFloat6;
    paramArrayOfFloat[(4 + paramInt * 8)] = paramFloat4;
    paramArrayOfFloat[(5 + paramInt * 8)] = paramFloat5;
    paramArrayOfFloat[(6 + paramInt * 8)] = paramVector3.x;
    paramArrayOfFloat[(7 + paramInt * 8)] = paramVector3.z;
  }

  public static float[] a(int paramInt)
  {
    float[] arrayOfFloat = new float[1 + paramInt * 2];
    for (int i = 0; i < paramInt; i++)
      arrayOfFloat[(i * 2)] = (0.7F * (float)Math.random());
    arrayOfFloat[(paramInt * 2)] = arrayOfFloat[0];
    int j = 0;
    if (j < paramInt)
    {
      if (j % 2 == 0);
      for (float f = 1.0F; ; f = -1.0F)
      {
        arrayOfFloat[(1 + j * 2)] = ((arrayOfFloat[(j * 2)] + arrayOfFloat[(2 + j * 2)]) / 2.0F + f * 0.2F * (float)Math.random());
        j++;
        break;
      }
    }
    return arrayOfFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.dc
 * JD-Core Version:    0.6.2
 */