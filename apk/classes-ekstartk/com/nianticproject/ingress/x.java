package com.nianticproject.ingress;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class x extends Handler
{
  private final y a;

  public x(y paramy)
  {
    super(Looper.getMainLooper());
    this.a = paramy;
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      super.handleMessage(paramMessage);
    case 1:
      int i;
      do
      {
        return;
        i = ((Integer)paramMessage.obj).intValue();
      }
      while (this.a.b() != i);
      this.a.c();
      return;
    case 2:
    }
    this.a.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.x
 * JD-Core Version:    0.6.2
 */