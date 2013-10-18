package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.j.ae;
import com.nianticproject.ingress.common.j.at;
import java.util.ArrayList;

class fo extends at
{
  public com.nianticproject.ingress.shared.ai i;

  public fo(com.nianticproject.ingress.shared.ai paramai)
  {
    super("u_texture");
    this.i = paramai;
  }

  public final ae a()
  {
    return ae.c;
  }

  protected ShaderProgram d()
  {
    return ag.aG;
  }

  protected boolean j()
  {
    GL20 localGL20 = Gdx.gl20;
    localGL20.glEnable(3042);
    localGL20.glDisable(2884);
    localGL20.glDepthMask(false);
    this.b = ag.av;
    this.h = ((com.nianticproject.ingress.common.j.ai)ag.au.get(0));
    h().setUniformf("u_teamColor", ea.a(this.i));
    return super.j();
  }

  protected final void k()
  {
    super.k();
    GL20 localGL20 = Gdx.gl20;
    localGL20.glEnable(2884);
    localGL20.glDisable(3042);
    localGL20.glDepthMask(true);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fo
 * JD-Core Version:    0.6.2
 */