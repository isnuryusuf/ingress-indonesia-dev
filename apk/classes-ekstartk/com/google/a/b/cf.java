package com.google.a.b;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

abstract class cf extends Number
{
  static final cj a = new cj();
  static final int b = Runtime.getRuntime().availableProcessors();
  private static final Unsafe f;
  private static final long g;
  private static final long h;
  volatile transient ch[] c;
  volatile transient long d;
  volatile transient int e;

  static
  {
    try
    {
      f = a();
      g = f.objectFieldOffset(cf.class.getDeclaredField("base"));
      h = f.objectFieldOffset(cf.class.getDeclaredField("busy"));
      return;
    }
    catch (Exception localException)
    {
      throw new Error(localException);
    }
  }

  private static Unsafe a()
  {
    try
    {
      Unsafe localUnsafe2 = Unsafe.getUnsafe();
      return localUnsafe2;
    }
    catch (SecurityException localSecurityException)
    {
      try
      {
        Unsafe localUnsafe1 = (Unsafe)AccessController.doPrivileged(new cg());
        return localUnsafe1;
      }
      catch (PrivilegedActionException localPrivilegedActionException)
      {
        throw new RuntimeException("Could not initialize intrinsics", localPrivilegedActionException.getCause());
      }
    }
  }

  abstract long a(long paramLong1, long paramLong2);

  final boolean b()
  {
    return f.compareAndSwapInt(this, h, 0, 1);
  }

  final boolean b(long paramLong1, long paramLong2)
  {
    return f.compareAndSwapLong(this, g, paramLong1, paramLong2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.cf
 * JD-Core Version:    0.6.2
 */