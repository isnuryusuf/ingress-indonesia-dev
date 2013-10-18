package com.nianticproject.ingress;

import android.location.Location;
import android.os.Bundle;
import com.nianticproject.ingress.common.f;
import com.nianticproject.ingress.common.u.av;
import com.nianticproject.ingress.common.u.aw;
import com.nianticproject.ingress.l.ak;
import com.nianticproject.ingress.l.t;

final class cu
  implements t
{
  cu(cq paramcq)
  {
  }

  public final void a(av paramav)
  {
    aw localaw = paramav.v();
    cq.d(this.a).a(localaw);
    String str = f.a();
    if (str != null)
      localaw.a(str);
    cq.a(this.a, localaw.c());
  }

  public final void onLocationChanged(Location paramLocation)
  {
    cq.a(this.a, paramLocation);
  }

  public final void onProviderDisabled(String paramString)
  {
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cu
 * JD-Core Version:    0.6.2
 */