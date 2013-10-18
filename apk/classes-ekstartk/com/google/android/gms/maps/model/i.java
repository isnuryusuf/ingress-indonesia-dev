package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.dg;
import com.google.android.gms.internal.gg;

public final class i
{
  private final dg a;

  public i(dg paramdg)
  {
    this.a = ((dg)gg.a(paramdg));
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof i))
      return false;
    try
    {
      boolean bool = this.a.a(((i)paramObject).a);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }

  public final int hashCode()
  {
    try
    {
      int i = this.a.k();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new m(localRemoteException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.i
 * JD-Core Version:    0.6.2
 */