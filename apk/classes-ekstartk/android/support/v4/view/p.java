package android.support.v4.view;

import android.view.KeyEvent;

final class p
  implements q
{
  public final boolean a(int paramInt)
  {
    return KeyEvent.metaStateHasModifiers(paramInt, 1);
  }

  public final boolean b(int paramInt)
  {
    return KeyEvent.metaStateHasNoModifiers(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.p
 * JD-Core Version:    0.6.2
 */