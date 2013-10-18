package com.nianticproject.ingress.l;

import com.nianticproject.ingress.shared.aj;

final class x
  implements Runnable
{
  x(u paramu, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      aj.a("MyLocationListener.onStatusChanged(", this.a, ")");
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.x
 * JD-Core Version:    0.6.2
 */