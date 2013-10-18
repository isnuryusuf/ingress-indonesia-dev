package com.nianticproject.ingress.common.scanner.visuals.b;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.x.i;

public class l
  implements b
{
  private static final Color c = new Color(0.1F, 0.7F, 1.0F, 1.0F);
  private static u d = new r();
  private static u e = new p();
  private static u f = new u((byte)0);
  private static n g;
  private static n h;
  private static n i;
  protected Vector3 a = new Vector3();
  protected Vector3 b = new Vector3();
  private t j;
  private float k;
  private float l;
  private float m;
  private float n;
  private float o;
  private float p;
  private float q;
  private float r = 0.0F;
  private ShaderProgram s;
  private boolean t = false;

  public l(t paramt)
  {
    a(paramt);
  }

  public static void c()
  {
    i.a().a(new m("HackParticleEffect.createResources"));
  }

  public static void d()
  {
    g.dispose();
    h.dispose();
    i.dispose();
  }

  public final void a(Vector3 paramVector3)
  {
    float f1 = (float)Math.pow(paramVector3.len(), this.j.l);
    this.s.setUniformf("u_color", this.j.b);
    this.s.setUniformf("u_beginTimes", this.l, this.m, this.n);
    this.s.setUniformf("u_endTimes", this.o, this.p, this.q);
    this.s.setUniformf("u_timeSkews", this.j.h, this.j.i, this.j.j);
    this.s.setUniformf("u_params", this.r, this.j.c, this.j.k, f1);
    this.s.setUniformf("u_beginPos", this.a);
    this.s.setUniformf("u_endPos", this.b);
  }

  public final void a(Vector3 paramVector31, Vector3 paramVector32)
  {
    this.a.set(paramVector31);
    this.b.set(paramVector32);
  }

  public final void a(t paramt)
  {
    this.j = paramt;
    an.a(paramt.a, "Static Params can not be used here!");
    this.k = paramt.d();
    this.l = 0.0F;
    this.m = (paramt.d + paramt.e);
    this.n = paramt.a();
    this.o = paramt.d;
    this.p = paramt.c();
    this.q = paramt.b();
    this.s = ag.aQ;
  }

  public final void a(boolean paramBoolean)
  {
    this.t = paramBoolean;
  }

  public boolean a(float paramFloat)
  {
    this.r = (paramFloat + this.r);
    if ((this.t) && (this.r > this.m))
      this.r -= this.j.e - this.j.h;
    return this.r < this.k;
  }

  public final c b()
  {
    return this.j.a;
  }

  public void dispose()
  {
  }

  public final t e()
  {
    return this.j;
  }

  public final float f()
  {
    return this.r;
  }

  public final float g()
  {
    return this.k - this.r;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b.l
 * JD-Core Version:    0.6.2
 */