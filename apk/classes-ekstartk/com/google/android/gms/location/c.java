package com.google.android.gms.location;

import android.content.Context;
import android.location.Location;
import com.google.android.gms.common.b;
import com.google.android.gms.internal.bc;

public final class c
  implements b
{
  private final bc a;

  public c(Context paramContext, com.google.android.gms.common.c paramc, com.google.android.gms.common.d paramd)
  {
    this.a = new bc(paramContext, paramc, paramd, "location");
  }

  public final Location a()
  {
    return this.a.d();
  }

  public final void a(LocationRequest paramLocationRequest, d paramd)
  {
    this.a.a(paramLocationRequest, paramd);
  }

  public final void a(d paramd)
  {
    this.a.a(paramd);
  }

  public final void b()
  {
    this.a.e();
  }

  public final void c()
  {
    this.a.a();
  }

  public final boolean d()
  {
    return this.a.f();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.c
 * JD-Core Version:    0.6.2
 */