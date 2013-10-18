package com.nianticproject.ingress.connectivity;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

public class a
{
  private static final HashSet<Integer> b = new HashSet(Arrays.asList(arrayOfInteger));
  private final aa a = new aa(a.class);
  private final ArrayList<b> c = new ArrayList();
  private final Context d;
  private final ConnectivityManager e;
  private final ConnectivityBroadcastReceiver f;
  private final IntentFilter g;
  private boolean h;

  static
  {
    Integer[] arrayOfInteger = new Integer[3];
    arrayOfInteger[0] = Integer.valueOf(1);
    arrayOfInteger[1] = Integer.valueOf(6);
    arrayOfInteger[2] = Integer.valueOf(0);
  }

  public a(Context paramContext)
  {
    try
    {
      aj.a("Connectivity.Connectivity");
      this.d = paramContext;
      this.e = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
      this.f = new ConnectivityBroadcastReceiver();
      this.g = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
      this.h = true;
      a();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  private void a()
  {
    for (NetworkInfo localNetworkInfo : this.e.getAllNetworkInfo())
      if (localNetworkInfo.isConnected())
      {
        int k = localNetworkInfo.getType();
        if (b.contains(Integer.valueOf(k)))
        {
          a(true);
          return;
        }
      }
    a(false);
  }

  final void a(boolean paramBoolean)
  {
    new StringBuilder("setConnectivity(").append(paramBoolean).append(")").toString();
    if (this.h == paramBoolean);
    while (true)
    {
      return;
      this.h = paramBoolean;
      if (this.c.isEmpty())
        break;
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
        ((b)localIterator.next()).a(paramBoolean);
    }
  }

  public final boolean a(b paramb)
  {
    ec.a("registerListener");
    this.c.add(paramb);
    new StringBuilder("Listener registered, number of registered listeners: ").append(this.c.size()).toString();
    if (this.c.size() == 1)
      this.d.registerReceiver(this.f, this.g);
    return this.h;
  }

  public final void b(b paramb)
  {
    ec.a("unregisterListener");
    this.c.remove(paramb);
    new StringBuilder("Listener unregistered, number of registered listeners: ").append(this.c.size()).toString();
    if (this.c.size() == 0);
    try
    {
      this.d.unregisterReceiver(this.f);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      this.a.a(localIllegalArgumentException, "Exception while trying to unregister the receiver");
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.connectivity.a
 * JD-Core Version:    0.6.2
 */