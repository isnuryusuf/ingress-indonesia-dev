package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.gg;

final class e
  implements a
{
  private final ViewGroup a;
  private final com.google.android.gms.maps.a.m b;
  private View c;

  public e(ViewGroup paramViewGroup, com.google.android.gms.maps.a.m paramm)
  {
    this.b = ((com.google.android.gms.maps.a.m)gg.a(paramm));
    this.a = ((ViewGroup)gg.a(paramViewGroup));
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
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
      throw new com.google.android.gms.maps.model.m(localRemoteException);
    }
  }

  public final void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
  }

  public final void a(Bundle paramBundle)
  {
    try
    {
      this.b.a(paramBundle);
      this.c = ((View)al.a(this.b.f()));
      this.a.removeAllViews();
      this.a.addView(this.c);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.m(localRemoteException);
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
      throw new com.google.android.gms.maps.model.m(localRemoteException);
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
      throw new com.google.android.gms.maps.model.m(localRemoteException);
    }
  }

  public final void c()
  {
    throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
  }

  public final void d()
  {
    try
    {
      this.b.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.m(localRemoteException);
    }
  }

  public final void e()
  {
    try
    {
      this.b.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.m(localRemoteException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.e
 * JD-Core Version:    0.6.2
 */