package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.nianticproject.ingress.common.j.ae;
import com.nianticproject.ingress.common.j.al;
import com.nianticproject.ingress.common.j.am;
import com.nianticproject.ingress.common.j.an;

public abstract class f extends al
{
  public final ae a()
  {
    return ae.f;
  }

  protected boolean j()
  {
    Gdx.gl.glEnable(3042);
    Gdx.gl.glBlendFunc(770, 1);
    Gdx.gl.glDepthMask(false);
    Gdx.gl.glDisable(2884);
    e.e().a(this.a);
    e.f().a();
    return true;
  }

  protected final void k()
  {
    Gdx.gl.glBlendFunc(770, 771);
    Gdx.gl.glDepthMask(true);
    Gdx.gl.glDisable(3042);
    Gdx.gl.glEnable(2884);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.f
 * JD-Core Version:    0.6.2
 */