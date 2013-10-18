package com.nianticproject.ingress.common.scanner;

import com.google.a.c.eq;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.common.c.bp;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.w.ai;
import com.nianticproject.ingress.common.w.aj;
import java.util.ArrayList;
import java.util.List;

public final class eh
{
  private static float a = 10.0F;
  private static float b = 15.0F;
  private int c = -1;
  private float d = 0.0F;
  private boolean e = false;
  private final ei[] f;

  public eh()
  {
    ei[] arrayOfei = new ei[5];
    arrayOfei[0] = new ei(this, 100.0F, 10, 0);
    arrayOfei[1] = new ei(this, 300.0F, 25, 0);
    arrayOfei[2] = new ei(this, 500.0F, 50, 0);
    arrayOfei[3] = new ei(this, 1000.0F, 100, 0);
    arrayOfei[4] = new ei(this, 6371010.0F, 500, 0);
    this.f = arrayOfei;
  }

  private int a(float paramFloat)
  {
    int i = b(paramFloat);
    return i * ((int)(float)(paramFloat + 0.5D * i) / i);
  }

  private int b(float paramFloat)
  {
    for (int i = 0; i < this.f.length; i++)
      if (paramFloat <= this.f[i].a)
        return this.f[i].b;
    return 500;
  }

  public final void a()
  {
    this.e = false;
    o.a().a(bs.aK);
  }

  public final void a(double paramDouble1, double paramDouble2)
  {
    this.e = false;
    ArrayList localArrayList = eq.a();
    localArrayList.add(ba.dX);
    localArrayList.add(ba.aN);
    localArrayList.addAll(aj.a((int)paramDouble1));
    localArrayList.add(ai.a((int)paramDouble2));
    this.d = a;
    this.c = a((int)paramDouble1);
    bn localbn = new bo().a(localArrayList).a(true).f();
    o.a().a(localbn);
  }

  public final void a(float paramFloat, double paramDouble1, double paramDouble2)
  {
    if (this.e)
    {
      float f2 = (float)paramDouble1;
      float f3 = (float)paramDouble2;
      this.e = false;
      this.c = a(f2);
      ArrayList localArrayList = eq.a();
      localArrayList.add(ba.dX);
      localArrayList.addAll(aj.a(this.c));
      localArrayList.add(ai.a((int)f3));
      bn localbn = new bo().a(localArrayList).a(true).a(bp.a).f();
      o.a().a(localbn);
    }
    if (this.d > 0.0F)
      this.d -= paramFloat;
    float f1;
    int i;
    int j;
    do
    {
      do
      {
        return;
        f1 = (float)paramDouble1;
      }
      while (f1 <= b);
      i = b(f1);
      j = this.c - (int)f1;
      if (j >= i)
      {
        this.e = true;
        this.d = a;
        return;
      }
    }
    while (j > -i);
    this.c = a(f1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.eh
 * JD-Core Version:    0.6.2
 */