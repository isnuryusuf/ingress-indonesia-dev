package com.nianticproject.ingress.service;

import android.content.Context;
import android.content.Intent;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.shared.q;

final class h
{
  private final Intent a;

  public h(Intent paramIntent)
  {
    this.a = paramIntent;
  }

  public static Intent a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 2; ; i = 1)
    {
      Intent localIntent = NemesisService.a(paramContext, i);
      localIntent.putExtra("nickname", paramString);
      localIntent.putExtra("success", false);
      return localIntent;
    }
  }

  public final String a()
  {
    return this.a.getStringExtra("nickname");
  }

  public final void a(i parami)
  {
    if (this.a.getBooleanExtra("success", false))
    {
      if (NemesisService.d(this.a) == 2)
      {
        NemesisService.e(this.a);
        a();
        parami.f();
        return;
      }
      NemesisService.f(this.a);
      a();
      parami.e();
      return;
    }
    NemesisService.g(this.a);
    if (!this.a.getBooleanExtra("exception", false));
    for (q localq = (q)this.a.getSerializableExtra("error"); ; localq = null)
    {
      parami.a(localq);
      return;
    }
  }

  public final void a(q paramq)
  {
    this.a.putExtra("error", paramq);
    this.a.putExtra("success", false);
    this.a.removeExtra("exception");
  }

  public final void b()
  {
    c.e(a());
    this.a.putExtra("success", true);
    this.a.removeExtra("error");
    this.a.removeExtra("exception");
  }

  public final void c()
  {
    this.a.putExtra("exception", true);
    this.a.putExtra("success", false);
    this.a.removeExtra("error");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.h
 * JD-Core Version:    0.6.2
 */