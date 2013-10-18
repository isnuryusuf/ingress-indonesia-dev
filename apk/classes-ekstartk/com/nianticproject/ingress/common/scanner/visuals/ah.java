package com.nianticproject.ingress.common.scanner.visuals;

import com.google.a.a.an;

 enum ah
{
  public final float e;
  public final float f;

  static
  {
    ah[] arrayOfah = new ah[4];
    arrayOfah[0] = a;
    arrayOfah[1] = b;
    arrayOfah[2] = c;
    arrayOfah[3] = d;
  }

  private ah(float paramFloat1, float paramFloat2)
  {
    boolean bool2;
    if (paramFloat1 >= 0.0F)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramFloat2 <= paramFloat1)
        break label54;
    }
    while (true)
    {
      an.a(bool1);
      this.e = paramFloat1;
      this.f = paramFloat2;
      return;
      bool2 = false;
      break;
      label54: bool1 = false;
    }
  }

  public static float a()
  {
    float f1 = 0.0F;
    ah[] arrayOfah = values();
    int i = arrayOfah.length;
    for (int j = 0; j < i; j++)
      f1 = Math.max(f1, arrayOfah[j].f);
    return f1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.ah
 * JD-Core Version:    0.6.2
 */