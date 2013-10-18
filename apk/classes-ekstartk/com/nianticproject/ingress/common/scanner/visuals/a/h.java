package com.nianticproject.ingress.common.scanner.visuals.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.gameentity.c;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.inventory.ui.ao;
import com.nianticproject.ingress.common.j.ad;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.q;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.scanner.visuals.aj;
import com.nianticproject.ingress.common.scanner.visuals.u;
import com.nianticproject.ingress.common.scanner.visuals.w;
import com.nianticproject.ingress.common.w.i;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.shared.af;

public final class h extends q
  implements Disposable, com.nianticproject.ingress.common.j.o
{
  public static boolean e = false;
  private static Color f = new Color(0.97F, 0.47F, 0.3F, 0.45F);
  private static final float g = j.a();
  private j h = null;
  private float i;
  private final Resource j;
  private final af k;
  private final c l;
  private Matrix4 m = new Matrix4();
  private float n;
  private float o;
  private Vector3 p = new Vector3(0.0F, 1.0F, 0.0F);
  private float q;
  private float r;
  private boolean s = false;
  private com.nianticproject.ingress.common.j.h t;
  private aj u;

  public h(Resource paramResource)
  {
    this.j = paramResource;
    this.k = paramResource.getResourceType();
    an.a(g.a(this.k));
    this.l = g.a(this.k, null);
    c();
    this.t = p.a().k().n();
    this.u = new aj(this.l.a, new Vector3(0.0F, 0.0F, 0.0F), f.r, f.g, f.b, f.a);
  }

  private float a(j paramj1, j paramj2)
  {
    float f1 = paramj1.b();
    if (paramj2 != null);
    for (float f2 = paramj2.b(); this.r < f1; f2 = g)
      return 0.0F;
    if (this.r > f2)
      return 1.0F;
    return (this.r - f1) / (f2 - f1);
  }

  private void c()
  {
    if (this.h == null)
    {
      this.h = j.values()[0];
      if (this.h != null)
        break label62;
    }
    label62: bn localbn;
    do
    {
      return;
      int i1 = 1 + this.h.ordinal();
      if (i1 < j.values().length)
      {
        this.h = j.values()[i1];
        break;
      }
      this.h = null;
      break;
      localbn = this.h.a(this.k);
    }
    while (localbn == null);
    com.nianticproject.ingress.common.c.o.a().a(localbn);
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    this.m.set(paramf.e()).mul(paramMatrix4).translate(0.0F, this.n, 0.0F).rotate(this.p, this.q).scale(this.o, this.o, this.o);
    ShaderProgram localShaderProgram1 = ag.c.a().h();
    this.l.c.bind(0);
    localShaderProgram1.begin();
    localShaderProgram1.setUniformf("u_teamColor", ao.a);
    localShaderProgram1.setUniformf("u_levelColor", g.a(this.j, 1));
    localShaderProgram1.setUniformMatrix("u_modelViewProject", this.m);
    this.l.a.a(localShaderProgram1);
    this.l.a.h();
    this.l.a.c(localShaderProgram1);
    localShaderProgram1.end();
    ShaderProgram localShaderProgram2 = ag.d.a().h();
    Color localColor = ea.b(com.nianticproject.ingress.shared.ai.c);
    ag.h.bind(0);
    localShaderProgram2.begin();
    localShaderProgram2.setUniformi("u_texture", 0);
    localShaderProgram2.setUniformMatrix("u_modelViewProject", this.m);
    localShaderProgram2.setUniformf("u_elapsedTime", 0.1F * (this.r % 300.0F));
    localShaderProgram2.setUniformf("u_teamColor", localColor.r, localColor.g, localColor.b, localColor.a);
    localShaderProgram2.setUniformf("u_altColor", ao.b);
    this.l.b.a(localShaderProgram2);
    this.l.b.h();
    this.l.b.c(localShaderProgram2);
    localShaderProgram2.end();
    this.m.set(paramMatrix4).translate(0.0F, this.n, 0.0F);
    super.a(this.m, paramf, paramn);
    this.u.a(this.m, paramf, paramn);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    super.a(paramFloat);
    if (this.h == null)
      return false;
    switch (i.b[this.h.ordinal()])
    {
    default:
    case 1:
    case 3:
    case 4:
    case 2:
    }
    while (true)
    {
      float f1 = 2.0F * a(j.c, null) - 1.0F;
      float f2 = 1.0F - (float)Math.pow(f1, 4.0D);
      float f3 = 1.0F - (float)Math.pow(f1, 6.0D);
      this.u.b(1.9F + f2 * 0.35F);
      this.u.c(0.0F + f3 * 0.6F);
      this.r = (paramFloat + this.r);
      this.i = (paramFloat + this.i);
      if (this.i > this.h.e)
      {
        this.i = 0.0F;
        c();
      }
      if ((e) && (this.h == null))
      {
        c();
        this.r = 0.0F;
      }
      if (this.h == null)
        break;
      return true;
      float f4 = 1.0F - (float)Math.pow(1.0F - a(j.a, j.b), 2.0D);
      this.n = (4.5F * f4);
      this.o = (f4 * 2.25F);
      this.q = 0.0F;
      float f5 = a(j.a, j.c);
      float f6 = (float)Math.pow(f5, 1.299999952316284D);
      this.q = (3000.0F * f6);
      float f7 = (float)Math.pow(f5, 0.5D);
      float f8 = f6 * 1.0F;
      float f9 = f7 * 0.7F;
      this.p.set(f9 * (float)Math.sin(f8), 1.0F, f9 * (float)Math.cos(f8)).nor();
      continue;
      this.n = 4.5F;
      this.s = false;
      this.q += 15.0F * paramFloat;
      continue;
      if (!this.s)
      {
        this.s = true;
        b(new w(this.t, 2.0F, 20, 5.0F, 0.5F, Color.CYAN));
        b(new w(this.t, 1.6F, 20, 5.0F, 0.7F, Color.CYAN));
        b(new w(this.t, 1.2F, 50, 5.0F, 0.3F, Color.CYAN));
        b(new w(this.t, 1.0F, 100, 5.0F, 0.7F, i.e));
        b(new u(this.t, this.l.a, 1.5F, 80, 0.5F, 3.25F, i.e));
        this.o = 0.0F;
      }
    }
    return false;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a.h
 * JD-Core Version:    0.6.2
 */