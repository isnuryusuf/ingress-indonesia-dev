package com.google.android.c2dm;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;

public abstract class C2DMBaseReceiver extends IntentService
{
  private static PowerManager.WakeLock a;

  static void a(Context paramContext, Intent paramIntent)
  {
    if (a == null)
      a = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "C2DM_LIB");
    a.acquire();
    paramIntent.setClassName(paramContext, paramContext.getPackageName() + ".C2DMReceiver");
    paramContext.startService(paramIntent);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.c2dm.C2DMBaseReceiver
 * JD-Core Version:    0.6.2
 */