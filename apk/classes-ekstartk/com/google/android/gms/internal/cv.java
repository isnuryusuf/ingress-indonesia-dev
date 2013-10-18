package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.e;
import com.google.android.gms.common.f;
import com.google.android.gms.maps.model.m;

public class cv
{
  private static Context a;
  private static bm b;

  public static bm a(Context paramContext)
  {
    gg.a(paramContext);
    if (a() != null);
    for (int i = 1; i == 0; i = 0)
    {
      int j = f.a(paramContext);
      if (j == 0)
        break;
      throw new e(j);
    }
    if (b == null)
    {
      Class localClass = a();
      if (localClass != null)
      {
        Log.i(cv.class.getSimpleName(), "Making Creator statically");
        b = (bm)a(localClass);
        b(paramContext);
      }
    }
    if (b != null)
      return b;
    b = bn.a((IBinder)a(c(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
    b(paramContext);
    return b;
  }

  private static Class<?> a()
  {
    try
    {
      Class localClass = Class.forName("com.google.android.gms.maps.internal.CreatorImpl");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    return null;
  }

  private static <T> T a(Class<?> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new IllegalStateException("Unable to instantiate the dynamic class " + paramClass.getName());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    throw new IllegalStateException("Unable to call the default constructor of " + paramClass.getName());
  }

  private static <T> T a(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      Object localObject = a(((ClassLoader)gg.a(paramClassLoader)).loadClass(paramString));
      return localObject;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    throw new IllegalStateException("Unable to find dynamic class " + paramString);
  }

  private static void b(Context paramContext)
  {
    try
    {
      b.a(al.a(c(paramContext).getResources()), 3136100);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  private static Context c(Context paramContext)
  {
    if (a == null)
      if (a() == null)
        break label20;
    label20: for (a = paramContext; ; a = f.b(paramContext))
      return a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cv
 * JD-Core Version:    0.6.2
 */