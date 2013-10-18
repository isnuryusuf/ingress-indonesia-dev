package com.nianticproject.ingress;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.google.a.a.an;
import com.nianticproject.ingress.common.o;
import com.nianticproject.ingress.n.x;
import com.nianticproject.ingress.o.a;
import com.nianticproject.ingress.o.b;
import com.nianticproject.ingress.shared.aj;

final class dp
  implements x
{
  private dp(dj paramdj)
  {
  }

  public final void a()
  {
    dj.e(this.a).finish();
  }

  public final void a(o paramo)
  {
    try
    {
      aj.a("PregameAppListener.SignOnEventListener.onSignOnSuccess");
      a.a(b.c);
      dj.a(this.a, (o)an.a(paramo));
      this.a.c();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(String paramString)
  {
    Intent localIntent;
    if (paramString != null)
    {
      localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(paramString));
      if (!ec.a(dj.e(this.a), localIntent));
    }
    while (true)
    {
      if (localIntent == null)
      {
        localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse("http://www.nianticproject.com"));
      }
      dj.e(this.a).startActivity(localIntent);
      dj.e(this.a).finish();
      return;
      localIntent = null;
      continue;
      localIntent = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.dp
 * JD-Core Version:    0.6.2
 */