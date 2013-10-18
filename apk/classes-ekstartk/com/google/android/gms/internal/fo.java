package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;

public final class fo extends fw
{
  protected fo(fl paramfl)
  {
  }

  public final void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    this.a.a.sendMessage(this.a.a.obtainMessage(1, new fq(this.a, paramInt, paramIBinder, paramBundle)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fo
 * JD-Core Version:    0.6.2
 */