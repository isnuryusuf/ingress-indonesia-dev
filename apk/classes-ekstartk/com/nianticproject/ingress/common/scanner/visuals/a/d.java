package com.nianticproject.ingress.common.scanner.visuals.a;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.m;

class d
  implements m
{
  private boolean a;

  d(a parama, boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public void a(af paramaf)
  {
    float f1 = a.a(this.b) / a.b(this.b);
    float f2 = -0.5F * a.c(this.b);
    float f3 = f2 + f1 * (1.0F + 0.5F * a.c(this.b) - f2);
    float f4 = a.d(this.b);
    paramaf.h().setUniformMatrix("u_modelViewProject", a.e(this.b));
    if (this.a)
      paramaf.h().setUniformf("u_color", a.f(this.b));
    ShaderProgram localShaderProgram = paramaf.h();
    float f5 = 1.0F / a.c(this.b);
    localShaderProgram.setUniformf("u_rampTargetInvWidth", a.au(f3), a.at(f5));
    paramaf.h().setUniformf("u_contributionsAndAlpha", 1.0F - f4, f4, this.b.f());
    paramaf.i();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a.d
 * JD-Core Version:    0.6.2
 */