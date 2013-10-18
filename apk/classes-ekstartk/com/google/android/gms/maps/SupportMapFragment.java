package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.a.d;
import com.google.android.gms.maps.a.j;
import com.google.android.gms.maps.model.m;

public class SupportMapFragment extends Fragment
{
  private final h a = new h(this);
  private c b;

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return this.a.a(paramLayoutInflater, paramViewGroup, paramBundle);
  }

  public final void a(Activity paramActivity)
  {
    super.a(paramActivity);
    h.a(this.a, paramActivity);
  }

  public final void a(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.a(paramActivity, paramAttributeSet, paramBundle);
    h.a(this.a, paramActivity);
    GoogleMapOptions localGoogleMapOptions = GoogleMapOptions.a(paramActivity, paramAttributeSet);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", localGoogleMapOptions);
    this.a.a(paramActivity, localBundle, paramBundle);
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a.a(paramBundle);
  }

  public final c b()
  {
    this.a.g();
    if (this.a.a() == null);
    for (j localj = null; localj == null; localj = ((g)this.a.a()).f())
      return null;
    d locald;
    try
    {
      locald = localj.a();
      if (locald == null)
        return null;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
    if ((this.b == null) || (this.b.a().asBinder() != locald.asBinder()))
      this.b = new c(locald);
    return this.b;
  }

  public final void d(Bundle paramBundle)
  {
    this.a.b(paramBundle);
    super.d(paramBundle);
  }

  public final void e()
  {
    this.a.d();
    super.e();
  }

  public final void e(Bundle paramBundle)
  {
    super.e(paramBundle);
  }

  public void onLowMemory()
  {
    this.a.f();
    super.onLowMemory();
  }

  public final void q()
  {
    super.q();
    this.a.b();
  }

  public final void r()
  {
    this.a.c();
    super.r();
  }

  public final void s()
  {
    this.a.e();
    super.s();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment
 * JD-Core Version:    0.6.2
 */