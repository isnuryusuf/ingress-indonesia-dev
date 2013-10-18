package a.a.a.a.b;

import a.a.a.a.c.j;
import a.a.a.a.c.q;
import java.io.Serializable;
import java.util.Comparator;
import java.util.NoSuchElementException;

public final class ap<V> extends n<V>
  implements Serializable, Cloneable
{
  protected transient at<V> b;
  protected int c;
  protected transient at<V> d;
  protected transient at<V> e;
  protected volatile transient q<bj<V>> f;
  protected volatile transient cm g;
  protected volatile transient j<V> h;
  protected transient boolean i;
  protected Comparator<? super Long> j;
  protected transient cc k;
  private transient boolean[] l;

  public ap()
  {
    m();
    this.b = null;
    this.c = 0;
  }

  private void m()
  {
    this.l = new boolean[48];
  }

  private ap<V> n()
  {
    ap localap;
    while (true)
    {
      at localat2;
      try
      {
        localap = (ap)super.clone();
        localap.g = null;
        localap.h = null;
        localap.f = null;
        localap.m();
        if (this.c == 0)
          break;
        at localat1 = new at();
        localat2 = new at();
        localat1.c(this.b);
        localat2.a(null);
        localat3 = localat1;
        localat4 = localat2;
        if (!localat3.d())
        {
          at localat6 = localat3.c.l();
          localat6.a(localat4.c);
          localat6.b(localat4);
          localat4.c(localat6);
          localat3 = localat3.c;
          localat4 = localat4.c;
          if (localat3.e())
            continue;
          at localat5 = localat3.d.l();
          localat5.b(localat4.d);
          localat5.a(localat4);
          localat4.d(localat5);
          continue;
        }
      }
      catch (CloneNotSupportedException localCloneNotSupportedException)
      {
        throw new InternalError();
      }
      do
      {
        localat4 = localat4.d;
        if (!localat3.e())
          break;
        localat3 = localat3.d;
      }
      while (localat3 != null);
      localat4.d = null;
      localap.b = localat2.c;
      for (localap.d = localap.b; localap.d.c != null; localap.d = localap.d.c);
      for (localap.e = localap.b; localap.e.d != null; localap.e = localap.e.d);
      at localat3 = localat3.d;
      at localat4 = localat4.d;
    }
    return localap;
  }

  final int a(long paramLong1, long paramLong2)
  {
    if (this.k == null)
    {
      if (paramLong1 < paramLong2)
        return -1;
      if (paramLong1 == paramLong2)
        return 0;
      return 1;
    }
    return this.k.a();
  }

  public final V a(long paramLong)
  {
    this.i = false;
    if (this.b == null)
      return this.b_;
    Object localObject1 = this.b;
    int m = 0;
    label179: label202: label638: Object localObject7;
    for (Object localObject2 = null; ; localObject2 = localObject7)
    {
      int n = a(paramLong, ((at)localObject1).a);
      at localat10;
      label1034: if (n != 0)
      {
        if (n > 0);
        for (m = 1; m != 0; m = 0)
        {
          localat10 = ((at)localObject1).c();
          if (localat10 != null)
            break label1568;
          return this.b_;
        }
        localat10 = ((at)localObject1).b();
        if (localat10 == null)
          return this.b_;
      }
      else
      {
        if (((at)localObject1).c == null)
          this.d = ((at)localObject1).i();
        if (((at)localObject1).d == null)
          this.e = ((at)localObject1).j();
        int i1;
        Object localObject6;
        if (((at)localObject1).e())
          if (((at)localObject1).d())
            if (localObject2 != null)
              if (m != 0)
              {
                localObject2.b(((at)localObject1).d);
                i1 = m;
                if (localObject2 == null)
                  break label1034;
                if (localObject2 != this.b)
                  break label752;
                localObject6 = null;
              }
        int i2;
        at localat6;
        at localat7;
        label303: label733: label743: label752: Object localObject4;
        Object localObject5;
        label760: at localat2;
        while (true)
          if (i1 == 0)
            if ((localObject6 != null) && (localObject6.c != localObject2))
            {
              i2 = 1;
              localObject2.g();
              if (localObject2.f() == 1)
                break label1034;
              if (localObject2.f() != 2)
                break label1550;
              localat6 = localObject2.d;
              if (localat6.f() != -1)
                break label980;
              localat7 = localat6.c;
              localat6.c = localat7.d;
              localat7.d = localat6;
              localObject2.d = localat7.c;
              localat7.c = localObject2;
              if (localat7.f() != 1)
                break label907;
              localat6.a(0);
              localObject2.a(-1);
              localat7.a(0);
              if (localat7.d())
              {
                localObject2.b(localat7);
                localat7.a(false);
              }
              if (localat7.e())
              {
                localat6.a(localat7);
                localat7.b(false);
              }
              if (localObject6 == null)
                break label963;
              if (i2 == 0)
                break label945;
              localObject6.d = localat7;
              i1 = i2;
              localObject2 = localObject6;
              break;
              localObject2.a(((at)localObject1).c);
              i1 = m;
              break;
              if (m != 0);
              for (at localat9 = ((at)localObject1).d; ; localat9 = ((at)localObject1).c)
              {
                this.b = localat9;
                i1 = m;
                break;
              }
              ((at)localObject1).j().d = ((at)localObject1).d;
              if (localObject2 != null)
              {
                if (m != 0)
                {
                  localObject2.d = ((at)localObject1).c;
                  i1 = m;
                  break;
                }
                localObject2.c = ((at)localObject1).c;
                i1 = m;
                break;
              }
              this.b = ((at)localObject1).c;
              i1 = m;
              break;
              Object localObject3 = ((at)localObject1).d;
              if (((at)localObject3).d())
              {
                ((at)localObject3).c = ((at)localObject1).c;
                ((at)localObject3).a(((at)localObject1).d());
                if (!((at)localObject3).d())
                  ((at)localObject3).j().d = ((at)localObject3);
                if (localObject2 != null)
                  if (m != 0)
                    localObject2.d = ((at)localObject3);
                while (true)
                {
                  ((at)localObject3).a(((at)localObject1).f());
                  i1 = 1;
                  localObject2 = localObject3;
                  break;
                  localObject2.c = ((at)localObject3);
                  continue;
                  this.b = ((at)localObject3);
                }
              }
              at localat1;
              while (true)
              {
                localat1 = ((at)localObject3).c;
                if (localat1.d())
                  break;
                localObject3 = localat1;
              }
              if (localat1.e())
              {
                ((at)localObject3).a(localat1);
                localat1.c = ((at)localObject1).c;
                if (!((at)localObject1).d())
                {
                  ((at)localObject1).j().d = localat1;
                  localat1.a(false);
                }
                localat1.d = ((at)localObject1).d;
                localat1.b(false);
                if (localObject2 == null)
                  break label743;
                if (m == 0)
                  break label733;
                localObject2.d = localat1;
              }
              while (true)
              {
                localat1.a(((at)localObject1).f());
                localObject2 = localObject3;
                i1 = 0;
                break;
                ((at)localObject3).c = localat1.d;
                break label638;
                localObject2.c = localat1;
                continue;
                this.b = localat1;
              }
              localObject4 = localObject2;
              localObject5 = localObject2;
              if (((at)localObject4).e())
              {
                at localat8 = ((at)localObject4).d;
                if ((localat8 == null) || (localat8.c != localObject2))
                {
                  while (!((at)localObject5).d())
                    localObject5 = ((at)localObject5).c;
                  localat8 = ((at)localObject5).c;
                }
                localObject6 = localat8;
                continue;
              }
              if (((at)localObject5).d())
              {
                localat2 = ((at)localObject5).c;
                if ((localat2 != null) && (localat2.d == localObject2))
                  break label1561;
                while (!((at)localObject4).e())
                  localObject4 = ((at)localObject4).d;
              }
            }
        label907: label1550: label1561: for (at localat3 = ((at)localObject4).d; ; localat3 = localat2)
        {
          localObject6 = localat3;
          break label179;
          localObject5 = ((at)localObject5).c;
          localObject4 = ((at)localObject4).d;
          break label760;
          i2 = 0;
          break label202;
          if (localat7.f() == 0)
          {
            localat6.a(0);
            localObject2.a(0);
            break label303;
          }
          localat6.a(1);
          localObject2.a(0);
          break label303;
          label945: localObject6.c = localat7;
          i1 = i2;
          localObject2 = localObject6;
          break;
          label963: this.b = localat7;
          i1 = i2;
          localObject2 = localObject6;
          break;
          label980: if (localObject6 != null)
            if (i2 != 0)
            {
              localObject6.d = localat6;
              label997: if (localat6.f() != 0)
                break label1073;
              localObject2.d = localat6.c;
              localat6.c = localObject2;
              localat6.a(-1);
              localObject2.a(1);
            }
          label1073: 
          do
          {
            this.i = true;
            this.c = (-1 + this.c);
            return ((at)localObject1).b;
            localObject6.c = localat6;
            break label997;
            this.b = localat6;
            break label997;
            if (localat6.d())
            {
              localObject2.b(true);
              localat6.a(false);
            }
            while (true)
            {
              localat6.c = localObject2;
              localObject2.a(0);
              localat6.a(0);
              i1 = i2;
              localObject2 = localObject6;
              break;
              localObject2.d = localat6.c;
            }
            if ((localObject6 == null) || (localObject6.c == localObject2))
              break label1332;
            i2 = 1;
            localObject2.h();
          }
          while (localObject2.f() == -1);
          if (localObject2.f() == -2)
          {
            at localat4 = localObject2.c;
            if (localat4.f() == 1)
            {
              at localat5 = localat4.d;
              localat4.d = localat5.c;
              localat5.c = localat4;
              localObject2.c = localat5.d;
              localat5.d = localObject2;
              if (localat5.f() == -1)
              {
                localat4.a(0);
                localObject2.a(1);
              }
              while (true)
              {
                localat5.a(0);
                if (localat5.d())
                {
                  localat4.b(localat5);
                  localat5.a(false);
                }
                if (localat5.e())
                {
                  localObject2.a(localat5);
                  localat5.b(false);
                }
                if (localObject6 == null)
                  break label1394;
                if (i2 == 0)
                  break label1376;
                localObject6.d = localat5;
                i1 = i2;
                localObject2 = localObject6;
                break;
                label1332: i2 = 0;
                break label1154;
                if (localat5.f() == 0)
                {
                  localat4.a(0);
                  localObject2.a(0);
                }
                else
                {
                  localat4.a(-1);
                  localObject2.a(0);
                }
              }
              label1376: localObject6.c = localat5;
              i1 = i2;
              localObject2 = localObject6;
              break;
              label1394: this.b = localat5;
              i1 = i2;
              localObject2 = localObject6;
              break;
            }
            if (localObject6 != null)
              if (i2 != 0)
                localObject6.d = localat4;
            while (true)
            {
              if (localat4.f() != 0)
                break label1487;
              localObject2.c = localat4.d;
              localat4.d = localObject2;
              localat4.a(1);
              localObject2.a(-1);
              break;
              localObject6.c = localat4;
              continue;
              this.b = localat4;
            }
            label1487: if (localat4.e())
            {
              localObject2.a(true);
              localat4.b(false);
            }
            while (true)
            {
              localat4.d = localObject2;
              localObject2.a(0);
              localat4.a(0);
              i1 = i2;
              localObject2 = localObject6;
              break;
              localObject2.c = localat4.d;
            }
          }
          i1 = i2;
          localObject2 = localObject6;
          break;
        }
      }
      label1154: label1568: localObject7 = localObject1;
      localObject1 = localat10;
    }
  }

  public final V a(long paramLong, V paramV)
  {
    Object localObject1 = null;
    this.i = false;
    if (this.b == null)
    {
      this.c = (1 + this.c);
      at localat8 = new at(paramLong, paramV);
      this.d = localat8;
      this.e = localat8;
      this.b = localat8;
      this.i = true;
      return this.b_;
    }
    Object localObject2 = this.b;
    at localat1 = this.b;
    int m = 0;
    Object localObject3 = localat1;
    Object localObject4 = null;
    int n = a(paramLong, ((at)localObject2).a);
    if (n == 0)
    {
      Object localObject8 = ((at)localObject2).b;
      ((at)localObject2).b = paramV;
      return localObject8;
    }
    if (((at)localObject2).f() != 0)
      m = 0;
    for (Object localObject5 = localObject2; ; localObject5 = localObject3)
    {
      boolean[] arrayOfBoolean1 = this.l;
      int i1 = m + 1;
      int i2;
      label154: at localat3;
      label238: int i3;
      Object localObject6;
      label245: int i4;
      if (n > 0)
      {
        i2 = 1;
        arrayOfBoolean1[m] = i2;
        if (i2 == 0)
          break label341;
        if (!((at)localObject2).e())
          break label311;
        this.c = (1 + this.c);
        localat3 = new at(paramLong, paramV);
        this.i = true;
        if (((at)localObject2).d == null)
          this.e = localat3;
        localat3.c = ((at)localObject2);
        localat3.d = ((at)localObject2).d;
        ((at)localObject2).d(localat3);
        i3 = 0;
        localObject6 = localObject5;
        if (localObject6 == localat3)
          break label464;
        if (this.l[i3] == 0)
          break label446;
        localObject6.g();
        label267: boolean[] arrayOfBoolean2 = this.l;
        i4 = i3 + 1;
        if (arrayOfBoolean2[i3] == 0)
          break label454;
      }
      label311: label446: label454: for (at localat6 = localObject6.d; ; localat6 = localObject6.c)
      {
        localObject6 = localat6;
        i3 = i4;
        break label245;
        i2 = 0;
        break label154;
        at localat7 = ((at)localObject2).d;
        localObject3 = localObject5;
        localObject4 = localObject1;
        localObject1 = localObject2;
        localObject2 = localat7;
        m = i1;
        break;
        label341: if (((at)localObject2).d())
        {
          this.c = (1 + this.c);
          localat3 = new at(paramLong, paramV);
          this.i = true;
          if (((at)localObject2).c == null)
            this.d = localat3;
          localat3.d = ((at)localObject2);
          localat3.c = ((at)localObject2).c;
          ((at)localObject2).c(localat3);
          break label238;
        }
        at localat2 = ((at)localObject2).c;
        localObject3 = localObject5;
        localObject4 = localObject1;
        localObject1 = localObject2;
        localObject2 = localat2;
        m = i1;
        break;
        localObject6.h();
        break label267;
      }
      label464: Object localObject7;
      if (localObject5.f() == -2)
      {
        localObject7 = localObject5.c;
        if (((at)localObject7).f() == -1)
        {
          if (((at)localObject7).e())
          {
            ((at)localObject7).b(false);
            localObject5.a((at)localObject7);
          }
          while (true)
          {
            ((at)localObject7).d = localObject5;
            ((at)localObject7).a(0);
            localObject5.a(0);
            if (localObject1 != null)
              break label953;
            this.b = ((at)localObject7);
            break;
            localObject5.c = ((at)localObject7).d;
          }
        }
        at localat5 = ((at)localObject7).d;
        ((at)localObject7).d = localat5.c;
        localat5.c = ((at)localObject7);
        localObject5.c = localat5.d;
        localat5.d = localObject5;
        if (localat5.f() == -1)
        {
          ((at)localObject7).a(0);
          localObject5.a(1);
        }
        while (true)
        {
          localat5.a(0);
          if (localat5.d())
          {
            ((at)localObject7).b(localat5);
            localat5.a(false);
          }
          if (localat5.e())
          {
            localObject5.a(localat5);
            localat5.b(false);
          }
          localObject7 = localat5;
          break;
          if (localat5.f() == 0)
          {
            ((at)localObject7).a(0);
            localObject5.a(0);
          }
          else
          {
            ((at)localObject7).a(-1);
            localObject5.a(0);
          }
        }
      }
      if (localObject5.f() == 2)
      {
        localObject7 = localObject5.d;
        if (((at)localObject7).f() == 1)
        {
          if (((at)localObject7).d())
          {
            ((at)localObject7).a(false);
            localObject5.b((at)localObject7);
          }
          while (true)
          {
            ((at)localObject7).c = localObject5;
            ((at)localObject7).a(0);
            localObject5.a(0);
            break;
            localObject5.d = ((at)localObject7).c;
          }
        }
        at localat4 = ((at)localObject7).c;
        ((at)localObject7).c = localat4.d;
        localat4.d = ((at)localObject7);
        localObject5.d = localat4.c;
        localat4.c = localObject5;
        if (localat4.f() == 1)
        {
          ((at)localObject7).a(0);
          localObject5.a(-1);
        }
        while (true)
        {
          localat4.a(0);
          if (localat4.d())
          {
            localObject5.b(localat4);
            localat4.a(false);
          }
          if (localat4.e())
          {
            ((at)localObject7).a(localat4);
            localat4.b(false);
          }
          localObject7 = localat4;
          break;
          if (localat4.f() == 0)
          {
            ((at)localObject7).a(0);
            localObject5.a(0);
          }
          else
          {
            ((at)localObject7).a(1);
            localObject5.a(0);
          }
        }
      }
      return this.b_;
      label953: if (localObject1.c == localObject5)
      {
        localObject1.c = ((at)localObject7);
        break;
      }
      localObject1.d = ((at)localObject7);
      break;
      localObject1 = localObject4;
    }
  }

  public final V a(Long paramLong, V paramV)
  {
    Object localObject = a(paramLong.longValue(), paramV);
    if (this.i)
      localObject = this.b_;
    return localObject;
  }

  public final bv<V> b(long paramLong1, long paramLong2)
  {
    return new ax(this, paramLong1, false, paramLong2, false);
  }

  public final j<V> b()
  {
    if (this.h == null)
      this.h = new as(this);
    return this.h;
  }

  public final boolean b(long paramLong)
  {
    return c(paramLong) != null;
  }

  final at<V> c(long paramLong)
  {
    at localat = this.b;
    while (localat != null)
    {
      int m = a(paramLong, localat.a);
      if (m == 0)
        break;
      if (m < 0)
        localat = localat.b();
      else
        localat = localat.c();
    }
    return localat;
  }

  public final void clear()
  {
    this.c = 0;
    this.b = null;
    this.f = null;
    this.h = null;
    this.g = null;
    this.e = null;
    this.d = null;
  }

  public final boolean containsValue(Object paramObject)
  {
    bg localbg = new bg(this, (byte)0);
    int n;
    for (int m = this.c; ; m = n)
    {
      n = m - 1;
      boolean bool = false;
      Object localObject;
      if (m != 0)
      {
        localObject = localbg.next();
        if (localObject != null)
          break label48;
        if (paramObject != null)
          continue;
      }
      label48: 
      while (localObject.equals(paramObject))
      {
        bool = true;
        return bool;
      }
    }
  }

  final at<V> d(long paramLong)
  {
    Object localObject1 = this.b;
    Object localObject2 = this.b;
    int m = 0;
    if (localObject1 != null)
    {
      m = a(paramLong, ((at)localObject1).a);
      if (m != 0)
      {
        if (m < 0);
        for (at localat = ((at)localObject1).b(); ; localat = ((at)localObject1).c())
        {
          Object localObject3 = localObject1;
          localObject1 = localat;
          localObject2 = localObject3;
          break;
        }
      }
    }
    if (m == 0)
      localObject2 = localObject1;
    return localObject2;
  }

  public final V e(long paramLong)
  {
    at localat = c(paramLong);
    if (localat == null)
      return this.b_;
    return localat.b;
  }

  public final bv<V> f(long paramLong)
  {
    return new ax(this, 0L, true, paramLong, false);
  }

  public final cm f()
  {
    if (this.g == null)
      this.g = new aw(this, (byte)0);
    return this.g;
  }

  public final bv<V> g(long paramLong)
  {
    return new ax(this, paramLong, false, 0L, true);
  }

  public final long h()
  {
    if (this.b == null)
      throw new NoSuchElementException();
    return this.d.a;
  }

  public final long i()
  {
    if (this.b == null)
      throw new NoSuchElementException();
    return this.e.a;
  }

  public final boolean isEmpty()
  {
    return this.c == 0;
  }

  public final q<bj<V>> j()
  {
    if (this.f == null)
      this.f = new aq(this);
    return this.f;
  }

  public final cc k()
  {
    return this.k;
  }

  public final V remove(Object paramObject)
  {
    Object localObject = a(((Long)paramObject).longValue());
    if (this.i)
      return localObject;
    return this.b_;
  }

  public final int size()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.ap
 * JD-Core Version:    0.6.2
 */