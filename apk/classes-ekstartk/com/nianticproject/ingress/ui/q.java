package com.nianticproject.ingress.ui;

import android.os.Handler;
import android.os.Message;

final class q extends Handler
{
  private q(CommSlidingDrawer paramCommSlidingDrawer)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1000:
    }
    CommSlidingDrawer.c(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.q
 * JD-Core Version:    0.6.2
 */