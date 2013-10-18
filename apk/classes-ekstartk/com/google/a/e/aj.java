package com.google.a.e;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

 enum aj
  implements ai
{
  private static final Unsafe c;
  private static final int d;

  static
  {
    aj[] arrayOfaj = new aj[2];
    arrayOfaj[0] = a;
    arrayOfaj[1] = b;
    e = arrayOfaj;
    Unsafe localUnsafe = c();
    c = localUnsafe;
    d = localUnsafe.arrayBaseOffset([B.class);
    if (c.arrayIndexScale([B.class) != 1)
      throw new AssertionError();
  }

  private static Unsafe c()
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
        Unsafe localUnsafe1 = (Unsafe)AccessController.doPrivileged(new am());
        return localUnsafe1;
      }
      catch (PrivilegedActionException localPrivilegedActionException)
      {
        throw new RuntimeException("Could not initialize intrinsics", localPrivilegedActionException.getCause());
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.aj
 * JD-Core Version:    0.6.2
 */