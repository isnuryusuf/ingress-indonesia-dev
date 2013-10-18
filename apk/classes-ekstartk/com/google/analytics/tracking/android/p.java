package com.google.analytics.tracking.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

final class p extends BroadcastReceiver
{
  private final bb a;

  p(bb parambb)
  {
    this.a = parambb;
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    bb localbb;
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction()))
    {
      Bundle localBundle = paramIntent.getExtras();
      Boolean localBoolean = Boolean.FALSE;
      if (localBundle != null)
        localBoolean = Boolean.valueOf(paramIntent.getExtras().getBoolean("noConnectivity"));
      localbb = this.a;
      if (localBoolean.booleanValue())
        break label67;
    }
    label67: for (boolean bool = true; ; bool = false)
    {
      localbb.a(bool);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.p
 * JD-Core Version:    0.6.2
 */