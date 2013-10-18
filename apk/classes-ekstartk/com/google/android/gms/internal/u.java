package com.google.android.gms.internal;

import android.os.Build.VERSION;

public final class u
{
  public static boolean a()
  {
    return a(11);
  }

  private static boolean a(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }

  public static boolean b()
  {
    return a(13);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.u
 * JD-Core Version:    0.6.2
 */