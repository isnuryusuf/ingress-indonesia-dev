package com.nianticproject.ingress.common.w;

import com.google.a.a.an;
import com.nianticproject.ingress.common.c.ba;

public final class ai
{
  private static final ba[] a = arrayOfba;

  static
  {
    ba[] arrayOfba = new ba[8];
    arrayOfba[0] = ba.bf;
    arrayOfba[1] = ba.bg;
    arrayOfba[2] = ba.be;
    arrayOfba[3] = ba.bj;
    arrayOfba[4] = ba.bi;
    arrayOfba[5] = ba.bk;
    arrayOfba[6] = ba.bl;
    arrayOfba[7] = ba.bh;
  }

  public static ba a(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramInt >= 0)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramInt > 359)
        break label58;
    }
    while (true)
    {
      an.a(bool1);
      int i = 360 / a.length;
      int j = (paramInt + i / 2) / i % a.length;
      return a[j];
      bool2 = false;
      break;
      label58: bool1 = false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.ai
 * JD-Core Version:    0.6.2
 */