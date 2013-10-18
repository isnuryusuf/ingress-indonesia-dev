package com.google.android.youtube.player.internal;

import android.os.Handler;
import android.os.IBinder;

public final class au extends g
{
  protected au(ap paramap)
  {
  }

  public final void a(String paramString, IBinder paramIBinder)
  {
    this.a.a.sendMessage(this.a.a.obtainMessage(1, new at(this.a, paramString, paramIBinder)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.au
 * JD-Core Version:    0.6.2
 */