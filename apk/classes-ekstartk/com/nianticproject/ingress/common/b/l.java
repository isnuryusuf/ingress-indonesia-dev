package com.nianticproject.ingress.common.b;

import com.google.a.a.an;
import com.nianticproject.ingress.common.x.i;

final class l
{
  public T a = null;
  private boolean c = false;
  private boolean d = false;

  private l(j paramj)
  {
  }

  public final void a(String paramString, k<T> paramk)
  {
    boolean bool = true;
    try
    {
      if (!this.d);
      while (true)
      {
        an.a(bool, "Recursive loading of asset %s detected.", new Object[] { paramString });
        this.d = true;
        if (!this.c)
        {
          this.c = true;
          paramk.a();
          this.b.a.a(new m(this, "Load_" + paramString, paramString, paramk));
        }
        this.d = false;
        return;
        bool = false;
      }
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.b.l
 * JD-Core Version:    0.6.2
 */