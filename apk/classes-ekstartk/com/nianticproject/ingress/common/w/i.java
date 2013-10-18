package com.nianticproject.ingress.common.w;

import com.badlogic.gdx.graphics.Color;

public final class i
{
  public static final Color a = new Color(0.3F, 0.3F, 0.3F, 1.0F);
  public static final Color b = new Color(0.5F, 0.5F, 0.5F, 1.0F);
  public static final Color c = new Color(0.7F, 0.7F, 0.7F, 1.0F);
  public static final Color d = new Color(1.0F, 1.0F, 0.0F, 1.0F);
  public static final Color e = new Color(0.0F, 1.0F, 1.0F, 1.0F);
  public static final Color f = new Color(1.0F, 0.0F, 1.0F, 1.0F);

  public static Color a(Color paramColor1, Color paramColor2, Color paramColor3, float paramFloat)
  {
    paramColor2.r += paramFloat * (paramColor3.r - paramColor2.r);
    paramColor2.g += paramFloat * (paramColor3.g - paramColor2.g);
    paramColor2.b += paramFloat * (paramColor3.b - paramColor2.b);
    paramColor2.a += paramFloat * (paramColor3.a - paramColor2.a);
    return paramColor1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.i
 * JD-Core Version:    0.6.2
 */