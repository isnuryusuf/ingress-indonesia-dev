package com.google.android.youtube.player.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

final class a
  implements LayoutInflater.Factory
{
  private final ClassLoader a;

  public a(ClassLoader paramClassLoader)
  {
    this.a = ((ClassLoader)c.a(paramClassLoader, "remoteClassLoader cannot be null"));
  }

  public final View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    try
    {
      View localView = (View)this.a.loadClass(paramString).asSubclass(View.class).getConstructor(aa.a()).newInstance(new Object[] { paramContext, paramAttributeSet });
      return localView;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return null;
    }
    catch (InstantiationException localInstantiationException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.a
 * JD-Core Version:    0.6.2
 */