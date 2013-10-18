package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;
import java.util.Comparator;

final class lg<E> extends hx<E>
{
  private final E a;
  private int b;
  private int c;
  private long d;
  private int e;
  private lg<E> f;
  private lg<E> g;
  private lg<E> h;
  private lg<E> i;

  lg(E paramE, int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a = paramE;
      this.b = paramInt;
      this.d = paramInt;
      this.c = 1;
      this.e = 1;
      this.f = null;
      this.g = null;
      return;
    }
  }

  private lg<E> a(E paramE, int paramInt)
  {
    this.g = new lg(paramE, paramInt);
    ky.a(this, this.g, this.i);
    this.e = Math.max(2, this.e);
    this.c = (1 + this.c);
    this.d += paramInt;
    return this;
  }

  private lg<E> b(E paramE, int paramInt)
  {
    this.f = new lg(paramE, paramInt);
    ky.a(this.h, this.f, this);
    this.e = Math.max(2, this.e);
    this.c = (1 + this.c);
    this.d += paramInt;
    return this;
  }

  private lg<E> b(Comparator<? super E> paramComparator, E paramE)
  {
    while (true)
    {
      int j = paramComparator.compare(paramE, this.a);
      if (j < 0)
        if (this.f != null);
      while (j == 0)
      {
        return this;
        return (lg)ag.b(this.f.b(paramComparator, paramE), this);
      }
      if (this.g == null)
        return null;
      this = this.g;
    }
  }

  private lg<E> c()
  {
    int j = this.b;
    this.b = 0;
    ky.a(this.h, this.i);
    if (this.f == null)
      return this.g;
    if (this.g == null)
      return this.f;
    if (this.f.e >= this.g.e)
    {
      lg locallg2 = this.h;
      locallg2.f = this.f.j(locallg2);
      locallg2.g = this.g;
      locallg2.c = (-1 + this.c);
      this.d -= j;
      return locallg2.f();
    }
    lg locallg1 = this.i;
    locallg1.g = this.g.i(locallg1);
    locallg1.f = this.f;
    locallg1.c = (-1 + this.c);
    this.d -= j;
    return locallg1.f();
  }

  private lg<E> c(Comparator<? super E> paramComparator, E paramE)
  {
    while (true)
    {
      int j = paramComparator.compare(paramE, this.a);
      if (j > 0)
        if (this.g != null);
      while (j == 0)
      {
        return this;
        return (lg)ag.b(this.g.c(paramComparator, paramE), this);
      }
      if (this.f == null)
        return null;
      this = this.f;
    }
  }

  private void d()
  {
    this.e = (1 + Math.max(l(this.f), l(this.g)));
  }

  private void e()
  {
    this.c = (1 + ky.a(this.f) + ky.a(this.g));
    this.d = (this.b + k(this.f) + k(this.g));
    d();
  }

  private lg<E> f()
  {
    switch (g())
    {
    default:
      d();
      return this;
    case -2:
      if (this.g.g() > 0)
        this.g = this.g.i();
      return h();
    case 2:
    }
    if (this.f.g() < 0)
      this.f = this.f.h();
    return i();
  }

  private int g()
  {
    return l(this.f) - l(this.g);
  }

  private lg<E> h()
  {
    if (this.g != null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      lg locallg = this.g;
      this.g = locallg.f;
      locallg.f = this;
      locallg.d = this.d;
      locallg.c = this.c;
      e();
      locallg.d();
      return locallg;
    }
  }

  private lg<E> i()
  {
    if (this.f != null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      lg locallg = this.f;
      this.f = locallg.g;
      locallg.g = this;
      locallg.d = this.d;
      locallg.c = this.c;
      e();
      locallg.d();
      return locallg;
    }
  }

  private lg<E> i(lg<E> paramlg)
  {
    if (this.f == null)
      return this.g;
    this.f = this.f.i(paramlg);
    this.c = (-1 + this.c);
    this.d -= paramlg.b;
    return f();
  }

  private lg<E> j(lg<E> paramlg)
  {
    if (this.g == null)
      return this.f;
    this.g = this.g.j(paramlg);
    this.c = (-1 + this.c);
    this.d -= paramlg.b;
    return f();
  }

  private static long k(lg<?> paramlg)
  {
    if (paramlg == null)
      return 0L;
    return paramlg.d;
  }

  private static int l(lg<?> paramlg)
  {
    if (paramlg == null)
      return 0;
    return paramlg.e;
  }

  public final int a(Comparator<? super E> paramComparator, E paramE)
  {
    while (true)
    {
      int j = paramComparator.compare(paramE, this.a);
      if (j < 0)
        if (this.f != null);
      do
      {
        return 0;
        this = this.f;
        break;
        if (j <= 0)
          break label52;
      }
      while (this.g == null);
      this = this.g;
    }
    label52: return this.b;
  }

  final lg<E> a(Comparator<? super E> paramComparator, E paramE, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int j = paramComparator.compare(paramE, this.a);
    lg locallg2;
    if (j < 0)
    {
      locallg2 = this.f;
      if (locallg2 == null)
      {
        paramArrayOfInt[0] = 0;
        if ((paramInt1 == 0) && (paramInt2 > 0))
          this = b(paramE, paramInt2);
      }
    }
    label121: label252: 
    do
    {
      lg locallg1;
      do
      {
        return this;
        this.f = locallg2.a(paramComparator, paramE, paramInt1, paramInt2, paramArrayOfInt);
        if (paramArrayOfInt[0] == paramInt1)
          if ((paramInt2 != 0) || (paramArrayOfInt[0] == 0))
            break label121;
        for (this.c = (-1 + this.c); ; this.c = (1 + this.c))
          do
          {
            this.d += paramInt2 - paramArrayOfInt[0];
            return f();
          }
          while ((paramInt2 <= 0) || (paramArrayOfInt[0] != 0));
        if (j <= 0)
          break label277;
        locallg1 = this.g;
        if (locallg1 != null)
          break;
        paramArrayOfInt[0] = 0;
      }
      while ((paramInt1 != 0) || (paramInt2 <= 0));
      return a(paramE, paramInt2);
      this.g = locallg1.a(paramComparator, paramE, paramInt1, paramInt2, paramArrayOfInt);
      if (paramArrayOfInt[0] == paramInt1)
        if ((paramInt2 != 0) || (paramArrayOfInt[0] == 0))
          break label252;
      for (this.c = (-1 + this.c); ; this.c = (1 + this.c))
        do
        {
          this.d += paramInt2 - paramArrayOfInt[0];
          return f();
        }
        while ((paramInt2 <= 0) || (paramArrayOfInt[0] != 0));
      paramArrayOfInt[0] = this.b;
    }
    while (paramInt1 != this.b);
    label277: if (paramInt2 == 0)
      return c();
    this.d += paramInt2 - this.b;
    this.b = paramInt2;
    return this;
  }

  final lg<E> a(Comparator<? super E> paramComparator, E paramE, int paramInt, int[] paramArrayOfInt)
  {
    int j = paramComparator.compare(paramE, this.a);
    lg locallg2;
    if (j < 0)
    {
      locallg2 = this.f;
      if (locallg2 == null)
      {
        paramArrayOfInt[0] = 0;
        this = b(paramE, paramInt);
      }
    }
    int k;
    do
    {
      int m;
      do
      {
        return this;
        m = locallg2.e;
        this.f = locallg2.a(paramComparator, paramE, paramInt, paramArrayOfInt);
        if (paramArrayOfInt[0] == 0)
          this.c = (1 + this.c);
        this.d += paramInt;
      }
      while (this.f.e == m);
      return f();
      if (j <= 0)
        break;
      lg locallg1 = this.g;
      if (locallg1 == null)
      {
        paramArrayOfInt[0] = 0;
        return a(paramE, paramInt);
      }
      k = locallg1.e;
      this.g = locallg1.a(paramComparator, paramE, paramInt, paramArrayOfInt);
      if (paramArrayOfInt[0] == 0)
        this.c = (1 + this.c);
      this.d += paramInt;
    }
    while (this.g.e == k);
    return f();
    paramArrayOfInt[0] = this.b;
    boolean bool1 = this.b + paramInt < 2147483647L;
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    an.a(bool2);
    this.b = (paramInt + this.b);
    this.d += paramInt;
    return this;
  }

  public final E a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.b;
  }

  final lg<E> b(Comparator<? super E> paramComparator, E paramE, int paramInt, int[] paramArrayOfInt)
  {
    int j = paramComparator.compare(paramE, this.a);
    if (j < 0)
    {
      lg locallg2 = this.f;
      if (locallg2 == null)
        paramArrayOfInt[0] = 0;
      while (true)
      {
        return this;
        this.f = locallg2.b(paramComparator, paramE, paramInt, paramArrayOfInt);
        if (paramArrayOfInt[0] > 0)
        {
          if (paramInt < paramArrayOfInt[0])
            break label101;
          this.c = (-1 + this.c);
        }
        label101: for (this.d -= paramArrayOfInt[0]; paramArrayOfInt[0] != 0; this.d -= paramInt)
          return f();
      }
    }
    if (j > 0)
    {
      lg locallg1 = this.g;
      if (locallg1 == null)
      {
        paramArrayOfInt[0] = 0;
        return this;
      }
      this.g = locallg1.b(paramComparator, paramE, paramInt, paramArrayOfInt);
      if (paramArrayOfInt[0] > 0)
      {
        if (paramInt < paramArrayOfInt[0])
          break label196;
        this.c = (-1 + this.c);
      }
      label196: for (this.d -= paramArrayOfInt[0]; ; this.d -= paramInt)
        return f();
    }
    paramArrayOfInt[0] = this.b;
    if (paramInt >= this.b)
      return c();
    this.b -= paramInt;
    this.d -= paramInt;
    return this;
  }

  final lg<E> c(Comparator<? super E> paramComparator, E paramE, int paramInt, int[] paramArrayOfInt)
  {
    int j = paramComparator.compare(paramE, this.a);
    lg locallg2;
    if (j < 0)
    {
      locallg2 = this.f;
      if (locallg2 == null)
      {
        paramArrayOfInt[0] = 0;
        if (paramInt > 0)
          this = b(paramE, paramInt);
      }
    }
    lg locallg1;
    do
    {
      return this;
      this.f = locallg2.c(paramComparator, paramE, paramInt, paramArrayOfInt);
      if ((paramInt == 0) && (paramArrayOfInt[0] != 0));
      for (this.c = (-1 + this.c); ; this.c = (1 + this.c))
        do
        {
          this.d += paramInt - paramArrayOfInt[0];
          return f();
        }
        while ((paramInt <= 0) || (paramArrayOfInt[0] != 0));
      if (j <= 0)
        break label239;
      locallg1 = this.g;
      if (locallg1 != null)
        break;
      paramArrayOfInt[0] = 0;
    }
    while (paramInt <= 0);
    return a(paramE, paramInt);
    this.g = locallg1.c(paramComparator, paramE, paramInt, paramArrayOfInt);
    if ((paramInt == 0) && (paramArrayOfInt[0] != 0));
    for (this.c = (-1 + this.c); ; this.c = (1 + this.c))
      do
      {
        this.d += paramInt - paramArrayOfInt[0];
        return f();
      }
      while ((paramInt <= 0) || (paramArrayOfInt[0] != 0));
    label239: paramArrayOfInt[0] = this.b;
    if (paramInt == 0)
      return c();
    this.d += paramInt - this.b;
    this.b = paramInt;
    return this;
  }

  public final String toString()
  {
    return hv.a(this.a, this.b).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.lg
 * JD-Core Version:    0.6.2
 */