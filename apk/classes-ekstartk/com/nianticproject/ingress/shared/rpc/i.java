package com.nianticproject.ingress.shared.rpc;

final class i<T>
{
  private T b;
  private boolean c;

  i(g paramg)
  {
  }

  final T a()
  {
    return this.b;
  }

  final void a(T paramT)
  {
    try
    {
      g.b(this.a);
      if (this.c)
        throw new IllegalArgumentException("This field has already been set.");
    }
    finally
    {
    }
    this.c = true;
    this.b = paramT;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.i
 * JD-Core Version:    0.6.2
 */