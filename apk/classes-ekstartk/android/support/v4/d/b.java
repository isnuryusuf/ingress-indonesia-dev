package android.support.v4.d;

import android.database.ContentObserver;

final class b extends ContentObserver
{
  public final boolean deliverSelfNotifications()
  {
    return true;
  }

  public final void onChange(boolean paramBoolean)
  {
    this.a.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.d.b
 * JD-Core Version:    0.6.2
 */