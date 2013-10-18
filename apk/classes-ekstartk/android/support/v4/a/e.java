package android.support.v4.a;

import android.database.ContentObserver;
import android.os.Handler;

public final class e extends ContentObserver
{
  public e(d paramd)
  {
    super(new Handler());
  }

  public final boolean deliverSelfNotifications()
  {
    return true;
  }

  public final void onChange(boolean paramBoolean)
  {
    this.a.o();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.e
 * JD-Core Version:    0.6.2
 */