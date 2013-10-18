package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public final class bf
{
  private static IBinder a(Class<?> paramClass, IBinder paramIBinder1, IBinder paramIBinder2)
  {
    try
    {
      IBinder localIBinder = (IBinder)paramClass.getConstructor(new Class[] { IBinder.class, IBinder.class }).newInstance(new Object[] { paramIBinder1, paramIBinder2 });
      return localIBinder;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new bg("Could not find the right constructor for " + paramClass.getName(), localNoSuchMethodException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new bg("Exception thrown by invoked constructor in " + paramClass.getName(), localInvocationTargetException);
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new bg("Unable to instantiate the dynamic class " + paramClass.getName(), localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new bg("Unable to call the default constructor of " + paramClass.getName(), localIllegalAccessException);
    }
  }

  private static IBinder a(ClassLoader paramClassLoader, String paramString, IBinder paramIBinder1, IBinder paramIBinder2)
  {
    try
    {
      IBinder localIBinder = a(paramClassLoader.loadClass(paramString), paramIBinder1, paramIBinder2);
      return localIBinder;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new bg("Unable to find dynamic class " + paramString, localClassNotFoundException);
    }
  }

  public static i a(Activity paramActivity, IBinder paramIBinder)
  {
    c.a(paramActivity, "activity cannot be null");
    c.a(paramIBinder, "serviceBinder cannot be null");
    Context localContext = bi.b(paramActivity);
    if (localContext == null)
      throw new bg("Could not create remote context");
    aa localaa = new aa(paramActivity, localContext.getResources(), localContext.getClassLoader(), bi.a(paramActivity, localContext));
    return j.a(a(localContext.getClassLoader(), "com.google.android.youtube.api.jar.client.RemoteEmbeddedPlayer", be.a(localaa).asBinder(), paramIBinder));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.bf
 * JD-Core Version:    0.6.2
 */