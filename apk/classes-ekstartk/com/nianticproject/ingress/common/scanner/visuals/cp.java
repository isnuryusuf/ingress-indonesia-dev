package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.utils.Disposable;
import com.nianticproject.ingress.common.j.s;
import com.nianticproject.ingress.common.j.t;

final class cp
  implements Disposable
{
  public final t a;
  public final s b;
  public int c;

  public cp()
  {
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[3];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 4, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(3, 4, "a_texCoord0");
    arrayOfVertexAttribute[2] = new VertexAttribute(5, 4, "a_color");
    this.a = new t(0, arrayOfVertexAttribute);
    this.b = new s();
  }

  public final void dispose()
  {
    this.a.dispose();
    this.b.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cp
 * JD-Core Version:    0.6.2
 */