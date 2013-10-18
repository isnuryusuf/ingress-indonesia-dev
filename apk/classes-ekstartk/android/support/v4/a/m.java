package android.support.v4.a;

import android.os.Handler;
import android.os.Message;

final class m extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    l locall = (l)paramMessage.obj;
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      g.c(locall.a, locall.b[0]);
      return;
    case 2:
    }
    g.c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.m
 * JD-Core Version:    0.6.2
 */