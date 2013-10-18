package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.utils.Disposable;

public abstract class ad extends af
  implements Disposable
{
  private boolean b = false;
  private final String c = getClass().getSimpleName();

  public abstract ae a();

  protected boolean b()
  {
    return true;
  }

  public void c()
  {
  }

  public void dispose()
  {
  }

  public final boolean e()
  {
    if (!b());
    for (boolean bool = true; ; bool = false)
    {
      this.b = bool;
      if (this.b)
        break;
      return true;
    }
    return false;
  }

  public final boolean f()
  {
    return this.b;
  }

  public String g()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ad
 * JD-Core Version:    0.6.2
 */