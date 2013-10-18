package com.nianticproject.ingress.common.c;

import com.badlogic.gdx.utils.Disposable;

public final class n<T extends Disposable>
{
  private final T a;

  public n(T paramT)
  {
    this.a = paramT;
  }

  public final T a()
  {
    return this.a;
  }

  public final void b()
  {
    this.a.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.n
 * JD-Core Version:    0.6.2
 */