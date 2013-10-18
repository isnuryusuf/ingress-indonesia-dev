package com.nianticproject.ingress.common.scanner.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.nianticproject.ingress.common.q.a.t;
import com.nianticproject.ingress.common.q.a.u;
import java.nio.BufferOverflowException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public final class l
  implements af
{
  static final Color a = new Color(0.8F, 0.8F, 0.8F, 0.85F);
  static VertexAttributes b;
  private final n c;
  private final int d;
  private final short[] e;
  private final short f;

  private l(n paramn, int paramInt, short[] paramArrayOfShort)
  {
    this.c = paramn;
    this.d = paramInt;
    this.e = paramArrayOfShort;
    this.f = ((short)paramArrayOfShort.length);
  }

  static VertexAttributes a()
  {
    if (b == null)
    {
      VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[2];
      arrayOfVertexAttribute[0] = new VertexAttribute(0, 2, "a_position");
      arrayOfVertexAttribute[1] = new VertexAttribute(5, 4, "a_color");
      b = new VertexAttributes(arrayOfVertexAttribute);
    }
    return b;
  }

  private static void a(FloatBuffer paramFloatBuffer, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    float f1 = paramFloat7 - paramFloat5;
    float f2 = paramFloat4 - paramFloat6;
    float f3 = paramFloat1 / (float)Math.sqrt(f1 * f1 + f2 * f2);
    float f4 = f1 * f3;
    float f5 = f2 * f3;
    paramFloatBuffer.put(paramFloat2 + f4);
    paramFloatBuffer.put(paramFloat3 + f5);
    paramFloatBuffer.put(paramFloat8);
    paramFloatBuffer.put(paramFloat2 - f4);
    paramFloatBuffer.put(paramFloat3 - f5);
    paramFloatBuffer.put(paramFloat8);
  }

  public final void a(FloatBuffer paramFloatBuffer, ShortBuffer paramShortBuffer)
  {
    if (this.f < 2);
    while (true)
    {
      return;
      int i = a().vertexSize / 4;
      if (paramFloatBuffer.position() + i * this.f > paramFloatBuffer.capacity())
        throw new BufferOverflowException();
      if (paramFloatBuffer.position() == 0);
      for (int j = 0; j + (paramShortBuffer.position() + this.f) > paramShortBuffer.capacity(); j = 2)
        throw new BufferOverflowException();
      t localt = this.c.a(this.d);
      float f1 = 2.0F;
      float f2 = -1.0F;
      if (localt != null)
      {
        u localu = localt.b();
        if (localu != null)
        {
          f1 = localu.b;
          f2 = f.a(localu.a);
        }
      }
      if (f2 == -1.0F)
        f2 = f.a(a.r, a.g, a.b);
      Math.min(1.0F, 1.0F - a.a + f2 * a.a);
      float f3 = new Color(0.38F, 0.58F, 0.58F, 1.0F).toFloatBits();
      short s1 = (short)(paramFloatBuffer.position() / i);
      int k = this.e.length / 2;
      float f4 = this.c.a();
      float f5 = f4 * (4096 - this.e[0]);
      float f6 = f4 * this.e[1];
      float f7 = 0.0F;
      float f8 = 0.0F;
      float f9 = 0.0F;
      float f10 = 0.0F;
      int m = 1;
      while (m < k)
      {
        int i1 = m * 2;
        f9 = f4 * (4096 - this.e[i1]);
        f10 = f4 * this.e[(i1 + 1)];
        a(paramFloatBuffer, f1, f5, f6, f5, f6, f9, f10, f3);
        m++;
        f8 = f6;
        f7 = f5;
        f6 = f10;
        f5 = f9;
      }
      a(paramFloatBuffer, f1, f5, f6, f7, f8, f9, f10, f3);
      if (j > 0)
      {
        paramShortBuffer.put((short)(s1 - 1));
        paramShortBuffer.put(s1);
      }
      int n = 0;
      short s3;
      for (short s2 = s1; n < this.f; s2 = s3)
      {
        s3 = (short)(s2 + 1);
        paramShortBuffer.put(s2);
        n++;
      }
    }
  }

  public final short b()
  {
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.l
 * JD-Core Version:    0.6.2
 */