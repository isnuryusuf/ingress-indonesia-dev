package com.google.a.c;

final class iw extends du<ks<R, C, V>>
{
  private iw(iu paramiu)
  {
  }

  public final lj<ks<R, C, V>> b()
  {
    return a().b();
  }

  public final boolean contains(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ks;
    boolean bool2 = false;
    if (bool1)
    {
      ks localks = (ks)paramObject;
      Object localObject = this.a.b(localks.a(), localks.b());
      bool2 = false;
      if (localObject != null)
      {
        boolean bool3 = localObject.equals(localks.c());
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
    }
    return bool2;
  }

  final boolean e()
  {
    return false;
  }

  final dc<ks<R, C, V>> f()
  {
    return new ix(this);
  }

  public final int size()
  {
    return this.a.l();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.iw
 * JD-Core Version:    0.6.2
 */