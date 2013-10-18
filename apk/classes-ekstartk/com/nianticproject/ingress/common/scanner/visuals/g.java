package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector2;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.j.l;

public final class g
{
  private Vector2[] a;
  private Vector2[] b;
  private final float c;
  private final float d;
  private final float e;

  public g(float paramFloat1, float paramFloat2)
  {
    this.c = paramFloat1;
    this.d = paramFloat2;
    this.e = (this.c / this.d);
  }

  private void a(h paramh, Vector2 paramVector2, Color paramColor, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.a[0].set(paramVector2).add(paramFloat1, paramFloat2 - paramFloat4);
    this.a[1].set(paramVector2).add(paramFloat1, paramFloat2);
    this.a[2].set(paramVector2).add(paramFloat1 - paramFloat3, paramFloat2);
    this.b[0].set(-paramFloat5, 0.0F);
    this.b[1].set(-paramFloat5, -paramFloat6);
    this.b[2].set(0.0F, -paramFloat6);
    paramh.a(l.a, this.a, this.b, paramColor);
  }

  public final void a(h paramh, Vector2 paramVector2, Color paramColor, float paramFloat1, float paramFloat2)
  {
    if ((paramColor != null) && (paramColor.a > 0.0F) && (paramVector2 != null))
    {
      if (this.a == null)
      {
        this.a = new Vector2[3];
        this.b = new Vector2[3];
        for (int i = 0; i < 3; i++)
        {
          this.a[i] = new Vector2();
          this.b[i] = new Vector2();
        }
      }
      float f1 = paramFloat1 / this.e;
      float f2 = 0.01F + 0.3F * f1;
      float f3 = f2 * this.e;
      float f4 = 0.5F * paramFloat2 / this.c;
      float f5 = f4 * this.e;
      a(paramh, paramVector2, paramColor, f1, paramFloat1, f2, f3, f4, f5);
      a(paramh, paramVector2, paramColor, -f1, paramFloat1, -f2, f3, -f4, f5);
      a(paramh, paramVector2, paramColor, f1, -paramFloat1, f2, -f3, f4, -f5);
      a(paramh, paramVector2, paramColor, -f1, -paramFloat1, -f2, -f3, -f4, -f5);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.g
 * JD-Core Version:    0.6.2
 */