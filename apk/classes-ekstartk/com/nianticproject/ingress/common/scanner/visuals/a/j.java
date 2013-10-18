package com.nianticproject.ingress.common.scanner.visuals.a;

import com.google.a.c.eq;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.shared.af;
import java.util.ArrayList;
import java.util.List;

 enum j
{
  public final float e;

  static
  {
    j[] arrayOfj = new j[4];
    arrayOfj[0] = a;
    arrayOfj[1] = b;
    arrayOfj[2] = c;
    arrayOfj[3] = d;
  }

  private j(float paramFloat)
  {
    this.e = paramFloat;
  }

  public static float a()
  {
    float f1 = 0.0F;
    j[] arrayOfj = values();
    int i = arrayOfj.length;
    for (int j = 0; j < i; j++)
      f1 += arrayOfj[j].e;
    return f1;
  }

  public final bn a(af paramaf)
  {
    switch (i.b[ordinal()])
    {
    default:
      return null;
    case 1:
      ArrayList localArrayList = eq.a();
      localArrayList.add(ba.m);
      switch (i.a[paramaf.ordinal()])
      {
      default:
        localArrayList.add(ba.s);
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
      while (true)
      {
        return new bo().a(localArrayList).f();
        localArrayList.add(ba.p);
        continue;
        localArrayList.add(ba.o);
        continue;
        localArrayList.add(ba.q);
        continue;
        localArrayList.add(ba.r);
      }
    case 2:
    }
    bo localbo = new bo();
    ba[] arrayOfba = new ba[1];
    arrayOfba[0] = ba.n;
    return localbo.a(arrayOfba).e().f();
  }

  public final float b()
  {
    float f1 = 0.0F;
    for (int i = 0; i < ordinal(); i++)
      f1 += values()[i].e;
    return f1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a.j
 * JD-Core Version:    0.6.2
 */