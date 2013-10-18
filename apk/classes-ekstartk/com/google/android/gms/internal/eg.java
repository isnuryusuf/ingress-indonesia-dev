package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.plus.a.b.a;
import com.google.android.gms.plus.b;
import com.google.android.gms.plus.c;

public final class eg extends fl<ea>
{
  private final String f;
  private final String g;
  private final String h;
  private a i;
  private final String[] j;
  private final String[] k;

  protected final void a(fy paramfy, fl<ea>.fo paramfl)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("skip_oob", false);
    localBundle.putStringArray("request_visible_actions", this.j);
    if (this.k != null)
      localBundle.putStringArray("required_features", this.k);
    paramfy.a(new ej(this, paramfl), 3136100, this.f, this.g, h(), this.h, localBundle);
  }

  public final void a(b paramb, Uri paramUri, int paramInt)
  {
    l();
    Bundle localBundle = new Bundle();
    localBundle.putInt("bounding_box", paramInt);
    eh localeh = new eh(this, paramb);
    try
    {
      ((ea)m()).a(localeh, paramUri, localBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localeh.a(8, null, null);
    }
  }

  public final void a(c paramc, String paramString)
  {
    l();
    ek localek = new ek(this, paramc);
    try
    {
      ((ea)m()).a(localek, paramString);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localek.a(8, null, null);
    }
  }

  protected final String b()
  {
    return "com.google.android.gms.plus.service.START";
  }

  protected final String c()
  {
    return "com.google.android.gms.plus.internal.IPlusService";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eg
 * JD-Core Version:    0.6.2
 */