package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.nianticproject.ingress.common.j.ad;
import com.nianticproject.ingress.common.j.ae;

final class bu extends ad
{
  public final ae a()
  {
    return ae.a;
  }

  public final boolean b()
  {
    Gdx.gl20.glEnable(3042);
    Gdx.gl20.glDepthMask(false);
    return true;
  }

  public final void c()
  {
    Gdx.gl20.glDepthMask(true);
    Gdx.gl20.glDisable(3042);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bu
 * JD-Core Version:    0.6.2
 */