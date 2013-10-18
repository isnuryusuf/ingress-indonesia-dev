package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Message;
import com.google.android.gms.location.d;

final class bb extends ap
{
  private final Handler a;

  bb(d paramd)
  {
    this.a = new ba(paramd);
  }

  public final void a(Location paramLocation)
  {
    Message localMessage = Message.obtain();
    localMessage.what = 1;
    localMessage.obj = paramLocation;
    this.a.sendMessage(localMessage);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bb
 * JD-Core Version:    0.6.2
 */