package com.nianticproject.ingress.common.scanner.visuals.a;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.j.ae;
import com.nianticproject.ingress.common.j.at;
import com.nianticproject.ingress.common.scanner.ag;

final class e extends at
{
  private f i;

  public e(f paramf)
  {
    super("u_texture", "u_holeNoiseTexture");
    this.i = paramf;
  }

  public final ae a()
  {
    return ae.d;
  }

  protected final ShaderProgram d()
  {
    switch (b.a[this.i.ordinal()])
    {
    default:
      return ag.aI;
    case 2:
      return ag.aJ;
    case 3:
    }
    return ag.aK;
  }

  protected final boolean j()
  {
    Gdx.gl.glEnable(3042);
    Gdx.gl.glDepthMask(false);
    Gdx.gl.glDisable(2884);
    this.h = ag.x;
    this.b = ag.aL;
    if (this.i == f.c)
      this.c = ag.aM;
    return super.j();
  }

  protected final void k()
  {
    super.k();
    Gdx.gl.glDepthMask(true);
    Gdx.gl.glDisable(3042);
    Gdx.gl.glEnable(2884);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a.e
 * JD-Core Version:    0.6.2
 */