package com.nianticproject.ingress.common.k;

import com.badlogic.gdx.graphics.VertexAttribute;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.a;
import com.nianticproject.ingress.common.j.c;
import com.nianticproject.ingress.shared.aj;

public final class aa
{
  public static int a = 32;
  private static int b = 3;
  private static int c = 2;
  private static int d = 3;
  private static int e = 2;

  private static float a(float paramFloat)
  {
    if (Math.abs(paramFloat - 0.0F) < 1.0E-04F)
      paramFloat = 0.0F;
    do
    {
      return paramFloat;
      if (Math.abs(paramFloat - 1.0F) < 1.0E-04F)
        return 1.0F;
    }
    while (Math.abs(paramFloat + 1.0F) >= 1.0E-04F);
    return -1.0F;
  }

  public static c a()
  {
    int i = a;
    return a(2 * (i - 1), i);
  }

  private static c a(int paramInt1, int paramInt2)
  {
    boolean bool3;
    boolean bool4;
    label345: int n;
    label361: int i14;
    int i12;
    int i13;
    label481: boolean bool5;
    boolean bool6;
    label523: int i4;
    label539: int i7;
    int i5;
    int i6;
    while (true)
    {
      int k;
      try
      {
        aj.a("SphereData.prepareMeshData");
        float[] arrayOfFloat = new float[paramInt1 * paramInt2 * (b + c)];
        short[] arrayOfShort1 = new short[2 * (paramInt1 * (paramInt2 - 1) * d)];
        short[] arrayOfShort2 = new short[2 * (paramInt1 * (paramInt2 - 1) * e)];
        int i = paramInt1 * paramInt2 * (b + c);
        if (i <= arrayOfFloat.length)
        {
          bool1 = true;
          an.a(bool1, "Unexpected index > then array length.");
          if (i > 32767)
            break label695;
          bool2 = true;
          an.a(bool2, "Unexpected index > max short value.");
          int j = 0;
          float f1 = 1.0F / (paramInt1 - 1);
          float f2 = 1.0F / (paramInt2 - 1);
          float f3 = 6.283186F / (paramInt1 - 1);
          float f4 = 3.141593F / (paramInt2 - 1);
          k = 0;
          if (k < paramInt2)
          {
            float f5 = f4 * k;
            float f6 = a((float)-Math.cos(f5));
            float f7 = a((float)Math.sin(f5));
            float f8 = f2 * k;
            int i21 = 0;
            if (i21 >= paramInt1)
              break label701;
            float f9 = f3 * i21;
            float f10 = f7 * a((float)-Math.cos(f9));
            float f11 = f7 * a((float)Math.sin(f9));
            float f12 = f1 * i21;
            arrayOfFloat[(j + 0)] = f10;
            arrayOfFloat[(j + 1)] = (-f6);
            arrayOfFloat[(j + 2)] = f11;
            int i22 = j + b;
            arrayOfFloat[(i22 + 0)] = f12;
            arrayOfFloat[(i22 + 1)] = f8;
            j = i22 + c;
            i21++;
            continue;
          }
          int m = 2 * (paramInt1 * (paramInt2 - 1) * d);
          if (m > arrayOfShort1.length)
            break label735;
          bool3 = true;
          an.a(bool3, "Unexpected index > then array length.");
          if (m > 32767)
            break label741;
          bool4 = true;
          an.a(bool4, "Unexpected index > max short value.");
          n = 0;
          int i1 = 0;
          break;
          if (i14 >= paramInt1)
            break label747;
          int i15 = (i14 + 1) % paramInt1;
          int i16 = (short)(i12 + i14);
          int i17 = (short)(i12 + i15);
          int i18 = (short)(i13 + i14);
          int i19 = (short)(i15 + i13);
          arrayOfShort1[(i1 + 0)] = i16;
          arrayOfShort1[(i1 + 1)] = i18;
          arrayOfShort1[(i1 + 2)] = i17;
          arrayOfShort1[(i1 + 3)] = i17;
          arrayOfShort1[(i1 + 4)] = i18;
          arrayOfShort1[(i1 + 5)] = i19;
          int i20 = i1 + 2 * d;
          i14++;
          i1 = i20;
          continue;
          int i2 = 2 * (paramInt1 * (paramInt2 - 1) * e);
          if (i2 > arrayOfShort2.length)
            break label781;
          bool5 = true;
          an.a(bool5, "Unexpected index > then array length.");
          if (i2 > 32767)
            break label787;
          bool6 = true;
          an.a(bool6, "Unexpected index > max short value.");
          int i3 = 0;
          i4 = 0;
          break label753;
          if (i7 >= paramInt1)
            break label793;
          int i8 = (i7 + 1) % paramInt1;
          int i9 = (short)(i5 + i7);
          int i10 = (short)(i8 + i5);
          int i11 = (short)(i6 + i7);
          arrayOfShort2[(i3 + 2)] = i9;
          arrayOfShort2[(i3 + 3)] = i10;
          arrayOfShort2[(i3 + 0)] = i9;
          arrayOfShort2[(i3 + 1)] = i11;
          i3 += 2 * e;
          i7++;
          continue;
          label629: VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[2];
          arrayOfVertexAttribute[0] = new VertexAttribute(0, 3, "a_position");
          arrayOfVertexAttribute[1] = new VertexAttribute(3, 2, "a_texCoord0");
          c localc = a.a(arrayOfFloat, arrayOfShort1, arrayOfShort2, arrayOfVertexAttribute);
          return localc;
        }
      }
      finally
      {
        aj.b();
      }
      boolean bool1 = false;
      continue;
      label695: boolean bool2 = false;
      continue;
      label701: k++;
    }
    while (true)
    {
      if (n >= paramInt2 - 1)
        break label481;
      i12 = paramInt1 * n;
      i13 = paramInt1 * (n + 1);
      i14 = 0;
      break label361;
      label735: bool3 = false;
      break;
      label741: bool4 = false;
      break label345;
      label747: n++;
    }
    while (true)
    {
      label753: if (i4 >= paramInt2 - 1)
        break label629;
      i5 = paramInt1 * i4;
      i6 = paramInt1 * (i4 + 1);
      i7 = 0;
      break label539;
      label781: bool5 = false;
      break;
      label787: bool6 = false;
      break label523;
      label793: i4++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.aa
 * JD-Core Version:    0.6.2
 */