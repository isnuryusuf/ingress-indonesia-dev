package com.google.a.c;

final class be<E> extends dz<E>
{
  private final dz<E> c;

  be(dz<E> paramdz)
  {
    super(ih.a(paramdz.comparator()).a());
    this.c = paramdz;
  }

  final int a(Object paramObject)
  {
    int i = this.c.a(paramObject);
    if (i == -1)
      return i;
    return -1 + size() - i;
  }

  final dz<E> a(E paramE, boolean paramBoolean)
  {
    return this.c.d(paramE, paramBoolean).b_();
  }

  final dz<E> a(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    return this.c.b(paramE2, paramBoolean2, paramE1, paramBoolean1).b_();
  }

  final dz<E> b(E paramE, boolean paramBoolean)
  {
    return this.c.c(paramE, paramBoolean).b_();
  }

  public final lj<E> b()
  {
    return this.c.c();
  }

  public final dz<E> b_()
  {
    return this.c;
  }

  public final lj<E> c()
  {
    return this.c.b();
  }

  public final E ceiling(E paramE)
  {
    return this.c.floor(paramE);
  }

  final dz<E> d()
  {
    throw new AssertionError("should never be called");
  }

  final boolean e()
  {
    return this.c.e();
  }

  public final E floor(E paramE)
  {
    return this.c.ceiling(paramE);
  }

  public final E higher(E paramE)
  {
    return this.c.lower(paramE);
  }

  public final E lower(E paramE)
  {
    return this.c.higher(paramE);
  }

  public final int size()
  {
    return this.c.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.be
 * JD-Core Version:    0.6.2
 */