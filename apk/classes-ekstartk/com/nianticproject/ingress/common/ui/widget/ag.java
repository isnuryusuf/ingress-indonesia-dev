package com.nianticproject.ingress.common.ui.widget;

import a;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.m.e;

public enum ag
{
  static
  {
    ag[] arrayOfag = new ag[9];
    arrayOfag[0] = a;
    arrayOfag[1] = b;
    arrayOfag[2] = c;
    arrayOfag[3] = d;
    arrayOfag[4] = e;
    arrayOfag[5] = f;
    arrayOfag[6] = g;
    h = arrayOfag;
    ag localag1 = new ag("MOD_ABOUT", 7);
    MOD_ABOUT = localag1;
    arrayOfag[7] = localag1;
    ag localag2 = new ag("MOD_ITEMS", 8);
    MOD_ITEMS = localag2;
    arrayOfag[8] = localag2;
  }

  public final String a()
  {
    switch (ae.a[ordinal()])
    {
    default:
      return "";
    case 1:
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(p.a().A().e());
    return String.format(" [%d]", arrayOfObject);
  }

  public final String toString()
  {
    String str = a.j(this);
    if (str != null)
      return str;
    return name();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ag
 * JD-Core Version:    0.6.2
 */