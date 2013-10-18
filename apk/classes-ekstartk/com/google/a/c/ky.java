package com.google.a.c;

import com.google.a.h.a;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;

public final class ky<E> extends af<E>
  implements Serializable
{
  private final transient lh<lg<E>> b;
  private final transient bt<E> c;
  private final transient lg<E> d;

  private ky(lh<lg<E>> paramlh, bt<E> parambt, lg<E> paramlg)
  {
    super(parambt.a());
    this.b = paramlh;
    this.c = parambt;
    this.d = paramlg;
  }

  static int a(lg<?> paramlg)
  {
    if (paramlg == null)
      return 0;
    return lg.c(paramlg);
  }

  private long a(ld paramld)
  {
    lg locallg = (lg)this.b.a();
    long l = paramld.b(locallg);
    if (this.c.b())
      l -= a(paramld, locallg);
    if (this.c.c())
      l -= b(paramld, locallg);
    return l;
  }

  private long a(ld paramld, lg<E> paramlg)
  {
    int i;
    while (true)
    {
      if (paramlg == null)
        return 0L;
      i = comparator().compare(this.c.d(), lg.d(paramlg));
      if (i >= 0)
        break;
      paramlg = lg.e(paramlg);
    }
    if (i == 0)
    {
      switch (lc.a[this.c.e().ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        return paramld.a(paramlg) + paramld.b(lg.e(paramlg));
      case 2:
      }
      return paramld.b(lg.e(paramlg));
    }
    return paramld.b(lg.e(paramlg)) + paramld.a(paramlg) + a(paramld, lg.f(paramlg));
  }

  private long b(ld paramld, lg<E> paramlg)
  {
    int i;
    while (true)
    {
      if (paramlg == null)
        return 0L;
      i = comparator().compare(this.c.f(), lg.d(paramlg));
      if (i <= 0)
        break;
      paramlg = lg.f(paramlg);
    }
    if (i == 0)
    {
      switch (lc.a[this.c.g().ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        return paramld.a(paramlg) + paramld.b(lg.f(paramlg));
      case 2:
      }
      return paramld.b(lg.f(paramlg));
    }
    return paramld.b(lg.f(paramlg)) + paramld.a(paramlg) + b(paramld, lg.e(paramlg));
  }

  private static <T> void b(lg<T> paramlg1, lg<T> paramlg2)
  {
    lg.a(paramlg1, paramlg2);
    lg.b(paramlg2, paramlg1);
  }

  private static <T> void b(lg<T> paramlg1, lg<T> paramlg2, lg<T> paramlg3)
  {
    b(paramlg1, paramlg2);
    b(paramlg2, paramlg3);
  }

  public final int a(Object paramObject)
  {
    try
    {
      lg locallg = (lg)this.b.a();
      if ((this.c.c(paramObject)) && (locallg != null))
      {
        int i = locallg.a(comparator(), paramObject);
        return i;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      return 0;
    }
    catch (NullPointerException localNullPointerException)
    {
      return 0;
    }
    return 0;
  }

  public final int a(E paramE, int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      com.google.a.a.an.a(bool, "occurrences must be >= 0 but was %s", arrayOfObject);
      if (paramInt != 0)
        break;
      return a(paramE);
    }
    com.google.a.a.an.a(this.c.c(paramE));
    lg locallg1 = (lg)this.b.a();
    if (locallg1 == null)
    {
      comparator().compare(paramE, paramE);
      lg locallg3 = new lg(paramE, paramInt);
      b(this.d, locallg3, this.d);
      this.b.a(locallg1, locallg3);
      return 0;
    }
    int[] arrayOfInt = new int[1];
    lg locallg2 = locallg1.a(comparator(), paramE, paramInt, arrayOfInt);
    this.b.a(locallg1, locallg2);
    return arrayOfInt[0];
  }

  public final ka<E> a(E paramE, an paraman)
  {
    return new ky(this.b, this.c.a(bt.b(comparator(), paramE, paraman)), this.d);
  }

  public final boolean a(E paramE, int paramInt1, int paramInt2)
  {
    boolean bool1;
    boolean bool2;
    label19: lg locallg1;
    if (paramInt2 >= 0)
    {
      bool1 = true;
      com.google.a.a.an.a(bool1);
      if (paramInt1 < 0)
        break label75;
      bool2 = true;
      com.google.a.a.an.a(bool2);
      com.google.a.a.an.a(this.c.c(paramE));
      locallg1 = (lg)this.b.a();
      if (locallg1 != null)
        break label83;
      if (paramInt1 != 0)
        break label81;
      if (paramInt2 > 0)
        a(paramE, paramInt2);
    }
    label75: label81: label83: int[] arrayOfInt;
    do
    {
      return true;
      bool1 = false;
      break;
      bool2 = false;
      break label19;
      return false;
      arrayOfInt = new int[1];
      lg locallg2 = locallg1.a(comparator(), paramE, paramInt1, paramInt2, arrayOfInt);
      this.b.a(locallg1, locallg2);
    }
    while (arrayOfInt[0] == paramInt1);
    return false;
  }

  public final int b(Object paramObject, int paramInt)
  {
    boolean bool1;
    int i;
    if (paramInt >= 0)
    {
      bool1 = true;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      com.google.a.a.an.a(bool1, "occurrences must be >= 0 but was %s", arrayOfObject);
      if (paramInt != 0)
        break label47;
      i = a(paramObject);
    }
    while (true)
    {
      return i;
      bool1 = false;
      break;
      label47: lg locallg1 = (lg)this.b.a();
      int[] arrayOfInt = new int[1];
      try
      {
        boolean bool2 = this.c.c(paramObject);
        i = 0;
        if (bool2)
        {
          i = 0;
          if (locallg1 != null)
          {
            lg locallg2 = locallg1.b(comparator(), paramObject, paramInt, arrayOfInt);
            this.b.a(locallg1, locallg2);
            return arrayOfInt[0];
          }
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        return 0;
      }
      catch (ClassCastException localClassCastException)
      {
      }
    }
    return 0;
  }

  public final ka<E> b(E paramE, an paraman)
  {
    return new ky(this.b, this.c.a(bt.a(comparator(), paramE, paraman)), this.d);
  }

  final Iterator<hu<E>> b()
  {
    return new la(this);
  }

  final int c()
  {
    return a.a(a(ld.b));
  }

  public final int c(E paramE, int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramInt >= 0)
    {
      bool2 = bool1;
      com.google.a.a.an.a(bool2);
      if (this.c.c(paramE))
        break label46;
      if (paramInt != 0)
        break label41;
      label29: com.google.a.a.an.a(bool1);
    }
    label41: label46: lg locallg1;
    do
    {
      return 0;
      bool2 = false;
      break;
      bool1 = false;
      break label29;
      locallg1 = (lg)this.b.a();
      if (locallg1 != null)
        break label76;
    }
    while (paramInt <= 0);
    a(paramE, paramInt);
    return 0;
    label76: int[] arrayOfInt = new int[bool1];
    lg locallg2 = locallg1.c(comparator(), paramE, paramInt, arrayOfInt);
    this.b.a(locallg1, locallg2);
    return arrayOfInt[0];
  }

  final Iterator<hu<E>> k()
  {
    return new lb(this);
  }

  public final int size()
  {
    return a.a(a(ld.a));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ky
 * JD-Core Version:    0.6.2
 */