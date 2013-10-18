package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.graphics.glutils.VertexBufferObject;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.c.jc;
import java.util.Set;

public final class t
  implements Disposable
{
  private static final Set<t> a = jc.a();
  private final VertexAttributes b;
  private VertexBufferObject c;
  private VertexBufferObject d;
  private float[] e;
  private boolean f;
  private boolean g;
  private int h;

  public t(int paramInt, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    this.b = new VertexAttributes(paramArrayOfVertexAttribute);
    b(paramInt);
  }

  private void b(int paramInt)
  {
    if (paramInt <= 32767);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Vertex count larger than usable with GL_SIGNED_SHORT");
      if (this.h < paramInt)
      {
        this.h = paramInt;
        this.e = new float[paramInt * (this.b.vertexSize / 4)];
        this.f = true;
        dispose();
        this.c = new VertexBufferObject(false, paramInt, this.b);
        this.d = new VertexBufferObject(false, paramInt, this.b);
        a.add(this);
      }
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, ShaderProgram paramShaderProgram)
  {
    a(paramInt2, paramShaderProgram);
    Gdx.gl20.glDrawArrays(paramInt1, 0, paramInt2);
    a(paramShaderProgram);
  }

  public final void a(int paramInt, ShaderProgram paramShaderProgram)
  {
    boolean bool1;
    if (!this.g)
    {
      bool1 = true;
      an.b(bool1);
      if (paramInt > this.h)
        break label103;
    }
    label103: for (boolean bool2 = true; ; bool2 = false)
    {
      an.a(bool2);
      if (this.f)
      {
        this.f = false;
        VertexBufferObject localVertexBufferObject = this.c;
        this.c = this.d;
        this.d = localVertexBufferObject;
        this.c.setVertices(this.e, 0, paramInt * (this.b.vertexSize / 4));
      }
      this.c.bind(paramShaderProgram);
      this.g = true;
      return;
      bool1 = false;
      break;
    }
  }

  public final void a(ShaderProgram paramShaderProgram)
  {
    an.b(this.g);
    this.c.unbind(paramShaderProgram);
    this.g = false;
  }

  public final float[] a(int paramInt)
  {
    b(paramInt);
    this.f = true;
    return this.e;
  }

  public final void dispose()
  {
    if (this.c != null)
    {
      this.c.dispose();
      this.c = null;
      this.d.dispose();
      this.d = null;
    }
    a.remove(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.t
 * JD-Core Version:    0.6.2
 */