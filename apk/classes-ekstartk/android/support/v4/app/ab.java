package android.support.v4.app;

import android.os.Build.VERSION;

public final class ab
{
  private static final ah a = new ai();

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new al();
      return;
    }
    if (Build.VERSION.SDK_INT >= 13)
    {
      a = new ak();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new aj();
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.ab
 * JD-Core Version:    0.6.2
 */