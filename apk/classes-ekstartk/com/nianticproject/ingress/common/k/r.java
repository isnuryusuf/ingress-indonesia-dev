package com.nianticproject.ingress.common.k;

import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;

public final class r
{
  public static Vector3 a(float paramFloat1, float paramFloat2, float paramFloat3, Vector3 paramVector3)
  {
    boolean bool1 = true;
    boolean bool2;
    if ((paramFloat1 >= -90.0F) && (paramFloat1 <= 90.0F))
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramFloat3 == 0.0F)
        break label113;
    }
    while (true)
    {
      an.a(bool1);
      float f1 = paramFloat1 * 0.01745329F;
      float f2 = 0.01745329F * (paramFloat2 + 90.0F);
      float f3 = (float)(paramFloat3 * Math.sin(f1));
      float f4 = (float)(paramFloat3 * Math.cos(f1));
      paramVector3.set((float)(f4 * Math.sin(f2)), f3, (float)(f4 * Math.cos(f2)));
      return paramVector3;
      bool2 = false;
      break;
      label113: bool1 = false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.r
 * JD-Core Version:    0.6.2
 */