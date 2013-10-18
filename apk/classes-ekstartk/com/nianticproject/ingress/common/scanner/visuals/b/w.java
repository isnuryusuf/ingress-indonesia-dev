package com.nianticproject.ingress.common.scanner.visuals.b;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.common.x.i;

public final class w
  implements b
{
  private static final Color a = new Color(0.3789F, 0.4648F, 1.0F, 1.0F);
  private static c c;
  private String b = "u_destinations";
  private float d = 0.0F;
  private float[] e = new float[4];
  private float[] f = new float[4];
  private float[] g = new float[4];
  private float[] h = new float[27];
  private final ShaderProgram i = c.g();
  private float j = 4.0F;

  public w()
  {
    for (int m = 0; m < 9; m++)
    {
      this.h[(0 + m * 3)] = (0.25F * (2.0F * (float)Math.random() - 1.0F));
      this.h[(1 + m * 3)] = (0.25F * (2.0F * (float)Math.random() - 1.0F));
    }
    String[] arrayOfString = this.i.getUniforms();
    int n = arrayOfString.length;
    while (true)
    {
      if (k < n)
      {
        if (arrayOfString[k].endsWith("[0]"))
          this.b += "[0]";
      }
      else
        return;
      k++;
    }
  }

  public static void a()
  {
    i.a().a(new x("ItemDetailsRecycleParticleEffect.createResources"));
  }

  public static void c()
  {
    c.dispose();
  }

  public final void a(Vector3 paramVector3)
  {
    this.e[0] = a.r;
    this.e[1] = a.g;
    this.e[2] = a.b;
    float f1;
    if (this.d < 0.2F)
      f1 = y.a(this.d / 0.2F);
    while (true)
    {
      this.e[3] = (a.a * (f1 * 0.6F));
      this.f[0] = 0.0F;
      this.f[1] = 0.0F;
      this.f[2] = 0.0F;
      this.f[3] = 1.0F;
      this.g[0] = this.d;
      this.g[1] = 9.0F;
      this.g[2] = this.j;
      this.g[3] = 1.0F;
      this.i.setUniform4fv("u_params", this.g, 0, 4);
      this.i.setUniform4fv("u_color", this.e, 0, 4);
      this.i.setUniform4fv("u_position", this.f, 0, 4);
      this.i.setUniform3fv(this.b, this.h, 0, 27);
      return;
      if (this.d > 0.9F)
        f1 = 0.0F;
      else
        f1 = y.a((0.9F - this.d) / 0.8F);
    }
  }

  public final boolean a(float paramFloat)
  {
    this.d = (paramFloat + this.d);
    if (this.d >= 0.9F)
      this.j = 4.0F;
    while (this.d < 0.9F)
    {
      return true;
      if (this.d >= 0.0F)
        this.j = (4.0F + -4.0F * (this.d / 0.9F));
      else
        this.j = 0.0F;
    }
    return false;
  }

  public final c b()
  {
    return c;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b.w
 * JD-Core Version:    0.6.2
 */