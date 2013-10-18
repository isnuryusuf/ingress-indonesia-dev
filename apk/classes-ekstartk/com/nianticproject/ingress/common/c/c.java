package com.nianticproject.ingress.common.c;

import com.nianticproject.ingress.common.w.aa;
import java.util.Formatter;

public class c
{
  private static final aa a = new aa(c.class);
  private final ba b;
  private float c;
  private bn d;

  public c(ba paramba)
  {
    this.b = paramba;
    this.c = 0.0F;
    this.d = null;
  }

  public final void a()
  {
    if (this.d != null)
    {
      this.d.n();
      this.d = null;
      this.c = 0.0F;
    }
  }

  public final void a(float paramFloat)
  {
    if (Math.abs(paramFloat - this.c) > 0.02F)
    {
      this.c = paramFloat;
      if (this.d == null)
        break label56;
      if (this.c > 0.05F)
        break label42;
      a();
    }
    label42: label56: 
    while (this.c <= 0.05F)
    {
      return;
      this.d.a(this.c, 0.0F);
      return;
    }
    this.d = new bo().a(this.c).a(false).e().a(this.b).c().f();
    o.a().a(this.d);
  }

  public String toString()
  {
    Formatter localFormatter = new Formatter();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.b.toString();
    arrayOfObject[1] = Float.valueOf(this.c);
    if (this.d == null);
    for (String str1 = "no"; ; str1 = this.d.toString())
    {
      arrayOfObject[2] = str1;
      localFormatter.format("{clip=%s currentVolume=%.2f playing=%s}", arrayOfObject);
      String str2 = localFormatter.toString();
      localFormatter.close();
      return str2;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.c
 * JD-Core Version:    0.6.2
 */