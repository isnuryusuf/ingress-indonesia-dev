package com.nianticproject.ingress.connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nianticproject.ingress.NemesisApplication;

public class ConnectivityBroadcastReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool1 = paramIntent.getBooleanExtra("noConnectivity", false);
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    NemesisApplication.a().l().a(bool2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.connectivity.ConnectivityBroadcastReceiver
 * JD-Core Version:    0.6.2
 */