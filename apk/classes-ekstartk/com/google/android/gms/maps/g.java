package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.gg;
import com.google.android.gms.maps.a.j;
import com.google.android.gms.maps.model.m;

final class g
  implements a
{
  private final Fragment a;
  private final j b;

  public g(Fragment paramFragment, j paramj)
  {
    this.b = ((j)gg.a(paramj));
    this.a = ((Fragment)gg.a(paramFragment));
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      af localaf = this.b.a(al.a(paramLayoutInflater), al.a(paramViewGroup), paramBundle);
      return (View)al.a(localaf);
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void a()
  {
    try
    {
      this.b.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    GoogleMapOptions localGoogleMapOptions = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
    try
    {
      this.b.a(al.a(paramActivity), localGoogleMapOptions, paramBundle2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void a(Bundle paramBundle)
  {
    if (paramBundle == null);
    try
    {
      paramBundle = new Bundle();
      Bundle localBundle = this.a.h();
      if ((localBundle != null) && (localBundle.containsKey("MapOptions")))
        cu.a(paramBundle, "MapOptions", localBundle.getParcelable("MapOptions"));
      this.b.a(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void b()
  {
    try
    {
      this.b.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void b(Bundle paramBundle)
  {
    try
    {
      this.b.b(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void c()
  {
    try
    {
      this.b.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void d()
  {
    try
    {
      this.b.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final void e()
  {
    try
    {
      this.b.f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final j f()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.g
 * JD-Core Version:    0.6.2
 */