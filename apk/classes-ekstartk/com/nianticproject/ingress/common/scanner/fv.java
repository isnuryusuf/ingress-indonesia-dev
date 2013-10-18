package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.j.ae;
import com.nianticproject.ingress.common.j.al;
import com.nianticproject.ingress.common.j.an;

final class fv extends al
{
  public final ae a()
  {
    return ae.f;
  }

  protected final ShaderProgram d()
  {
    return ag.aF;
  }

  protected final boolean j()
  {
    GL20 localGL20 = Gdx.gl20;
    localGL20.glDisable(2884);
    localGL20.glEnable(3042);
    localGL20.glDepthMask(false);
    ag.aZ.a(this.a);
    return true;
  }

  protected final void k()
  {
    ag.aZ.b(this.a);
    GL20 localGL20 = Gdx.gl20;
    localGL20.glEnable(2884);
    localGL20.glDisable(3042);
    localGL20.glDepthMask(true);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fv
 * JD-Core Version:    0.6.2
 */