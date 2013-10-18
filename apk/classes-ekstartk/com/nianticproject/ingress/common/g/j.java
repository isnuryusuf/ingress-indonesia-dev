package com.nianticproject.ingress.common.g;

public abstract class j<E>
  implements com.nianticproject.ingress.common.aa
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(j.class);
  private n b = n.a;

  private void g()
  {
    new k(this).e();
  }

  protected abstract void a(E paramE);

  public final void b()
  {
  }

  public final void c()
  {
  }

  protected abstract E d();

  public final void e()
  {
    try
    {
      if (this.b != n.a)
      {
        this.b = n.c;
        return;
      }
      this.b = n.c;
      g();
      return;
    }
    finally
    {
    }
  }

  public final void f_()
  {
    e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.j
 * JD-Core Version:    0.6.2
 */