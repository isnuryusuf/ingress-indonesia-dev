package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.graphics.Color;
import com.google.a.a.an;

public enum d
{
  public final char g;
  private final Color h;

  static
  {
    d[] arrayOfd = new d[6];
    arrayOfd[0] = a;
    arrayOfd[1] = b;
    arrayOfd[2] = c;
    arrayOfd[3] = d;
    arrayOfd[4] = e;
    arrayOfd[5] = f;
  }

  private d(char paramChar, Color paramColor)
  {
    if ((paramChar >= 57344) && (paramChar <= 63743));
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Codes must be in the allocated range.");
      this.g = paramChar;
      this.h = paramColor;
      return;
    }
  }

  public static Color[] a()
  {
    d[] arrayOfd1 = values();
    int j = arrayOfd1.length;
    int k = 0;
    int m = 0;
    while (k < j)
    {
      d locald2 = arrayOfd1[k];
      if (locald2.g > m)
        m = locald2.g;
      k++;
    }
    Color[] arrayOfColor = new Color[1 + (m - 57344)];
    for (d locald1 : values())
    {
      int i2 = locald1.g - 57344;
      if (arrayOfColor[i2] != null)
        throw new IllegalStateException("Code has already been set.");
      arrayOfColor[i2] = locald1.h;
    }
    return arrayOfColor;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.d
 * JD-Core Version:    0.6.2
 */