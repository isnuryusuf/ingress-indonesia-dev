package com.nianticproject.ingress.common.scanner.visuals.b;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.common.x.i;

public final class z
  implements b
{
  private static final Color a = new Color(0.64F, 0.45F, 0.0F, 1.0F);
  private static c e;
  private final String b = "u_params";
  private final String c = "u_color";
  private final String d = "u_position";
  private float f = 0.0F;
  private float g = 3.4028235E+38F;
  private boolean h = false;
  private float[] i = new float[4];
  private float[] j = new float[4];
  private float[] k = new float[4];
  private final ShaderProgram l = e.g();

  public z()
  {
    p.a().b().p();
  }

  public static void a()
  {
    i.a().a(new aa("PowerCubeParticleEffect.createResources"));
  }

  public static void c()
  {
    e.dispose();
  }

  public final void a(Vector3 paramVector3)
  {
    float f1;
    if ((this.g >= 1.0F) || (this.h))
    {
      f1 = 1.0F;
      this.i[0] = a.r;
      this.i[1] = a.g;
      this.i[2] = a.b;
      this.i[3] = a.a;
      if (this.f >= 1.0F)
        break label236;
      float[] arrayOfFloat2 = this.i;
      arrayOfFloat2[3] *= y.a(this.f / 1.0F);
    }
    while (true)
    {
      this.j[0] = 0.0F;
      this.j[1] = 0.0F;
      this.j[2] = 0.0F;
      this.j[3] = (40.0F * f1);
      float f2 = (float)Math.pow(paramVector3.len(), 0.2000000029802322D);
      this.k[0] = this.f;
      this.k[1] = 5.0F;
      this.k[2] = f1;
      this.k[3] = f2;
      this.l.setUniform4fv("u_params", this.k, 0, 4);
      this.l.setUniform4fv("u_color", this.i, 0, 4);
      this.l.setUniform4fv("u_position", this.j, 0, 4);
      return;
      f1 = y.a(this.g / 1.0F);
      break;
      label236: if (this.g < 0.5F)
      {
        float[] arrayOfFloat1 = this.i;
        arrayOfFloat1[3] *= y.a(this.g / 0.5F);
      }
    }
  }

  public final boolean a(float paramFloat)
  {
    this.f = (paramFloat + this.f);
    this.g -= paramFloat;
    if (this.g < 0.2F)
      p.a().b().q();
    return this.g > 0.0F;
  }

  public final c b()
  {
    return e;
  }

  public final void d()
  {
    this.g = (1.0F + MathUtils.clamp(2.5F - this.f, 0.0F, 2.5F));
  }

  public final void dispose()
  {
  }

  public final void e()
  {
    this.g = 0.5F;
    this.h = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b.z
 * JD-Core Version:    0.6.2
 */