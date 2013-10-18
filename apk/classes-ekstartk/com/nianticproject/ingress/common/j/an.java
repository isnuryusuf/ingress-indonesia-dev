package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.graphics.glutils.VertexBufferObject;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.c.jc;
import java.util.Set;

public final class an
  implements Disposable
{
  private static final Set<an> a = jc.a();
  private final VertexAttributes b;
  private VertexBufferObject c;
  private final int d;

  public an(float[] paramArrayOfFloat, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    this.b = new VertexAttributes(paramArrayOfVertexAttribute);
    this.d = paramArrayOfFloat.length;
    this.c = new VertexBufferObject(true, this.d, paramArrayOfVertexAttribute);
    this.c.setVertices(paramArrayOfFloat, 0, this.d);
    a.add(this);
  }

  public final void a(ShaderProgram paramShaderProgram)
  {
    this.c.bind(paramShaderProgram);
  }

  public final void b(ShaderProgram paramShaderProgram)
  {
    this.c.unbind(paramShaderProgram);
  }

  public final void dispose()
  {
    if (this.c != null)
    {
      this.c.dispose();
      a.remove(this);
      this.c = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.an
 * JD-Core Version:    0.6.2
 */