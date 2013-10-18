package com.nianticproject.ingress.common.scanner.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.nianticproject.ingress.common.q.a.t;
import java.nio.BufferOverflowException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public final class d
  implements af
{
  static final Color a = new Color(0.9F, 0.9F, 0.9F, 0.35F);
  static VertexAttributes b;
  private final n c;
  private final int d;
  private final short e;
  private final short[] f;

  private d(n paramn, int paramInt, short[] paramArrayOfShort)
  {
    this.c = paramn;
    this.d = paramInt;
    this.f = paramArrayOfShort;
    this.e = ((short)(paramArrayOfShort.length / 2));
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

  public final void a(FloatBuffer paramFloatBuffer, ShortBuffer paramShortBuffer)
  {
    if (this.e % 3 != 0)
      return;
    int i = a().vertexSize / 4;
    if (paramFloatBuffer.position() + i * this.e > paramFloatBuffer.capacity())
      throw new BufferOverflowException();
    if (paramShortBuffer.position() + this.e > paramShortBuffer.capacity())
      throw new BufferOverflowException();
    t localt = this.c.a(this.d);
    float f1;
    float f6;
    if ((localt != null) && (localt.a() > 0))
      if (localt.a() > 1)
      {
        f1 = f.a(localt.a(1));
        f6 = (localt.a(1) >>> 24) / 255.0F;
      }
    label130: for (float f2 = f6 * a.a; ; f2 = a.a)
    {
      float f3 = Math.min(1.0F, Math.max(0.0F, 1.0F - f2) + f2 * f1);
      f.b(f3, f3, f3);
      float f4 = new Color(0.13F, 0.16F, 0.17F, 1.0F).toFloatBits();
      short s1 = (short)(paramFloatBuffer.position() / i);
      float f5 = this.c.a();
      short s2 = s1;
      int j = 0;
      while (j < this.e)
      {
        int k = j * 2;
        paramFloatBuffer.put(f5 * (4096 - this.f[k]));
        paramFloatBuffer.put(f5 * this.f[(k + 1)]);
        paramFloatBuffer.put(f4);
        short s3 = (short)(s2 + 1);
        paramShortBuffer.put(s2);
        j++;
        s2 = s3;
      }
      break;
      f1 = 0.75F * f.a(localt.a(0));
      f6 = (localt.a(0) >>> 24) / 255.0F;
      break label130;
      f1 = f.a(a.r, a.g, a.b);
    }
  }

  public final short b()
  {
    return this.e;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.d
 * JD-Core Version:    0.6.2
 */