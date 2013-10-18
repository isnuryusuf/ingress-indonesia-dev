package com.nianticproject.ingress.common.scanner.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.nianticproject.ingress.common.q.a.t;
import java.nio.BufferOverflowException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

final class b
  implements af
{
  static final Color a = new Color(1.0F, 1.0F, 1.0F, 0.25F);
  static VertexAttributes b;
  private final n c;
  private final int d;
  private final short[] e;
  private final short f;

  private b(n paramn, int paramInt, short[] paramArrayOfShort)
  {
    this.c = paramn;
    this.d = paramInt;
    this.e = paramArrayOfShort;
    this.f = ((short)(paramArrayOfShort.length / 2));
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
    if (this.f % 3 != 0)
      return;
    int i = a().vertexSize / 4;
    if (paramFloatBuffer.position() + i * this.f > paramFloatBuffer.capacity())
      throw new BufferOverflowException();
    if (paramShortBuffer.position() + this.f > paramShortBuffer.capacity())
      throw new BufferOverflowException();
    t localt = this.c.a(this.d);
    float f1 = a.a;
    float f2 = Math.max(0.0F, 1.0F - f1);
    if ((localt != null) && (localt.a() > 0));
    for (float f3 = f.a(localt.a(0)); ; f3 = f.a(a.r, a.g, a.b))
    {
      float f4 = Math.min(1.0F, f2 + f3 * f1);
      f.b(f4, f4, f4);
      float f5 = Color.BLACK.toFloatBits();
      short s1 = (short)(paramFloatBuffer.position() / i);
      float f6 = this.c.a();
      short s2 = s1;
      int j = 0;
      while (j < this.f)
      {
        int k = j * 2;
        paramFloatBuffer.put(f6 * (4096 - this.e[k]));
        paramFloatBuffer.put(f6 * this.e[(k + 1)]);
        paramFloatBuffer.put(f5);
        short s3 = (short)(s2 + 1);
        paramShortBuffer.put(s2);
        j++;
        s2 = s3;
      }
      break;
    }
  }

  public final short b()
  {
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.b
 * JD-Core Version:    0.6.2
 */