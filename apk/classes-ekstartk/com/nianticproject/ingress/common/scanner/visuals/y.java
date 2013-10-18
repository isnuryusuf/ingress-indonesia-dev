package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.collision.Ray;
import com.nianticproject.ingress.common.j.aj;
import com.nianticproject.ingress.common.j.ak;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.o;

public abstract class y
  implements aj, o
{
  protected boolean a;
  protected float b;
  protected float c = 0.0F;
  private final aj d = null;
  private float e = this.f;
  private float f = 1.0F;

  private float e()
  {
    if (this.a)
      return this.b / 0.5F;
    return Math.min(1.0F, this.c / 0.5F);
  }

  public final ak a(Ray paramRay)
  {
    if (this.d == null)
      return null;
    float f1 = c();
    if (Math.abs(f1 - 1.0F) > 1.0E-06D)
    {
      float f2 = 1.0F / f1;
      Ray localRay = new Ray(paramRay.origin, paramRay.direction);
      localRay.mul(new Matrix4().scale(f2, f2, f2));
      return this.d.a(localRay);
    }
    return this.d.a(paramRay);
  }

  public final ak a(f paramf, Matrix4 paramMatrix4, Vector2 paramVector2)
  {
    if (this.d == null)
      return null;
    float f1 = c();
    if (Math.abs(f1 - 1.0F) > 1.0E-06D)
    {
      Matrix4 localMatrix4 = new Matrix4();
      localMatrix4.scale(f1, f1, f1);
      return this.d.a(paramf, localMatrix4, paramVector2);
    }
    return this.d.a(paramf, paramMatrix4, paramVector2);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.b -= paramFloat;
    this.c = (paramFloat + this.c);
    return (!this.a) || (this.b > 0.0F);
  }

  public final void b()
  {
    this.a = true;
    this.b = 0.5F;
  }

  protected final float c()
  {
    float f1 = this.e;
    float f2 = this.f;
    return f1 + e() * (f2 - f1);
  }

  protected final float d()
  {
    return e();
  }

  public void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.y
 * JD-Core Version:    0.6.2
 */