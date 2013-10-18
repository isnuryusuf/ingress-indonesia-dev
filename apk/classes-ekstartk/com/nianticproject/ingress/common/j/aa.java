package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.GLU;

public final class aa
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(aa.class);

  public static void a(boolean paramBoolean)
  {
    int i = Gdx.gl.glGetError();
    if (i != 0)
    {
      if (paramBoolean)
      {
        com.nianticproject.ingress.common.w.aa localaa2 = a;
        IllegalArgumentException localIllegalArgumentException2 = new IllegalArgumentException("GL20 error");
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(i);
        arrayOfObject2[1] = Gdx.glu.gluErrorString(i);
        localaa2.c(localIllegalArgumentException2, "GL Error (%s): %s", arrayOfObject2);
      }
    }
    else
      return;
    com.nianticproject.ingress.common.w.aa localaa1 = a;
    IllegalArgumentException localIllegalArgumentException1 = new IllegalArgumentException("GL20 error");
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(i);
    arrayOfObject1[1] = Gdx.glu.gluErrorString(i);
    localaa1.b(localIllegalArgumentException1, "GL Error (%s): %s", arrayOfObject1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.aa
 * JD-Core Version:    0.6.2
 */