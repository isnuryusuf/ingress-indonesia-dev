package com.nianticproject.ingress.common.w;

import java.lang.reflect.Method;

public class an
{
  private static final aa a = new aa(an.class);
  private static final Thread b = b();

  public static boolean a()
  {
    return b == Thread.currentThread();
  }

  private static Thread b()
  {
    try
    {
      Object localObject = Class.forName("android.os.Looper").getMethod("getMainLooper", null).invoke(null, new Object[0]);
      Thread localThread = (Thread)localObject.getClass().getMethod("getThread", null).invoke(localObject, new Object[0]);
      return localThread;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.an
 * JD-Core Version:    0.6.2
 */