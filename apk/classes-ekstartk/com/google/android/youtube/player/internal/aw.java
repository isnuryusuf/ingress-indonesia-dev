package com.google.android.youtube.player.internal;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.View;
import com.google.android.youtube.player.f;

public final class aw
  implements f
{
  private e a;
  private i b;

  public aw(e parame, i parami)
  {
    this.a = ((e)c.a(parame, "connectionClient cannot be null"));
    this.b = ((i)c.a(parami, "embeddedPlayer cannot be null"));
  }

  public final View a()
  {
    try
    {
      View localView = (View)be.a(this.b.s());
      return localView;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void a(Configuration paramConfiguration)
  {
    try
    {
      this.b.a(paramConfiguration);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void a(com.google.android.youtube.player.i parami)
  {
    try
    {
      this.b.a(new ax(this, parami));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void a(String paramString)
  {
    try
    {
      this.b.b(paramString, 0);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.b.a(paramBoolean);
      this.a.a(paramBoolean);
      this.a.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      boolean bool = this.b.a(paramInt, paramKeyEvent);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final boolean a(Bundle paramBundle)
  {
    try
    {
      boolean bool = this.b.a(paramBundle);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void b()
  {
    try
    {
      this.b.m();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void b(boolean paramBoolean)
  {
    try
    {
      this.b.e(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      boolean bool = this.b.b(paramInt, paramKeyEvent);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void c()
  {
    try
    {
      this.b.n();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void d()
  {
    try
    {
      this.b.o();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void e()
  {
    try
    {
      this.b.p();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void f()
  {
    try
    {
      this.b.q();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final void g()
  {
    try
    {
      this.b.l();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }

  public final Bundle h()
  {
    try
    {
      Bundle localBundle = this.b.r();
      return localBundle;
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(localRemoteException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.internal.aw
 * JD-Core Version:    0.6.2
 */