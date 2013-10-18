package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.common.c;
import com.google.android.gms.location.LocationRequest;

public final class bc extends fl<aw>
{
  private final bh<aw> f = new bd(this, (byte)0);
  private final az g = new az(paramContext, this.f);
  private final String h;

  public bc(Context paramContext, c paramc, com.google.android.gms.common.d paramd, String paramString)
  {
    super(paramContext, paramc, paramd, new String[0]);
    this.h = paramString;
  }

  public final void a()
  {
    synchronized (this.g)
    {
      if (f())
        this.g.b();
      super.a();
      return;
    }
  }

  protected final void a(fy paramfy, fl<aw>.fo paramfl)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("client_name", this.h);
    paramfy.e(paramfl, 3136100, g().getPackageName(), localBundle);
  }

  public final void a(LocationRequest paramLocationRequest, com.google.android.gms.location.d paramd)
  {
    synchronized (this.g)
    {
      this.g.a(paramLocationRequest, paramd);
      return;
    }
  }

  public final void a(com.google.android.gms.location.d paramd)
  {
    this.g.a(paramd);
  }

  protected final String b()
  {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }

  protected final String c()
  {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }

  public final Location d()
  {
    return this.g.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bc
 * JD-Core Version:    0.6.2
 */