package com.google.a.c;

import com.google.a.a.bw;
import com.google.a.a.x;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

final class gi<K, V> extends ReentrantLock
{
  final fi<K, V> a;
  volatile int b;
  int c;
  int d;
  volatile AtomicReferenceArray<gh<K, V>> e;
  final int f;
  final ReferenceQueue<K> g;
  final ReferenceQueue<V> h;
  final Queue<gh<K, V>> i;
  final AtomicInteger j = new AtomicInteger();
  final Queue<gh<K, V>> k;
  final Queue<gh<K, V>> l;

  gi(fi<K, V> paramfi, int paramInt1, int paramInt2)
  {
    this.a = paramfi;
    this.f = paramInt2;
    AtomicReferenceArray localAtomicReferenceArray = a(paramInt1);
    this.d = (3 * localAtomicReferenceArray.length() / 4);
    if (this.d == this.f)
      this.d = (1 + this.d);
    this.e = localAtomicReferenceArray;
    ReferenceQueue localReferenceQueue1;
    Object localObject1;
    label145: Object localObject2;
    if (paramfi.d())
    {
      localReferenceQueue1 = new ReferenceQueue();
      this.g = localReferenceQueue1;
      boolean bool = paramfi.e();
      ReferenceQueue localReferenceQueue2 = null;
      if (bool)
        localReferenceQueue2 = new ReferenceQueue();
      this.h = localReferenceQueue2;
      if ((!paramfi.a()) && (!paramfi.c()))
        break label202;
      localObject1 = new ConcurrentLinkedQueue();
      this.i = ((Queue)localObject1);
      if (!paramfi.a())
        break label210;
      localObject2 = new fx();
      label167: this.k = ((Queue)localObject2);
      if (!paramfi.b())
        break label218;
    }
    label202: label210: label218: for (Object localObject3 = new ga(); ; localObject3 = fi.h())
    {
      this.l = ((Queue)localObject3);
      return;
      localReferenceQueue1 = null;
      break;
      localObject1 = fi.h();
      break label145;
      localObject2 = fi.h();
      break label167;
    }
  }

  private gh<K, V> a(gh<K, V> paramgh1, gh<K, V> paramgh2)
  {
    if (paramgh1.d() == null);
    gu localgu;
    Object localObject;
    do
    {
      return null;
      localgu = paramgh1.a();
      localObject = localgu.get();
    }
    while (localObject == null);
    gh localgh = this.a.n.a(this, paramgh1, paramgh2);
    localgh.a(localgu.a(this.h, localObject, localgh));
    return localgh;
  }

  private static AtomicReferenceArray<gh<K, V>> a(int paramInt)
  {
    return new AtomicReferenceArray(paramInt);
  }

  private void a(gh<K, V> paramgh, long paramLong)
  {
    paramgh.a(paramLong + this.a.o.a());
  }

  private void a(gh<K, V> paramgh, fa paramfa)
  {
    Object localObject = paramgh.d();
    paramgh.c();
    a(localObject, paramgh.a().get(), paramfa);
  }

  private void a(gh<K, V> paramgh, V paramV)
  {
    paramgh.a(this.a.h.a(this, paramgh, paramV));
    e();
    this.k.add(paramgh);
    if (this.a.b())
      if (!this.a.c())
        break label82;
    label82: for (long l1 = this.a.j; ; l1 = this.a.k)
    {
      a(paramgh, l1);
      this.l.add(paramgh);
      return;
    }
  }

  private void a(K paramK, V paramV, fa paramfa)
  {
    if (this.a.l != fi.q)
    {
      if ((paramK != null) || (this.a.d()))
        break label91;
      String str2 = "Unexpected null key during removal notification, cause=" + paramfa;
      fi.j().log(Level.WARNING, str2, new AssertionError());
    }
    while (true)
    {
      fh localfh = new fh(paramK, paramV, paramfa);
      this.a.l.offer(localfh);
      return;
      label91: if ((paramV == null) && (!this.a.e()))
      {
        String str1 = "Unexpected null value during removal notification, cause=" + paramfa;
        fi.j().log(Level.WARNING, str1, new AssertionError());
      }
    }
  }

  private boolean a(gh<K, V> paramgh, int paramInt, fa paramfa)
  {
    AtomicReferenceArray localAtomicReferenceArray = this.e;
    int m = paramInt & -1 + localAtomicReferenceArray.length();
    gh localgh1 = (gh)localAtomicReferenceArray.get(m);
    for (gh localgh2 = localgh1; localgh2 != null; localgh2 = localgh2.b())
      if (localgh2 == paramgh)
      {
        this.c = (1 + this.c);
        a(localgh2.d(), localgh2.a().get(), paramfa);
        gh localgh3 = b(localgh1, localgh2);
        int n = -1 + this.b;
        localAtomicReferenceArray.set(m, localgh3);
        this.b = n;
        return true;
      }
    return false;
  }

  private static boolean a(gu<K, V> paramgu)
  {
    return paramgu.get() == null;
  }

  private gh<K, V> b(gh<K, V> paramgh1, gh<K, V> paramgh2)
  {
    this.k.remove(paramgh2);
    this.l.remove(paramgh2);
    int m = this.b;
    Object localObject1 = paramgh2.b();
    if (paramgh1 != paramgh2)
    {
      Object localObject2 = a(paramgh1, (gh)localObject1);
      int i1;
      if (localObject2 != null)
        i1 = m;
      while (true)
      {
        paramgh1 = paramgh1.b();
        m = i1;
        localObject1 = localObject2;
        break;
        c(paramgh1);
        int n = m - 1;
        Object localObject3 = localObject1;
        i1 = n;
        localObject2 = localObject3;
      }
    }
    this.b = m;
    return localObject1;
  }

  private void b(gh<K, V> paramgh)
  {
    this.k.add(paramgh);
    if (this.a.c())
    {
      a(paramgh, this.a.j);
      this.l.add(paramgh);
    }
  }

  private void c()
  {
    if (tryLock());
    try
    {
      d();
      return;
    }
    finally
    {
      unlock();
    }
  }

  private void c(gh<K, V> paramgh)
  {
    a(paramgh, fa.c);
    this.k.remove(paramgh);
    this.l.remove(paramgh);
  }

  private gh<K, V> d(Object paramObject, int paramInt)
  {
    if (this.b != 0)
    {
      AtomicReferenceArray localAtomicReferenceArray = this.e;
      gh localgh = (gh)localAtomicReferenceArray.get(paramInt & -1 + localAtomicReferenceArray.length());
      if (localgh != null)
      {
        Object localObject;
        if (localgh.c() == paramInt)
        {
          localObject = localgh.d();
          if (localObject != null)
            break label75;
          c();
        }
        label75: 
        while (!this.a.e.a(paramObject, localObject))
        {
          localgh = localgh.b();
          break;
        }
        return localgh;
      }
    }
    return null;
  }

  private void d()
  {
    if (this.a.d());
    int i1;
    for (int n = 0; ; n = i1)
    {
      Reference localReference2 = this.g.poll();
      if (localReference2 != null)
      {
        gh localgh = (gh)localReference2;
        this.a.a(localgh);
        i1 = n + 1;
        if (i1 != 16);
      }
      else
      {
        boolean bool = this.a.e();
        int m = 0;
        if (bool)
          do
          {
            Reference localReference1 = this.h.poll();
            if (localReference1 == null)
              break;
            gu localgu = (gu)localReference1;
            this.a.a(localgu);
            m++;
          }
          while (m != 16);
        return;
      }
    }
  }

  private gh<K, V> e(Object paramObject, int paramInt)
  {
    gh localgh = d(paramObject, paramInt);
    if (localgh == null)
      return null;
    if ((this.a.b()) && (this.a.c(localgh)))
    {
      f();
      return null;
    }
    return localgh;
  }

  private void e()
  {
    while (true)
    {
      gh localgh = (gh)this.i.poll();
      if (localgh == null)
        break;
      if (this.k.contains(localgh))
        this.k.add(localgh);
      if ((this.a.c()) && (this.l.contains(localgh)))
        this.l.add(localgh);
    }
  }

  private void f()
  {
    if (tryLock());
    try
    {
      g();
      return;
    }
    finally
    {
      unlock();
    }
  }

  private void g()
  {
    e();
    if (this.l.isEmpty())
      return;
    long l1 = this.a.o.a();
    gh localgh;
    do
    {
      localgh = (gh)this.l.peek();
      if ((localgh == null) || (!fi.a(localgh, l1)))
        break;
    }
    while (a(localgh, localgh.c(), fa.d));
    throw new AssertionError();
  }

  private void h()
  {
    if (tryLock());
    try
    {
      d();
      g();
      this.j.set(0);
      return;
    }
    finally
    {
      unlock();
    }
  }

  private void i()
  {
    if (!isHeldByCurrentThread())
      this.a.i();
  }

  final V a(gh<K, V> paramgh)
  {
    if (paramgh.d() == null)
    {
      c();
      return null;
    }
    Object localObject = paramgh.a().get();
    if (localObject == null)
    {
      c();
      return null;
    }
    if ((this.a.b()) && (this.a.c(paramgh)))
    {
      f();
      return null;
    }
    return localObject;
  }

  final V a(Object paramObject, int paramInt)
  {
    try
    {
      gh localgh = e(paramObject, paramInt);
      if (localgh == null)
        return null;
      Object localObject2 = localgh.a().get();
      if (localObject2 != null)
      {
        if (this.a.c())
          a(localgh, this.a.j);
        this.i.add(localgh);
      }
      while (true)
      {
        return localObject2;
        c();
      }
    }
    finally
    {
      b();
    }
  }

  final V a(K paramK, int paramInt, V paramV)
  {
    lock();
    try
    {
      h();
      AtomicReferenceArray localAtomicReferenceArray = this.e;
      int m = paramInt & -1 + localAtomicReferenceArray.length();
      gh localgh1 = (gh)localAtomicReferenceArray.get(m);
      gh localgh2;
      for (Object localObject2 = localgh1; localObject2 != null; localObject2 = localgh2)
      {
        Object localObject3 = ((gh)localObject2).d();
        if ((((gh)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.e.a(paramK, localObject3)))
        {
          gu localgu = ((gh)localObject2).a();
          Object localObject4 = localgu.get();
          if (localObject4 == null)
          {
            if (a(localgu))
            {
              this.c = (1 + this.c);
              a(localObject3, localObject4, fa.c);
              gh localgh3 = b(localgh1, (gh)localObject2);
              int n = -1 + this.b;
              localAtomicReferenceArray.set(m, localgh3);
              this.b = n;
            }
            return null;
          }
          this.c = (1 + this.c);
          a(paramK, localObject4, fa.b);
          a((gh)localObject2, paramV);
          return localObject4;
        }
        localgh2 = ((gh)localObject2).b();
      }
      return null;
    }
    finally
    {
      unlock();
      i();
    }
  }

  final V a(K paramK, int paramInt, V paramV, boolean paramBoolean)
  {
    lock();
    while (true)
    {
      int m;
      int i6;
      gh localgh5;
      int i7;
      try
      {
        h();
        m = 1 + this.b;
        if (m > this.d)
        {
          AtomicReferenceArray localAtomicReferenceArray2 = this.e;
          int i3 = localAtomicReferenceArray2.length();
          if (i3 < 1073741824)
          {
            i4 = this.b;
            AtomicReferenceArray localAtomicReferenceArray3 = a(i3 << 1);
            this.d = (3 * localAtomicReferenceArray3.length() / 4);
            int i5 = -1 + localAtomicReferenceArray3.length();
            i6 = 0;
            if (i6 < i3)
            {
              localgh5 = (gh)localAtomicReferenceArray2.get(i6);
              if (localgh5 == null)
                break label690;
              gh localgh6 = localgh5.b();
              i7 = i5 & localgh5.c();
              if (localgh6 != null)
                break label718;
              localAtomicReferenceArray3.set(i7, localgh5);
              i8 = i4;
              break label708;
              if (localgh6 != null)
              {
                i9 = i5 & localgh6.c();
                if (i9 == i7)
                  break label697;
                localObject5 = localgh6;
                localgh6 = localgh6.b();
                localObject4 = localObject5;
                i7 = i9;
                continue;
              }
              localAtomicReferenceArray3.set(i7, localObject4);
              gh localgh7 = localgh5;
              if (localgh7 == localObject4)
                break label690;
              int i10 = i5 & localgh7.c();
              gh localgh8 = a(localgh7, (gh)localAtomicReferenceArray3.get(i10));
              if (localgh8 != null)
              {
                localAtomicReferenceArray3.set(i10, localgh8);
                localgh7 = localgh7.b();
                continue;
              }
              c(localgh7);
              i4--;
              continue;
            }
            this.e = localAtomicReferenceArray3;
            this.b = i4;
          }
          m = 1 + this.b;
        }
        AtomicReferenceArray localAtomicReferenceArray1 = this.e;
        int n = paramInt & -1 + localAtomicReferenceArray1.length();
        gh localgh1 = (gh)localAtomicReferenceArray1.get(n);
        gh localgh2 = localgh1;
        if (localgh2 != null)
        {
          Object localObject2 = localgh2.d();
          if ((localgh2.c() == paramInt) && (localObject2 != null) && (this.a.e.a(paramK, localObject2)))
          {
            Object localObject3 = localgh2.a().get();
            if (localObject3 == null)
            {
              this.c = (1 + this.c);
              a(localgh2, paramV);
              a(paramK, localObject3, fa.c);
              this.b = this.b;
              return null;
            }
            if (paramBoolean)
            {
              b(localgh2);
              return localObject3;
            }
            this.c = (1 + this.c);
            a(paramK, localObject3, fa.b);
            a(localgh2, paramV);
            return localObject3;
          }
          localgh2 = localgh2.b();
          continue;
        }
        this.c = (1 + this.c);
        gh localgh3 = this.a.n.a(this, paramK, paramInt, localgh1);
        a(localgh3, paramV);
        localAtomicReferenceArray1.set(n, localgh3);
        if ((!this.a.a()) || (this.b < this.f))
          break label677;
        e();
        gh localgh4 = (gh)this.k.remove();
        if (!a(localgh4, localgh4.c(), fa.e))
          throw new AssertionError();
      }
      finally
      {
        unlock();
        i();
      }
      int i1 = 1;
      if (i1 != 0);
      for (int i2 = 1 + this.b; ; i2 = m)
      {
        this.b = i2;
        unlock();
        i();
        return null;
        label677: i1 = 0;
        break;
      }
      label690: int i8 = i4;
      break label708;
      label697: int i9 = i7;
      Object localObject5 = localObject4;
      continue;
      label708: i6++;
      int i4 = i8;
      continue;
      label718: Object localObject4 = localgh5;
    }
  }

  final void a()
  {
    if (this.b != 0)
      lock();
    while (true)
    {
      int m;
      try
      {
        AtomicReferenceArray localAtomicReferenceArray = this.e;
        if (this.a.l == fi.q)
          break label212;
        m = 0;
        if (m >= localAtomicReferenceArray.length())
          break label212;
        gh localgh = (gh)localAtomicReferenceArray.get(m);
        if (localgh != null)
        {
          localgh.a();
          a(localgh, fa.a);
          localgh = localgh.b();
          continue;
          if (n < localAtomicReferenceArray.length())
          {
            localAtomicReferenceArray.set(n, null);
            n++;
            continue;
          }
          if ((this.a.d()) && (this.g.poll() != null))
            continue;
          if ((this.a.e()) && (this.h.poll() != null))
            continue;
          this.k.clear();
          this.l.clear();
          this.j.set(0);
          this.c = (1 + this.c);
          this.b = 0;
          return;
        }
      }
      finally
      {
        unlock();
        i();
      }
      m++;
      continue;
      label212: int n = 0;
    }
  }

  final boolean a(gh<K, V> paramgh, int paramInt)
  {
    lock();
    try
    {
      AtomicReferenceArray localAtomicReferenceArray = this.e;
      int m = paramInt & -1 + localAtomicReferenceArray.length();
      gh localgh1 = (gh)localAtomicReferenceArray.get(m);
      gh localgh3;
      for (Object localObject2 = localgh1; localObject2 != null; localObject2 = localgh3)
      {
        if (localObject2 == paramgh)
        {
          this.c = (1 + this.c);
          a(((gh)localObject2).d(), ((gh)localObject2).a().get(), fa.c);
          gh localgh2 = b(localgh1, (gh)localObject2);
          int n = -1 + this.b;
          localAtomicReferenceArray.set(m, localgh2);
          this.b = n;
          return true;
        }
        localgh3 = ((gh)localObject2).b();
      }
      return false;
    }
    finally
    {
      unlock();
      i();
    }
  }

  final boolean a(K paramK, int paramInt, gu<K, V> paramgu)
  {
    lock();
    try
    {
      AtomicReferenceArray localAtomicReferenceArray = this.e;
      int m = paramInt & -1 + localAtomicReferenceArray.length();
      gh localgh1 = (gh)localAtomicReferenceArray.get(m);
      gh localgh2;
      for (Object localObject2 = localgh1; localObject2 != null; localObject2 = localgh2)
      {
        Object localObject3 = ((gh)localObject2).d();
        if ((((gh)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.e.a(paramK, localObject3)))
        {
          if (((gh)localObject2).a() == paramgu)
          {
            this.c = (1 + this.c);
            a(paramK, paramgu.get(), fa.c);
            gh localgh3 = b(localgh1, (gh)localObject2);
            int n = -1 + this.b;
            localAtomicReferenceArray.set(m, localgh3);
            this.b = n;
            return true;
          }
          return false;
        }
        localgh2 = ((gh)localObject2).b();
      }
      return false;
    }
    finally
    {
      unlock();
      if (!isHeldByCurrentThread())
        i();
    }
  }

  final boolean a(K paramK, int paramInt, V paramV1, V paramV2)
  {
    lock();
    try
    {
      h();
      AtomicReferenceArray localAtomicReferenceArray = this.e;
      int m = paramInt & -1 + localAtomicReferenceArray.length();
      gh localgh1 = (gh)localAtomicReferenceArray.get(m);
      gh localgh2;
      for (Object localObject2 = localgh1; localObject2 != null; localObject2 = localgh2)
      {
        Object localObject3 = ((gh)localObject2).d();
        if ((((gh)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.e.a(paramK, localObject3)))
        {
          gu localgu = ((gh)localObject2).a();
          Object localObject4 = localgu.get();
          if (localObject4 == null)
          {
            if (a(localgu))
            {
              this.c = (1 + this.c);
              a(localObject3, localObject4, fa.c);
              gh localgh3 = b(localgh1, (gh)localObject2);
              int n = -1 + this.b;
              localAtomicReferenceArray.set(m, localgh3);
              this.b = n;
            }
            return false;
          }
          if (this.a.f.a(paramV1, localObject4))
          {
            this.c = (1 + this.c);
            a(paramK, localObject4, fa.b);
            a((gh)localObject2, paramV2);
            return true;
          }
          b((gh)localObject2);
          return false;
        }
        localgh2 = ((gh)localObject2).b();
      }
      return false;
    }
    finally
    {
      unlock();
      i();
    }
  }

  final void b()
  {
    if ((0x3F & this.j.incrementAndGet()) == 0)
    {
      h();
      i();
    }
  }

  final boolean b(Object paramObject, int paramInt)
  {
    try
    {
      if (this.b != 0)
      {
        gh localgh = e(paramObject, paramInt);
        if (localgh == null)
          return false;
        Object localObject2 = localgh.a().get();
        boolean bool = false;
        if (localObject2 != null)
          bool = true;
        return bool;
      }
      return false;
    }
    finally
    {
      b();
    }
  }

  final boolean b(Object paramObject1, int paramInt, Object paramObject2)
  {
    lock();
    try
    {
      h();
      AtomicReferenceArray localAtomicReferenceArray = this.e;
      int m = paramInt & -1 + localAtomicReferenceArray.length();
      gh localgh1 = (gh)localAtomicReferenceArray.get(m);
      label236: gh localgh2;
      for (Object localObject2 = localgh1; localObject2 != null; localObject2 = localgh2)
      {
        Object localObject3 = ((gh)localObject2).d();
        if ((((gh)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.e.a(paramObject1, localObject3)))
        {
          gu localgu = ((gh)localObject2).a();
          Object localObject4 = localgu.get();
          fa localfa1;
          if (this.a.f.a(paramObject2, localObject4))
          {
            localfa1 = fa.a;
            this.c = (1 + this.c);
            a(localObject3, localObject4, localfa1);
            gh localgh3 = b(localgh1, (gh)localObject2);
            int n = -1 + this.b;
            localAtomicReferenceArray.set(m, localgh3);
            this.b = n;
            fa localfa2 = fa.a;
            if (localfa1 != localfa2)
              break label236;
          }
          for (boolean bool = true; ; bool = false)
          {
            return bool;
            if (a(localgu))
            {
              localfa1 = fa.c;
              break;
            }
            return false;
          }
        }
        localgh2 = ((gh)localObject2).b();
      }
      return false;
    }
    finally
    {
      unlock();
      i();
    }
  }

  final V c(Object paramObject, int paramInt)
  {
    lock();
    try
    {
      h();
      AtomicReferenceArray localAtomicReferenceArray = this.e;
      int m = paramInt & -1 + localAtomicReferenceArray.length();
      gh localgh1 = (gh)localAtomicReferenceArray.get(m);
      gh localgh2;
      for (Object localObject2 = localgh1; localObject2 != null; localObject2 = localgh2)
      {
        Object localObject3 = ((gh)localObject2).d();
        if ((((gh)localObject2).c() == paramInt) && (localObject3 != null) && (this.a.e.a(paramObject, localObject3)))
        {
          gu localgu = ((gh)localObject2).a();
          Object localObject4 = localgu.get();
          if (localObject4 != null);
          for (fa localfa = fa.a; ; localfa = fa.c)
          {
            this.c = (1 + this.c);
            a(localObject3, localObject4, localfa);
            gh localgh3 = b(localgh1, (gh)localObject2);
            int n = -1 + this.b;
            localAtomicReferenceArray.set(m, localgh3);
            this.b = n;
            return localObject4;
            if (!a(localgu))
              break;
          }
          return null;
        }
        localgh2 = ((gh)localObject2).b();
      }
      return null;
    }
    finally
    {
      unlock();
      i();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gi
 * JD-Core Version:    0.6.2
 */