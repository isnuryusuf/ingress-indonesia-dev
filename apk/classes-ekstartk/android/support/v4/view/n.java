package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public final class n
{
  static final q a = new o();

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new p();
      return;
    }
  }

  public static boolean a(KeyEvent paramKeyEvent)
  {
    return a.a(paramKeyEvent.getMetaState());
  }

  public static boolean b(KeyEvent paramKeyEvent)
  {
    return a.b(paramKeyEvent.getMetaState());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.n
 * JD-Core Version:    0.6.2
 */