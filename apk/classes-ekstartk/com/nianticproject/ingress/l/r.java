package com.nianticproject.ingress.l;

import android.location.Location;
import com.nianticproject.ingress.common.u.av;

final class r
  implements Runnable
{
  r(q paramq, Location paramLocation, av paramav)
  {
  }

  public final void run()
  {
    q.a(this.c).onLocationChanged(this.a);
    q.a(this.c).a(this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.r
 * JD-Core Version:    0.6.2
 */