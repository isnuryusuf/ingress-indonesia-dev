package com.nianticproject.ingress.ui;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.ai;

public enum x
{
  private final int x;

  static
  {
    x[] arrayOfx = new x[23];
    arrayOfx[0] = a;
    arrayOfx[1] = b;
    arrayOfx[2] = c;
    arrayOfx[3] = d;
    arrayOfx[4] = e;
    arrayOfx[5] = f;
    arrayOfx[6] = g;
    arrayOfx[7] = h;
    arrayOfx[8] = i;
    arrayOfx[9] = j;
    arrayOfx[10] = k;
    arrayOfx[11] = l;
    arrayOfx[12] = m;
    arrayOfx[13] = n;
    arrayOfx[14] = o;
    arrayOfx[15] = p;
    arrayOfx[16] = q;
    arrayOfx[17] = r;
    arrayOfx[18] = s;
    arrayOfx[19] = t;
    arrayOfx[20] = u;
    arrayOfx[21] = v;
    arrayOfx[22] = w;
  }

  private x(int paramInt)
  {
    this.x = paramInt;
  }

  public static x a(ai paramai)
  {
    an.a(paramai);
    switch (y.a[paramai.ordinal()])
    {
    default:
      throw new IllegalArgumentException(String.format("%s is an unknown Team", new Object[] { paramai }));
    case 1:
      return i;
    case 2:
      return h;
    case 3:
    }
    return j;
  }

  public static x a(ai paramai, String paramString1, String paramString2, ab paramab)
  {
    an.a(paramai);
    an.a(paramString1);
    an.a(paramString2);
    if (paramString2.equals(paramString1))
    {
      x localx = g;
      paramab.a = true;
      return localx;
    }
    return b(paramai);
  }

  public static x b(ai paramai)
  {
    an.a(paramai);
    switch (y.a[paramai.ordinal()])
    {
    default:
      throw new IllegalArgumentException(String.format("%s is an unknown Team", new Object[] { paramai }));
    case 1:
      return e;
    case 2:
      return d;
    case 3:
    }
    return f;
  }

  public static x c(ai paramai)
  {
    an.a(paramai);
    switch (y.a[paramai.ordinal()])
    {
    default:
      throw new IllegalArgumentException(String.format("%s is an unknown Team", new Object[] { paramai }));
    case 1:
      return b;
    case 2:
      return a;
    case 3:
    }
    return c;
  }

  public final int a()
  {
    return this.x;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.x
 * JD-Core Version:    0.6.2
 */