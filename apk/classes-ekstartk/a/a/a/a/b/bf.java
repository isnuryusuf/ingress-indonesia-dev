package a.a.a.a.b;

import java.util.NoSuchElementException;

class bf
{
  at<V> c;
  at<V> d;
  at<V> e;
  int f = 0;

  bf(ap paramap)
  {
    this.d = paramap.d;
  }

  void c()
  {
    this.c = this.c.j();
  }

  void d()
  {
    this.d = this.d.i();
  }

  final at<V> e()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    at localat = this.d;
    this.c = localat;
    this.e = localat;
    this.f = (1 + this.f);
    d();
    return this.e;
  }

  final at<V> f()
  {
    if (!hasPrevious())
      throw new NoSuchElementException();
    at localat = this.c;
    this.d = localat;
    this.e = localat;
    this.f = (-1 + this.f);
    c();
    return this.e;
  }

  public boolean hasNext()
  {
    return this.d != null;
  }

  public boolean hasPrevious()
  {
    return this.c != null;
  }

  public int nextIndex()
  {
    return this.f;
  }

  public int previousIndex()
  {
    return -1 + this.f;
  }

  public void remove()
  {
    if (this.e == null)
      throw new IllegalStateException();
    if (this.e == this.c)
      this.f = (-1 + this.f);
    at localat = this.e;
    this.c = localat;
    this.d = localat;
    c();
    d();
    this.g.a(this.e.a);
    this.e = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.bf
 * JD-Core Version:    0.6.2
 */