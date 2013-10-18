package com.nianticproject.ingress.l;

import com.nianticproject.ingress.shared.aj;

final class w
  implements Runnable
{
  w(u paramu, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      aj.a("MyLocationListener.onProviderEnabled(", this.a, ")");
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.w
 * JD-Core Version:    0.6.2
 */