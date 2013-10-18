package com.nianticproject.ingress.common.w;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;

public final class z
{
  public static final Matrix4 a = new Matrix4().idt();
  private static final aa b = new aa(z.class);

  public static float a(Matrix4 paramMatrix4)
  {
    return (float)Math.sqrt(Math.max(paramMatrix4.val[0] * paramMatrix4.val[0] + paramMatrix4.val[4] * paramMatrix4.val[4] + paramMatrix4.val[8] * paramMatrix4.val[8], Math.max(paramMatrix4.val[1] * paramMatrix4.val[1] + paramMatrix4.val[5] * paramMatrix4.val[5] + paramMatrix4.val[9] * paramMatrix4.val[9], paramMatrix4.val[2] * paramMatrix4.val[2] + paramMatrix4.val[6] * paramMatrix4.val[6] + paramMatrix4.val[10] * paramMatrix4.val[10])));
  }

  public static Vector3 a(Matrix4 paramMatrix4, Vector3 paramVector3)
  {
    return paramVector3.set(paramMatrix4.val[12], paramMatrix4.val[13], paramMatrix4.val[14]);
  }

  public static void a(Matrix4 paramMatrix4, Vector3 paramVector31, Vector3 paramVector32, Vector3 paramVector33)
  {
    paramVector31.set(paramMatrix4.val[0], paramMatrix4.val[4], paramMatrix4.val[8]);
    paramVector32.set(paramMatrix4.val[1], paramMatrix4.val[5], paramMatrix4.val[9]);
    paramVector33.set(paramMatrix4.val[2], paramMatrix4.val[6], paramMatrix4.val[10]);
  }

  public static Matrix4 b(Matrix4 paramMatrix4)
  {
    try
    {
      paramMatrix4.inv();
      return paramMatrix4;
    }
    catch (RuntimeException localRuntimeException)
    {
      aa localaa = b;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramMatrix4.toString();
      arrayOfObject[1] = Float.valueOf(paramMatrix4.det());
      localaa.c(localRuntimeException, "Caught a non-invertible matrix. invert(%s) invert.det(%f)", arrayOfObject);
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.z
 * JD-Core Version:    0.6.2
 */