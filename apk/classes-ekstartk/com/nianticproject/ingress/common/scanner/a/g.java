package com.nianticproject.ingress.common.scanner.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import java.nio.BufferOverflowException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

final class g
  implements af
{
  static final Color a = new Color(0.9F, 0.9F, 0.9F, 1.0F);
  static VertexAttributes b;
  private final n c;
  private final short d;
  private final short[] e;

  private g(n paramn, short[] paramArrayOfShort)
  {
    this.c = paramn;
    this.d = ((short)(paramArrayOfShort.length / 2));
    this.e = paramArrayOfShort;
  }

  static VertexAttributes a()
  {
    if (b == null)
    {
      VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[1];
      arrayOfVertexAttribute[0] = new VertexAttribute(0, 2, "a_position");
      b = new VertexAttributes(arrayOfVertexAttribute);
    }
    return b;
  }

  public final void a(FloatBuffer paramFloatBuffer, ShortBuffer paramShortBuffer)
  {
    if (paramFloatBuffer.position() + 2 * this.d > paramFloatBuffer.capacity())
      throw new BufferOverflowException();
    if (paramShortBuffer.position() + this.d > paramShortBuffer.capacity())
      throw new BufferOverflowException();
    short s1 = (short)(paramFloatBuffer.position() / 2);
    float f1 = this.c.a();
    int i = 0;
    while (i < this.d)
    {
      int j = i * 2;
      float f2 = f1 * (4096 - this.e[j]);
      float f3 = f1 * this.e[(j + 1)];
      paramFloatBuffer.put(f2);
      paramFloatBuffer.put(f3);
      short s2 = (short)(s1 + 1);
      paramShortBuffer.put(s1);
      i++;
      s1 = s2;
    }
  }

  public final short b()
  {
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.g
 * JD-Core Version:    0.6.2
 */