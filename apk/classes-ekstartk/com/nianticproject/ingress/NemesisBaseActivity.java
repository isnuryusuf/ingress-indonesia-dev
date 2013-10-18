package com.nianticproject.ingress;

import android.accounts.Account;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.j.c;
import com.nianticproject.ingress.o.h;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.service.i;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.q;
import com.nianticproject.ingress.ui.aj;
import com.nianticproject.ingress.ui.d;
import java.io.File;

public abstract class NemesisBaseActivity extends FragmentActivity
  implements c, i, d
{
  protected final aa a = new aa(getClass());
  protected Account b;

  protected abstract String a();

  public void a(int paramInt)
  {
  }

  public void a(int paramInt1, int paramInt2, String paramString)
  {
    com.nianticproject.ingress.j.a.a(getSupportFragmentManager(), paramString, this);
  }

  public final void a(int paramInt, com.nianticproject.ingress.shared.rpc.u paramu)
  {
  }

  public final void a(int paramInt, String paramString)
  {
  }

  public final void a(long paramLong)
  {
  }

  public final void a(long paramLong, Object paramObject)
  {
  }

  public void a(Uri paramUri)
  {
  }

  public void a(Uri paramUri1, Uri paramUri2, Bitmap paramBitmap)
  {
  }

  public void a(Uri paramUri, com.google.a.d.u paramu)
  {
  }

  public void a(Uri paramUri, h paramh)
  {
  }

  public final void a(q paramq)
  {
  }

  public void a(File paramFile)
  {
  }

  public void a(String paramString)
  {
  }

  public void a(String paramString, Bitmap paramBitmap)
  {
  }

  public void b(int paramInt)
  {
  }

  public void b(String paramString)
  {
    throw new UnsupportedOperationException("Did you forget to override onNudgePlayer?");
  }

  protected boolean b()
  {
    return true;
  }

  public void c(int paramInt)
  {
  }

  public void c(String paramString)
  {
    throw new UnsupportedOperationException("Did you forget to override onViewPlayerProfile?");
  }

  public final void e()
  {
  }

  public final void f()
  {
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    case 1000:
    }
    if (paramInt2 == -1)
    {
      Account localAccount = com.nianticproject.ingress.o.a.a(paramIntent);
      this.b = localAccount;
      com.nianticproject.ingress.o.a.a(localAccount);
      return;
    }
    this.b = null;
    finish();
  }

  protected void onPause()
  {
    NemesisService.b(this);
    super.onPause();
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    aj.a(this, findViewById(16908290), "coda.ttf");
  }

  protected void onResume()
  {
    super.onResume();
    if (b())
      com.nianticproject.ingress.common.a.a.a(a());
    Result localResult = com.nianticproject.ingress.o.a.f(this);
    if (localResult.e())
    {
      this.b = ((Account)localResult.c());
      if (!com.nianticproject.ingress.o.a.e(this))
        finish();
    }
    else
    {
      this.b = null;
      startActivityForResult((Intent)localResult.d(), 1000);
      return;
    }
    NemesisService.a(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.NemesisBaseActivity
 * JD-Core Version:    0.6.2
 */