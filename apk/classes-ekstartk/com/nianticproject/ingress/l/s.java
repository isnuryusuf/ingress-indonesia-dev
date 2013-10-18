package com.nianticproject.ingress.l;

import android.location.Location;
import com.google.android.gms.common.a;
import com.google.android.gms.location.LocationRequest;

final class s
  implements com.google.android.gms.common.c, com.google.android.gms.common.d, com.google.android.gms.location.d
{
  com.google.android.gms.location.c a;
  final LocationRequest b = LocationRequest.a();

  public s(f paramf)
  {
    this.b.b();
    this.b.c();
  }

  public final void a()
  {
    f.f();
    Location localLocation = this.a.a();
    if ((localLocation != null) && (60000L + localLocation.getTime() < System.currentTimeMillis()))
      f.a(this.c, localLocation);
    this.a.a(this.b, this);
  }

  public final void a(Location paramLocation)
  {
    f.a(this.c, paramLocation);
  }

  public final void a(a parama)
  {
    f.f();
    new Object[] { parama };
  }

  public final void b()
  {
    f.f();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.s
 * JD-Core Version:    0.6.2
 */