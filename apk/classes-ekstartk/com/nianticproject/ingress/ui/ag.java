package com.nianticproject.ingress.ui;

import android.content.Context;
import android.content.res.Resources;

 enum ag
{
  private final int d;
  private final int e;

  static
  {
    ag[] arrayOfag = new ag[3];
    arrayOfag[0] = a;
    arrayOfag[1] = b;
    arrayOfag[2] = c;
  }

  private ag(int paramInt1, int paramInt2)
  {
    this.d = paramInt1;
    this.e = paramInt2;
  }

  public static ag a(int paramInt)
  {
    if (paramInt < (a.d + b.d) / 2)
      return a;
    if (paramInt < (b.d + c.d) / 2)
      return b;
    return c;
  }

  public static ag b(int paramInt)
  {
    for (ag localag : values())
      if (localag.e == paramInt)
        return localag;
    return b;
  }

  public final String a(Context paramContext)
  {
    switch (af.a[ordinal()])
    {
    default:
      throw new IllegalArgumentException(name() + " is not supported");
    case 1:
    case 2:
      Resources localResources = paramContext.getResources();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.e);
      return localResources.getString(2131296368, arrayOfObject);
    case 3:
    }
    return paramContext.getString(2131296373);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.ag
 * JD-Core Version:    0.6.2
 */