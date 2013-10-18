package com.google.a.c;

import com.google.a.a.an;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class ec<R, C, V> extends ah<R, C, V>
{
  private static final ec<Object, Object, Object> a = new kg(dc.d(), du.g(), du.g());

  public static final <R, C, V> ec<R, C, V> a(kr<? extends R, ? extends C, ? extends V> paramkr)
  {
    if ((paramkr instanceof ec))
      return (ec)paramkr;
    dv localdv;
    Iterator localIterator;
    switch (paramkr.l())
    {
    default:
      localdv = du.h();
      localIterator = paramkr.d().iterator();
    case 0:
    case 1:
    }
    while (localIterator.hasNext())
    {
      ks localks2 = (ks)localIterator.next();
      localdv.c(b(localks2.a(), localks2.b(), localks2.c()));
      continue;
      return a;
      ks localks1 = (ks)ee.a(paramkr.d());
      return new jm(localks1.a(), localks1.b(), localks1.c());
    }
    return iu.a(localdv.a());
  }

  static <R, C, V> ks<R, C, V> b(R paramR, C paramC, V paramV)
  {
    return kt.a(an.a(paramR), an.a(paramC), an.a(paramV));
  }

  public static final <R, C, V> ec<R, C, V> n()
  {
    return a;
  }

  public static final <R, C, V> ed<R, C, V> o()
  {
    return new ed();
  }

  @Deprecated
  public final V a(R paramR, C paramC, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean a(Object paramObject1, Object paramObject2)
  {
    return b(paramObject1, paramObject2) != null;
  }

  public final boolean b(Object paramObject)
  {
    return ((ct)super.g()).contains(paramObject);
  }

  @Deprecated
  public final void c()
  {
    throw new UnsupportedOperationException();
  }

  final Iterator<V> i()
  {
    throw new AssertionError("should never be called");
  }

  public abstract dh<C, Map<R, V>> j();

  public abstract dh<R, Map<C, V>> k();

  abstract du<ks<R, C, V>> p();

  abstract ct<V> q();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ec
 * JD-Core Version:    0.6.2
 */