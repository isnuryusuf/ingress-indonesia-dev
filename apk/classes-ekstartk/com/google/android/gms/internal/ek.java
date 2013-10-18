package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.a;
import com.google.android.gms.plus.c;

final class ek extends dv
{
  private final c b;

  public ek(eg parameg, c paramc)
  {
    this.b = paramc;
  }

  public final void a(int paramInt, Bundle paramBundle1, Bundle paramBundle2)
  {
    if (paramBundle1 != null);
    for (PendingIntent localPendingIntent = (PendingIntent)paramBundle1.getParcelable("pendingIntent"); ; localPendingIntent = null)
    {
      a locala = new a(paramInt, localPendingIntent);
      du localdu = null;
      if (paramBundle2 != null)
        localdu = new du(paramBundle2);
      this.a.a(new el(this.a, this.b, locala, localdu));
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ek
 * JD-Core Version:    0.6.2
 */