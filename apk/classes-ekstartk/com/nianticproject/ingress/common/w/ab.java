package com.nianticproject.ingress.common.w;

import com.badlogic.gdx.utils.Array;
import com.google.a.a.an;

public abstract class ab<T>
{
  private final int a;
  private final Array<T> b;

  public ab()
  {
    this(5, 128);
  }

  public ab(int paramInt1, int paramInt2)
  {
    this.a = paramInt2;
    this.b = new Array(false, paramInt1);
  }

  protected abstract T a();

  protected abstract void a(T paramT);

  public final T b()
  {
    if (this.b.size == 0)
      return a();
    return this.b.pop();
  }

  public final void b(T paramT)
  {
    an.a(paramT);
    if (this.b.size < this.a)
    {
      this.b.add(paramT);
      return;
    }
    a(paramT);
  }

  public final void c()
  {
    for (int i = 0; i < this.b.size; i++)
      a(this.b.get(i));
    this.b.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.ab
 * JD-Core Version:    0.6.2
 */