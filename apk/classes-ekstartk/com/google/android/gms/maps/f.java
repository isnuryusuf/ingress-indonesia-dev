package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.v;

final class f extends v<e>
{
  protected am<e> a;
  private final ViewGroup b;
  private final Context c;
  private final GoogleMapOptions d;

  f(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    this.b = paramViewGroup;
    this.c = paramContext;
    this.d = paramGoogleMapOptions;
  }

  protected final void a(am<e> paramam)
  {
    this.a = paramam;
    if ((this.a != null) && (a() == null));
    try
    {
      com.google.android.gms.maps.a.m localm = cv.a(this.c).a(al.a(this.c), this.d);
      this.a.a(new e(this.b, localm));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new com.google.android.gms.maps.model.m(localRemoteException);
    }
    catch (com.google.android.gms.common.e locale)
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.f
 * JD-Core Version:    0.6.2
 */