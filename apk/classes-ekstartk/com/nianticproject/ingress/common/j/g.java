package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.Ray;
import com.nianticproject.ingress.common.w.z;

public final class g
{
  private static final Matrix4 a = new Matrix4();
  private static final Ray b = new Ray(new Vector3(), new Vector3());

  public static float a(float paramFloat1, float paramFloat2)
  {
    double d1 = 2.0F * b(paramFloat1, 1.0F);
    double d2 = d1 * paramFloat2;
    return (float)Math.sqrt(d2 * d2 + d1 * d1);
  }

  public static float a(f paramf, Vector3 paramVector3, float paramFloat)
  {
    float f1 = paramFloat / z.a(paramf.d(), new Vector3()).dst(paramVector3);
    float f2 = paramf.g();
    return (float)(2.0F * f1 / (Math.sqrt(1.0F - f1 * f1) * f2));
  }

  public static Ray a(f paramf, float paramFloat1, float paramFloat2)
  {
    a.set(paramf.d());
    if (z.b(a) == null)
      return null;
    float f1 = 2.0F * (1.0F - paramFloat1) - 1.0F;
    float f2 = paramFloat2 * 2.0F - 1.0F;
    float f3 = paramf.c();
    float f4 = paramf.b();
    float f5 = b(paramf.a(), f3);
    b.origin.set(0.0F, 0.0F, 0.0F).mul(a);
    b.direction.set(f1 * (f4 * -f5), f2 * f5, -f3).rot(a).nor();
    return b;
  }

  private static float b(float paramFloat1, float paramFloat2)
  {
    return paramFloat2 * (float)Math.tan(Math.toRadians(0.5F * paramFloat1));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.g
 * JD-Core Version:    0.6.2
 */