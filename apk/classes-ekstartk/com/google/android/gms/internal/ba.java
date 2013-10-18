package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.d;

final class ba extends Handler
{
  private final d a;

  public ba(d paramd)
  {
    this.a = paramd;
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
      return;
    case 1:
    }
    Location localLocation = new Location((Location)paramMessage.obj);
    this.a.a(localLocation);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ba
 * JD-Core Version:    0.6.2
 */