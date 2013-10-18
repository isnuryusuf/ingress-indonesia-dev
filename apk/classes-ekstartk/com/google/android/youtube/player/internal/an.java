package com.google.android.youtube.player.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;

public final class an extends ap<ai>
  implements e
{
  private final String b;
  private final String c;
  private final String d;
  private boolean e;

  public an(Context paramContext, String paramString1, String paramString2, String paramString3, az paramaz, ba paramba)
  {
    super(paramContext, paramaz, paramba);
    this.b = ((String)c.a(paramString1, "developerKey cannot be null"));
    this.c = c.a(paramString2, "callingPackage cannot be null or empty");
    this.d = c.a(paramString3, "callingAppVersion cannot be null or empty");
  }

  public final IBinder a()
  {
    i();
    if (this.e)
      throw new IllegalStateException("Connection client has been released");
    try
    {
      IBinder localIBinder = ((ai)j()).a();
      return localIBinder;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }

  protected final void a(x paramx, ap<ai>.au paramap)
  {
    paramx.a(paramap, 1000, this.c, this.d, this.b, null);
  }

  public final void a(boolean paramBoolean)
  {
    if (f());
    try
    {
      ((ai)j()).a(paramBoolean);
      label20: this.e = true;
      return;
    }
    catch (RemoteException localRemoteException)
    {
      break label20;
    }
  }

  protected final String b()
  {
    return "com.google.android.youtube.player.internal.IYouTubeService";
  }

  protected final String c()
  {
    return "com.google.android.youtube.api.service.START";
  }

  public final void d()
  {
    if (!this.e)
      a(true);
    super.d();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.an
 * JD-Core Version:    0.6.2
 */