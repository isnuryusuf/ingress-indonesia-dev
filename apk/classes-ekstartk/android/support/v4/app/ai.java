package android.support.v4.app;

import android.app.Notification;

final class ai
  implements ah
{
  public final Notification a(af paramaf)
  {
    Notification localNotification = paramaf.r;
    localNotification.setLatestEventInfo(paramaf.a, paramaf.b, paramaf.c, paramaf.d);
    if (paramaf.j > 0)
      localNotification.flags = (0x80 | localNotification.flags);
    return localNotification;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.ai
 * JD-Core Version:    0.6.2
 */