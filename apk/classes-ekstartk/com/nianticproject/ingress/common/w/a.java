package com.nianticproject.ingress.common.w;

import com.google.a.a.an;
import com.google.a.d.u;
import com.google.a.d.y;

public final class a
{
  private boolean a = false;
  private y[] b = new y[5];
  private y c;
  private int d = 0;

  public final u a()
  {
    an.a(this.a);
    return new u(y.a(this.c, 1.0D / this.b.length));
  }

  public final void a(u paramu)
  {
    if (this.a)
    {
      y localy2 = paramu.g();
      y localy3 = this.b[this.d];
      this.b[this.d] = localy2;
      this.c = y.d(this.c, localy3);
      this.c = y.c(this.c, localy2);
      this.d = ((1 + this.d) % this.b.length);
      return;
    }
    this.c = new y(0.0D, 0.0D, 0.0D);
    y localy1 = paramu.g();
    for (int i = 0; i < this.b.length; i++)
    {
      this.b[i] = localy1;
      this.c = y.c(this.c, localy1);
    }
    this.a = true;
  }

  public final void b()
  {
    this.a = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.a
 * JD-Core Version:    0.6.2
 */