package com.google.analytics.tracking.android;

import android.os.Build.VERSION;

final class o
{
  public static int a()
  {
    try
    {
      int i = Integer.parseInt(Build.VERSION.SDK);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      aq.b("Invalid version number: " + Build.VERSION.SDK);
    }
    return 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.o
 * JD-Core Version:    0.6.2
 */