package com.google.analytics.tracking.android;

import android.util.Log;

public final class aq
{
  private static boolean a;

  public static int a(String paramString)
  {
    if (a)
      return Log.d("GAV2", h(paramString));
    return 0;
  }

  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static boolean a()
  {
    return a;
  }

  public static int b(String paramString)
  {
    return Log.e("GAV2", h(paramString));
  }

  public static int c(String paramString)
  {
    return Log.i("GAV2", h(paramString));
  }

  public static int d(String paramString)
  {
    if (a)
      return c(paramString);
    return 0;
  }

  public static int e(String paramString)
  {
    if (a)
      return Log.v("GAV2", h(paramString));
    return 0;
  }

  public static int f(String paramString)
  {
    return Log.w("GAV2", h(paramString));
  }

  public static int g(String paramString)
  {
    if (a)
      return f(paramString);
    return 0;
  }

  private static String h(String paramString)
  {
    return Thread.currentThread().toString() + ": " + paramString;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.aq
 * JD-Core Version:    0.6.2
 */