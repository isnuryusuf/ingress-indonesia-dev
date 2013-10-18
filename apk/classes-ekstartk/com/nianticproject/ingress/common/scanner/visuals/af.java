package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;
import java.util.List;

public final class af extends z
{
  private static final Color j = Color.PINK;
  private static final Color k = Color.CYAN;
  private final Matrix4 l = new Matrix4();
  private final Matrix4 m = new Matrix4();
  private final ShaderProgram n = ag.aB;
  private final com.nianticproject.ingress.common.j.ai o = ag.al;
  private final Texture p = ag.an;
  private final List<ai> q = eq.a();
  private boolean r = false;
  private float s = 0.0F;
  private float t = 0.0F;
  private final float u;

  af(float paramFloat1, float paramFloat2)
  {
    super(ag.ak, ag.am, ah.a(), paramFloat1);
    this.u = paramFloat2;
    for (int i = 0; i < 2.0F; i++)
      this.q.add(new ai(this, (float)(100.0D * (0.25D + 0.75D * Math.random())), (float)(500.0D * (0.6499999761581421D + 0.3500000238418579D * Math.random())), j, (float)(360.0D * Math.random()), 60.0F + (float)(30.0D * Math.random()) - 15.0F));
    for (int i1 = 0; i1 < 1.0F; i1++)
      this.q.add(new ai(this, (float)(100.0D * (0.25D + 0.75D * Math.random())), (float)(500.0D * (0.6499999761581421D + 0.3500000238418579D * Math.random())), k, (float)(360.0D * Math.random()), 60.0F + (float)(30.0D * Math.random()) - 15.0F));
  }

  private void a(float paramFloat1, f paramf, Matrix4 paramMatrix4, float paramFloat2, float paramFloat3)
  {
    this.h.set(paramf.e()).mul(paramMatrix4).scale(paramFloat1, 1.0F, paramFloat1).rotate(0.0F, 1.0F, 0.0F, 45.0F * this.i);
    GL20 localGL20 = Gdx.gl20;
    localGL20.glEnable(3042);
    localGL20.glBlendFunc(770, 1);
    localGL20.glDepthMask(false);
    this.b.bind(0);
    this.a.a(c);
    c.begin();
    c.setUniformi("u_texture", 0);
    c.setUniformf("u_color", 1.0F, 1.0F, 1.0F, Math.min(paramFloat2, paramFloat3));
    c.setUniformMatrix("u_modelViewProject", this.h);
    this.a.h();
    this.h.rotate(0.0F, 1.0F, 0.0F, 45.0F * (0.5F * this.i));
    this.h.translate(0.0F, 0.2F, 0.0F);
    c.setUniformf("u_color", 1.0F, 1.0F, 1.0F, 0.5F * Math.min(paramFloat2, paramFloat3));
    c.setUniformMatrix("u_modelViewProject", this.h);
    this.a.h();
    this.a.c(c);
    localGL20.glBlendFunc(770, 771);
    localGL20.glDisable(3042);
    localGL20.glDepthMask(true);
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    while (true)
    {
      float f1;
      float f2;
      int i3;
      try
      {
        aj.a("FireUltraStrikeVisuals.draw");
        f1 = Math.min(1.0F, this.i / 0.25F);
        f2 = Math.min(1.75F, this.d - this.i) / 1.75F;
        this.s = 0.0F;
        i = 0;
        i1 = 0;
        f3 = 0.0F;
        f4 = 1.0F;
        float f5 = 1.0F;
        ah[] arrayOfah = ah.values();
        int i2 = arrayOfah.length;
        i3 = 0;
        i4 = 0;
        ah localah;
        float f8;
        if (i3 < i2)
        {
          localah = arrayOfah[i3];
          if ((localah.e > this.i) || (localah.f <= this.i))
            break label774;
          f8 = Math.min(1.0F, (this.i - localah.e) * this.e);
        }
        switch (ag.a[localah.ordinal()])
        {
        case 1:
          if (!this.r)
          {
            o.a().a(bs.aP);
            this.r = true;
          }
          float f11 = (this.i - localah.e) / (localah.f - localah.e);
          f5 *= f1;
          i5 = 1;
          i6 = i1;
          i7 = i;
          f6 = f11;
          f7 = f4;
          break;
        case 2:
          f7 = 1.0F - 0.8F * (this.i - localah.e) / (localah.f - localah.e);
          f5 *= (1.0F - (this.i - localah.e) / (localah.f - localah.e));
          i5 = 1;
          i6 = i1;
          i7 = i;
          f6 = f3;
          break;
        case 3:
          float f10 = this.f;
          this.s = (f10 + f8 * (this.g - f10));
          i5 = i4;
          i6 = i1;
          i7 = 1;
          f6 = f3;
          f7 = f4;
          break;
        case 4:
          float f9 = this.f;
          this.t = (f9 + f8 * (this.u - f9));
          i5 = i4;
          i6 = 1;
          i7 = i;
          f6 = f3;
          f7 = f4;
          break;
          if (i4 == 0)
            break label728;
          Matrix4 localMatrix4 = paramf.e();
          Gdx.gl.glEnable(3042);
          Gdx.gl.glDisable(2884);
          Gdx.gl.glBlendFunc(770, 1);
          Gdx.gl.glDepthMask(false);
          this.n.begin();
          this.p.bind(0);
          this.n.setUniformi("u_texture", 0);
          this.o.b(this.n);
          Iterator localIterator = this.q.iterator();
          if (localIterator.hasNext())
          {
            ai localai = (ai)localIterator.next();
            float f12 = ai.a(localai);
            float f13 = f4 * (f12 + f3 * (ai.b(localai) - f12));
            this.l.set(paramMatrix4).scale(7.0F, f13, 7.0F).rotate(0.0F, 1.0F, 0.0F, ai.c(localai) + ai.d(localai) * this.i);
            this.m.set(localMatrix4);
            this.m.mul(this.l);
            this.n.setUniformMatrix("u_modelViewProject", this.m);
            this.n.setUniformf("u_color", ai.e(localai).r, ai.e(localai).g, ai.e(localai).b, f5);
            this.o.g();
            continue;
          }
          break;
        }
      }
      finally
      {
        aj.b();
      }
      Gdx.gl.glDepthMask(true);
      Gdx.gl.glBlendFunc(770, 771);
      Gdx.gl.glDisable(3042);
      label728: if (i != 0)
        a(this.s, paramf, paramMatrix4, f1, f2);
      if (i1 != 0)
        a(this.t, paramf, paramMatrix4, f1 * 0.35F, f2);
      aj.b();
      return;
      label774: float f6 = f3;
      int i5 = i4;
      int i6 = i1;
      int i7 = i;
      float f7 = f4;
      i3++;
      float f3 = f6;
      int i1 = i6;
      int i = i7;
      float f4 = f7;
      int i4 = i5;
    }
  }

  public final float b()
  {
    return this.s;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.af
 * JD-Core Version:    0.6.2
 */