package com.nianticproject.ingress.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class TestBroadcastReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    CommService.c(paramContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.TestBroadcastReceiver
 * JD-Core Version:    0.6.2
 */