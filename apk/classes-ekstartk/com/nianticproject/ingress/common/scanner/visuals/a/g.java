package com.nianticproject.ingress.common.scanner.visuals.a;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.af;

final class g extends d
{
  g(a parama)
  {
    super(parama, true);
  }

  public final void a(af paramaf)
  {
    paramaf.h().setUniformf("u_xmpCenterAndAnimation", a.g(this.a).x, a.g(this.a).y, a.g(this.a).z, a.h(this.a));
    paramaf.h().setUniformf("u_waveIntensity", a.i(this.a));
    if (a.j(this.a))
      paramaf.h().setUniformf("u_waveColor", 0.93F, 0.11F, 0.14F, 0.6F);
    while (true)
    {
      super.a(paramaf);
      return;
      paramaf.h().setUniformf("u_waveColor", 1.0F, 1.0F, 1.0F, 0.9F);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a.g
 * JD-Core Version:    0.6.2
 */