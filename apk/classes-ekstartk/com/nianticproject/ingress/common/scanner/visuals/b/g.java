package com.nianticproject.ingress.common.scanner.visuals.b;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.fk;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.scanner.visuals.bc;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.gameentity.components.FlipCard;
import com.nianticproject.ingress.gameentity.f;
import java.util.List;

public final class g
  implements b
{
  private static final Color a = new Color(0.0F, 0.3F, 0.7F, 1.0F);
  private static final Color b = new Color(0.0F, 0.7F, 0.1F, 1.0F);
  private static c d;
  private String c = "u_destinations";
  private float e = 0.0F;
  private float f = 3.4028235E+38F;
  private boolean g = false;
  private float[] h = new float[4];
  private float[] i = new float[4];
  private float[] j = new float[4];
  private float[] k = new float[27];
  private final ShaderProgram l = d.g();
  private final Color m;
  private final fp n;
  private final fk o;
  private final List<ej> p;
  private final Vector2 q = new Vector2();
  private final bc r;
  private final float s;
  private final float t;
  private j u = null;
  private float v = 0.0F;
  private boolean w = false;
  private boolean x = false;

  public g(fp paramfp, f paramf, fk paramfk, List<ej> paramList, float paramFloat)
  {
    this.n = paramfp;
    this.o = paramfk;
    this.p = paramList;
    this.s = a(paramfk);
    this.t = paramFloat;
    for (int i2 = 0; i2 < paramList.size(); i2++)
      this.k[(1 + i2 * 3)] = a((ej)paramList.get(i2));
    f();
    this.r = new i(this, paramfp);
    String[] arrayOfString;
    int i3;
    if (((FlipCard)paramf.getComponent(FlipCard.class)).getFlipCardType() == com.nianticproject.ingress.gameentity.components.c.a)
    {
      this.m = a;
      arrayOfString = this.l.getUniforms();
      i3 = arrayOfString.length;
    }
    while (true)
    {
      if (i1 < i3)
      {
        if (arrayOfString[i1].endsWith("[0]"))
          this.c += "[0]";
      }
      else
      {
        return;
        this.m = b;
        break;
      }
      i1++;
    }
  }

  private static float a(ej paramej)
  {
    ai localai = paramej.f();
    Vector3 localVector3 = localai.e();
    return (localai.d().y + localVector3.y) / 2.0F;
  }

  public static void a()
  {
    com.nianticproject.ingress.common.x.i.a().a(new h("FlipParticleEffect.createResources"));
  }

  public static void c()
  {
    d.dispose();
  }

  private void f()
  {
    this.n.a(this.o.c(), this.q);
    this.q.set(this.o.b());
    Vector2 localVector2 = new Vector2();
    for (int i1 = 0; i1 < this.p.size(); i1++)
    {
      this.n.a(((ej)this.p.get(i1)).c(), localVector2);
      this.k[(i1 * 3)] = (localVector2.x - this.q.x);
      this.k[(2 + i1 * 3)] = (localVector2.y - this.q.y);
    }
  }

  public final void a(Vector3 paramVector3)
  {
    this.h[0] = this.m.r;
    this.h[1] = this.m.g;
    this.h[2] = this.m.b;
    this.h[3] = this.m.a;
    if (this.e < 1.0F)
    {
      float[] arrayOfFloat2 = this.h;
      arrayOfFloat2[3] *= y.a(this.e / 1.0F);
    }
    while (true)
    {
      Vector2 localVector2 = this.r.c();
      this.i[0] = (this.q.x + localVector2.x);
      this.i[1] = this.s;
      this.i[2] = (this.q.y + localVector2.y);
      this.i[3] = (40.0F * this.t);
      float f1 = (float)Math.pow(paramVector3.len(), 0.2000000029802322D);
      this.j[0] = this.e;
      this.j[1] = this.p.size();
      this.j[2] = this.v;
      this.j[3] = f1;
      this.l.setUniform4fv("u_params", this.j, 0, 4);
      this.l.setUniform4fv("u_color", this.h, 0, 4);
      this.l.setUniform4fv("u_position", this.i, 0, 4);
      this.l.setUniform3fv(this.c, this.k, 0, 27);
      return;
      if (this.f < 0.5F)
      {
        float[] arrayOfFloat1 = this.h;
        arrayOfFloat1[3] *= y.a(this.f / 0.5F);
      }
    }
  }

  public final void a(j paramj)
  {
    this.u = paramj;
  }

  public final boolean a(float paramFloat)
  {
    this.e = (paramFloat + this.e);
    this.f -= paramFloat;
    if ((this.f >= 8.0F) || (this.g))
      this.v = 0.0F;
    while (true)
    {
      if (this.v > 3.0F)
      {
        float f1 = 0.26F - 0.25F * (float)Math.cos((float)(3.141592653589793D * (3.0D * (this.v - 3.0F)) / 1.25D));
        this.o.c(f1);
      }
      if ((!this.w) && (this.v > 2.5F) && (this.u != null))
      {
        this.u.b();
        this.w = true;
      }
      if ((!this.x) && (this.v > 3.25F) && (this.u != null))
      {
        this.u.c();
        this.x = true;
      }
      if (this.f <= 0.0F)
        break;
      return true;
      if (this.f >= 0.0F)
        this.v = (0.0F + 4.25F * (1.0F - this.f / 8.0F));
      else
        this.v = 4.25F;
    }
    return false;
  }

  public final c b()
  {
    return d;
  }

  public final void d()
  {
    this.f = (8.0F + MathUtils.clamp(2.0F - this.e, 0.0F, 2.0F));
  }

  public final void dispose()
  {
    this.r.dispose();
    if (this.u != null)
      this.u.a();
    this.o.c(0.0F);
  }

  public final void e()
  {
    this.f = 0.5F;
    this.g = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b.g
 * JD-Core Version:    0.6.2
 */