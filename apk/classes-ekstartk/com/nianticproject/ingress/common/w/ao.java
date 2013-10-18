package com.nianticproject.ingress.common.w;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.f;

public final class ao
{
  public static final Vector3 a = new Vector3(0.0F, 0.0F, 0.0F);

  public static Matrix4 a(Matrix4 paramMatrix41, Matrix4 paramMatrix42)
  {
    return paramMatrix41.translate(paramMatrix42.val[12], paramMatrix42.val[13], paramMatrix42.val[14]);
  }

  public static Vector3 a(float paramFloat1, float paramFloat2)
  {
    Vector3 localVector3 = new Vector3();
    return a(0.5F + paramFloat1 * 0.5F, paramFloat2, localVector3);
  }

  private static Vector3 a(float paramFloat1, float paramFloat2, Vector3 paramVector3)
  {
    float f = 2.0F * paramFloat1 - 1.0F;
    double d1 = Math.sqrt(1.0F - f * f);
    double d2 = 2.0D * (3.141592653589793D * paramFloat2);
    return paramVector3.set((float)(d1 * Math.cos(d2)), f, (float)(d1 * Math.sin(d2)));
  }

  private static Vector3 a(Matrix4 paramMatrix4, Vector3 paramVector3)
  {
    paramVector3.prj(paramMatrix4).scale(0.5F, 0.5F, 0.5F).add(0.5F, 0.5F, 0.5F);
    return paramVector3;
  }

  public static Vector3 a(Vector3 paramVector3)
  {
    return a((float)Math.random(), (float)Math.random(), paramVector3);
  }

  public static Vector3 a(f paramf, Matrix4 paramMatrix4, Vector3 paramVector3)
  {
    Vector3 localVector3 = paramVector3.cpy().mul(paramMatrix4);
    return a(paramf.e(), localVector3);
  }

  public static Vector3 a(f paramf, Vector3 paramVector3)
  {
    Vector3 localVector3 = paramVector3.cpy();
    return a(paramf.e(), localVector3);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.ao
 * JD-Core Version:    0.6.2
 */