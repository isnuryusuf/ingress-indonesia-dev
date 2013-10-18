package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.w.y;

final class fn
  implements m
{
  fn(fm paramfm)
  {
  }

  public final void a(af paramaf)
  {
    float f1 = 0.25F + 0.05F * fk.a(this.a.g);
    float f2 = 0.25F + 0.1F * fk.a(this.a.g);
    float f3 = -0.15F + 1.35F * (f1 * (fk.a(this.a.g) + fm.a(this.a)) % 1.0F);
    paramaf.h().setUniformf("u_alpha", fm.b(this.a));
    paramaf.h().setUniformf("u_rampTarget", f3);
    paramaf.h().setUniformf("u_rotation", y.c(fk.a(this.a.g) + f2 * fm.a(this.a)));
    paramaf.h().setUniformMatrix("u_modelViewProject", this.a.a);
    if (fk.b(this.a.g) > 0.0F)
    {
      float f4 = fk.c(this.a.g) - fk.d(this.a.g);
      float f5 = fk.d(this.a.g) + f4 * fk.b(this.a.g);
      paramaf.h().setUniformf("u_fightBoundary", f5);
    }
    paramaf.i();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fn
 * JD-Core Version:    0.6.2
 */