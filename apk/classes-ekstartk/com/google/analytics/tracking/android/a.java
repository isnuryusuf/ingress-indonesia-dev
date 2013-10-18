package com.google.analytics.tracking.android;

final class a
{
  private boolean a;

  a()
  {
    try
    {
      if (Class.forName("com.google.ads.AdRequest") != null);
      for (boolean bool = true; ; bool = false)
      {
        this.a = bool;
        return;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      this.a = false;
    }
  }

  final int a()
  {
    if (!this.a)
      return 0;
    return b.a().b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.a
 * JD-Core Version:    0.6.2
 */