package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.e;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.v;
import com.google.android.gms.maps.a.j;
import com.google.android.gms.maps.model.m;

final class h extends v<g>
{
  protected am<g> a;
  private final Fragment b;
  private Activity c;

  h(Fragment paramFragment)
  {
    this.b = paramFragment;
  }

  protected final void a(am<g> paramam)
  {
    this.a = paramam;
    g();
  }

  public final void g()
  {
    if ((this.c != null) && (this.a != null) && (a() == null))
      try
      {
        Activity localActivity = this.c;
        gg.a(localActivity);
        bm localbm = cv.a(localActivity);
        try
        {
          b.a(localbm.a());
          com.google.android.gms.maps.model.b.a(localbm.b());
          j localj = cv.a(this.c).b(al.a(this.c));
          this.a.a(new g(this.b, localj));
          return;
        }
        catch (RemoteException localRemoteException2)
        {
          throw new m(localRemoteException2);
        }
      }
      catch (RemoteException localRemoteException1)
      {
        throw new m(localRemoteException1);
      }
      catch (e locale)
      {
      }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.h
 * JD-Core Version:    0.6.2
 */