package com.nianticproject.ingress.l;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import com.google.a.a.bb;
import com.google.f.c;
import com.nianticproject.ingress.common.u.aw;
import java.util.Iterator;
import java.util.List;

public final class ak
{
  private static ak a;
  private static final bb b = bb.a(":");
  private final WifiManager c;

  private ak(Context paramContext)
  {
    this.c = ((WifiManager)paramContext.getSystemService("wifi"));
  }

  public static ak a(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new ak(paramContext);
      ak localak = a;
      return localak;
    }
    finally
    {
    }
  }

  public final void a(aw paramaw)
  {
    List localList1 = this.c.getScanResults();
    if (localList1 != null)
    {
      Iterator localIterator = localList1.iterator();
      while (localIterator.hasNext())
      {
        ScanResult localScanResult = (ScanResult)localIterator.next();
        byte[] arrayOfByte = new byte[6];
        List localList2 = b.b(localScanResult.BSSID);
        if (localList2.size() == 6)
        {
          for (int i = 0; i < 6; i++)
            arrayOfByte[i] = ((byte)Integer.parseInt((String)localList2.get(i), 16));
          paramaw.a(c.a(arrayOfByte));
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.ak
 * JD-Core Version:    0.6.2
 */