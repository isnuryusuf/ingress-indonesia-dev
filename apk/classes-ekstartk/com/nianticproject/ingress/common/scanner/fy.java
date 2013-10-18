package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.m;

final class fy
  implements m
{
  fy(fw paramfw)
  {
  }

  public final void a(af paramaf)
  {
    fw.a(this.a);
    paramaf.h().setUniformMatrix("u_modelViewProject", this.a.a);
    paramaf.h().setUniformf("u_elapsedTime", 0.1F * (fu.c(this.a.g) % 300.0F));
    paramaf.h().setUniformf("u_teamColor", fu.b(this.a.g).r, fu.b(this.a.g).g, fu.b(this.a.g).b, fu.b(this.a.g).a * this.a.f);
    paramaf.i();
    fw.b(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fy
 * JD-Core Version:    0.6.2
 */