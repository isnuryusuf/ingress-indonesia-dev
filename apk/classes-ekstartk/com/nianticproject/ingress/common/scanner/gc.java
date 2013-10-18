package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.j.n;

public final class gc extends fj
  implements m
{
  private gd g;

  public gc(ga paramga, gd paramgd)
  {
    super(paramga, paramgd.h);
    this.g = paramgd;
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    an.a(paramn, "ResourceDrawable requires DeferredRenderer");
    if (ga.a(this.f).c(this.f))
    {
      this.a.set(paramf.e());
      Matrix4.mul(this.a.val, paramMatrix4.val);
      paramn.a(this.g, this);
    }
  }

  public final void a(af paramaf)
  {
    paramaf.h().setUniformMatrix("u_modelViewProject", this.a);
    if (ga.b(this.f) != null)
      paramaf.h().setUniformf("u_color", ga.b(this.f));
    paramaf.i();
  }

  protected final boolean d()
  {
    return ga.a(this.f).c(this.f);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.gc
 * JD-Core Version:    0.6.2
 */