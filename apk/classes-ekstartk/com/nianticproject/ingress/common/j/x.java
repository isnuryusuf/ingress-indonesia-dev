package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;
import com.nianticproject.ingress.common.w.ab;
import java.util.Map;

final class x
  implements d
{
  private final u b;
  private final FrameBuffer c;
  private final TextureRegion d;
  private int e = 0;

  public x(v paramv, u paramu)
  {
    this.b = paramu;
    this.c = ((FrameBuffer)v.a(paramv).b());
    this.d = new TextureRegion(this.c.getColorBufferTexture());
    this.d.flip(false, true);
  }

  public final boolean a()
  {
    return true;
  }

  public final TextureRegion b()
  {
    return this.d;
  }

  public final boolean c()
  {
    return false;
  }

  public final void d()
  {
    int i = -1 + this.e;
    this.e = i;
    if (i == 0)
      f();
  }

  final void e()
  {
    this.e = (1 + this.e);
  }

  final void f()
  {
    v.a(this.a).b(this.c);
    v.b(this.a).remove(this.b);
  }

  final void g()
  {
    this.c.begin();
    this.b.b();
    this.c.end();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.x
 * JD-Core Version:    0.6.2
 */