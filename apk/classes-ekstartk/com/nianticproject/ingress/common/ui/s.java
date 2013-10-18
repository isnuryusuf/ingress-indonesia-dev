package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.VertexBufferObject;
import com.nianticproject.ingress.common.t.b;
import com.nianticproject.ingress.shared.aj;

final class s extends SpriteBatch
{
  s(r paramr)
  {
    super(2000, 15);
  }

  public final void flush()
  {
    aj.a("SpriteBatch.flush");
    super.flush();
    aj.b();
  }

  protected final void renderMesh()
  {
    o.g().b();
    aj.a("SpriteBatch.renderMesh");
    super.renderMesh();
    aj.b();
    o.g();
    b.c();
  }

  protected final VertexBufferObject uploadVertexData()
  {
    o.f().b();
    aj.a("SpriteBatch.uploadVertexData");
    VertexBufferObject localVertexBufferObject = super.uploadVertexData();
    aj.b();
    o.f();
    b.c();
    return localVertexBufferObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.s
 * JD-Core Version:    0.6.2
 */