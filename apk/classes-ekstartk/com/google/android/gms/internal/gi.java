package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.f;

public final class gi
{
  private static Context a;
  private static gb b;

  public static View a(Context paramContext, int paramInt1, int paramInt2)
  {
    gb localgb = a(paramContext);
    try
    {
      af localaf = localgb.a(al.a(paramContext), paramInt1, paramInt2);
      return (View)al.a(localaf);
    }
    catch (Exception localException)
    {
    }
    throw new gj("Could not get button with size " + paramInt1 + " and color " + paramInt2);
  }

  private static gb a(Context paramContext)
  {
    gg.a(paramContext);
    ClassLoader localClassLoader;
    if (b == null)
    {
      if (a == null)
      {
        Context localContext = f.b(paramContext);
        a = localContext;
        if (localContext == null)
          throw new gj("Could not get remote context.");
      }
      localClassLoader = a.getClassLoader();
    }
    try
    {
      b = gc.a((IBinder)localClassLoader.loadClass("com.google.android.gms.common.ui.SignInButtonCreatorImpl").newInstance());
      return b;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new gj("Could not load creator class.");
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new gj("Could not instantiate creator.");
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    throw new gj("Could not access creator.");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.gi
 * JD-Core Version:    0.6.2
 */