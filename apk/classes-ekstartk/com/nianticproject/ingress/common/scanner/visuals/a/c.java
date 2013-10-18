package com.nianticproject.ingress.common.scanner.visuals.a;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.w.y;

final class c extends d
{
  c(a parama)
  {
    super(parama, false);
  }

  public final void a(af paramaf)
  {
    paramaf.h().setUniformf("u_holeNormal", a.k(this.a).x, a.k(this.a).y, a.k(this.a).z);
    Vector3 localVector31 = a.k(this.a).tmp().crs(0.0F, 1.0F, 0.0F).nor();
    paramaf.h().setUniformf("u_holeTangentX", localVector31.x, localVector31.y, localVector31.z);
    float f1 = y.b((float)Math.min(Math.abs(a.l(this.a)), Math.abs(3.141592653589793D - a.l(this.a))) / 1.047198F);
    float f2 = f1 * f1;
    paramaf.h().setUniformf("u_AngleAndPerturbFactor", a.l(this.a), f2);
    Vector3 localVector32 = localVector31.crs(a.k(this.a)).nor();
    paramaf.h().setUniformf("u_holeTangentY", localVector32.x, localVector32.y, localVector32.z);
    super.a(paramaf);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a.c
 * JD-Core Version:    0.6.2
 */