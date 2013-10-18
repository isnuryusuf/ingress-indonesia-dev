package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;

public final class ai
{
  static final ao a = new aj();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if ((i >= 16) || (Build.VERSION.CODENAME.equals("JellyBean")))
    {
      a = new an();
      return;
    }
    if (i >= 14)
    {
      a = new am();
      return;
    }
    if (i >= 11)
    {
      a = new al();
      return;
    }
    if (i >= 9)
    {
      a = new ak();
      return;
    }
  }

  public static int a(View paramView)
  {
    return a.a(paramView);
  }

  public static void a(View paramView, a parama)
  {
    a.a(paramView, parama);
  }

  public static boolean a(View paramView, int paramInt)
  {
    return a.a(paramView, paramInt);
  }

  public static void b(View paramView)
  {
    a.b(paramView);
  }

  public static int c(View paramView)
  {
    return a.c(paramView);
  }

  public static void d(View paramView)
  {
    a.d(paramView);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ai
 * JD-Core Version:    0.6.2
 */