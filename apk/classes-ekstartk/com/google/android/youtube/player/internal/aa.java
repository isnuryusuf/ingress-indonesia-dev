package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.util.AttributeSet;
import android.view.LayoutInflater;

public final class aa extends y
{
  private static final Class<?>[] a = { Context.class, AttributeSet.class };
  private final Resources b;
  private final LayoutInflater c;
  private final Resources.Theme d;

  public aa(Activity paramActivity, Resources paramResources, ClassLoader paramClassLoader, int paramInt)
  {
    super(paramActivity);
    this.b = ((Resources)c.a(paramResources, "resources cannot be null"));
    LayoutInflater localLayoutInflater = ((LayoutInflater)super.getSystemService("layout_inflater")).cloneInContext(this);
    localLayoutInflater.setFactory(new a(paramClassLoader));
    this.c = localLayoutInflater;
    this.d = paramResources.newTheme();
    this.d.applyStyle(paramInt, false);
  }

  public final Context getApplicationContext()
  {
    return super.getApplicationContext();
  }

  public final Context getBaseContext()
  {
    return super.getBaseContext();
  }

  public final Resources getResources()
  {
    return this.b;
  }

  public final Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString))
      return this.c;
    return super.getSystemService(paramString);
  }

  public final Resources.Theme getTheme()
  {
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.aa
 * JD-Core Version:    0.6.2
 */