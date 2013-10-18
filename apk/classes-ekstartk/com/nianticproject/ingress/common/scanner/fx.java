package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.m;

final class fx
  implements m
{
  fx(fw paramfw)
  {
  }

  public final void a(af paramaf)
  {
    fw.a(this.a);
    Color localColor = this.a.g.k();
    paramaf.h().setUniformf("u_teamColor", fu.b(this.a.g).r, fu.b(this.a.g).g, fu.b(this.a.g).b, fu.b(this.a.g).a * this.a.f);
    paramaf.h().setUniformf("u_levelColor", localColor.r, localColor.g, localColor.b, localColor.a * this.a.f);
    paramaf.h().setUniformMatrix("u_modelViewProject", this.a.a);
    paramaf.i();
    fw.b(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fx
 * JD-Core Version:    0.6.2
 */