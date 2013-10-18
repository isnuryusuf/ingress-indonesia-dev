package com.nianticproject.ingress;

import android.app.Activity;
import android.location.Location;
import com.google.a.a.an;
import com.nianticproject.ingress.common.aa;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.y;
import com.nianticproject.ingress.l.ab;
import com.nianticproject.ingress.l.ac;
import com.nianticproject.ingress.l.ak;
import com.nianticproject.ingress.l.f;
import com.nianticproject.ingress.l.t;
import com.nianticproject.ingress.l.z;
import com.nianticproject.ingress.shared.aj;

public final class cq
  implements aa
{
  private final Activity a;
  private final Object b = new Object();
  private r c;
  private k d;
  private f e;
  private z f;
  private ak g;
  private boolean h;
  private final ac i = new cs(this);
  private final t j = new cu(this);

  cq(Activity paramActivity)
  {
    this.a = ((Activity)an.a(paramActivity));
    this.e = f.a(this.a.getApplicationContext());
    this.e.a(this.j);
    cr localcr = new cr(this);
    this.f = z.a(this.a.getApplicationContext(), localcr);
    this.f.a(this.i);
    ab localab = this.e.a();
    if (localab != null)
      this.f.a(localab);
    this.g = ak.a(this.a.getApplicationContext());
    d();
    this.e.e();
    this.h = false;
  }

  private void a(Location paramLocation)
  {
    c.a(new y(paramLocation.getProvider(), (int)(1000000.0D * paramLocation.getLatitude()), (int)(1000000.0D * paramLocation.getLongitude()), paramLocation.getAccuracy(), paramLocation.getTime()));
    com.nianticproject.ingress.common.ad localad = new com.nianticproject.ingress.common.ad(ad.a(paramLocation), paramLocation.getTime(), paramLocation.getAccuracy());
    synchronized (this.b)
    {
      r localr = this.c;
      if (localr != null)
        localr.a(localad);
      return;
    }
  }

  private void d()
  {
    if (!this.h)
    {
      this.e.d();
      this.h = true;
    }
  }

  public final void a(r paramr, k paramk)
  {
    synchronized (this.b)
    {
      this.c = paramr;
      this.d = paramk;
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.e.a(paramBoolean);
  }

  public final void b()
  {
  }

  public final void c()
  {
    this.f.b();
    this.e.e();
    this.h = false;
  }

  public final void f_()
  {
    try
    {
      aj.a("NemesisLocationHandler.resume");
      d();
      this.f.a();
      Location localLocation1 = this.e.c();
      if (localLocation1 != null)
      {
        Location localLocation2 = new Location(localLocation1);
        localLocation2.setAccuracy(localLocation1.getAccuracy() + (float)Math.random());
        a(localLocation2);
      }
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cq
 * JD-Core Version:    0.6.2
 */