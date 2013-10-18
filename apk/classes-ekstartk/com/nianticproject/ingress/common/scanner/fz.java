package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.scanner.visuals.dc;

final class fz
  implements m
{
  fz(fw paramfw)
  {
  }

  public final void a(af paramaf)
  {
    paramaf.h().setUniformMatrix("u_modelViewProject", fw.c(this.a));
    paramaf.h().setUniformf("u_cameraFwd", fw.d(this.a));
    paramaf.h().setUniformf("u_elapsedTime", (float)Math.pow(fu.d(this.a.g), 7.0D));
    paramaf.h().setUniformf("u_alpha", dc.a(fu.d(this.a.g), 0.1F));
    Color localColor = ea.t;
    paramaf.h().setUniformf("u_color", localColor.r, localColor.g, localColor.b, 1.0F);
    Gdx.gl20.glDrawArrays(5, 0, 1200);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fz
 * JD-Core Version:    0.6.2
 */