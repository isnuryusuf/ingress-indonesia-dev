package com.nianticproject.ingress.n;

import android.content.Context;
import android.text.TextUtils;
import com.nianticproject.ingress.common.o;
import com.nianticproject.ingress.common.p;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.connectivity.b;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.o.a;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.shared.aj;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class s extends com.nianticproject.ingress.service.j
  implements b, q
{
  private static final AtomicBoolean k = new AtomicBoolean(false);
  private final aa a = new aa(s.class);
  private final Context b;
  private final android.support.v4.app.j c;
  private final ab d;
  private final x e;
  private final z f;
  private boolean g;
  private boolean h;
  private f i = null;
  private Map<String, String> j;
  private final ad l = new t(this);

  public s(Context paramContext, android.support.v4.app.j paramj, ab paramab, x paramx)
  {
    this.b = paramContext;
    this.c = paramj;
    this.d = paramab;
    this.e = paramx;
    this.f = new z(paramContext, paramab);
  }

  private void c(boolean paramBoolean)
  {
    try
    {
      aj.a("SignOnController.performHandshake");
      ab localab = this.d;
      if (paramBoolean);
      for (ae localae = ae.k; ; localae = ae.l)
      {
        localab.a(localae);
        new w(this, null, false).e();
        NemesisService.a(this.b);
        return;
      }
    }
    finally
    {
      aj.b();
    }
  }

  private void p()
  {
    this.g = true;
    this.e.a(new o(c.f(null), this.i, this.j, this.d.d()));
  }

  private void q()
  {
    ae localae = this.d.a();
    if (localae == null)
      if (c.k() != null)
        break label81;
    label81: for (boolean bool = true; ; bool = false)
    {
      localae = ae.a(bool);
      this.a.a("startHandshake: state=%s", new Object[] { localae });
      switch (u.c[localae.ordinal()])
      {
      default:
        return;
      case 14:
      case 15:
      case 16:
      case 17:
      }
    }
    c(true);
    return;
    c(false);
    return;
    a();
    return;
    b_(this.d.b());
  }

  public final void a()
  {
    this.d.a(ae.h);
    NemesisService.b(this.b, this.d.b());
  }

  public final void a(com.nianticproject.ingress.shared.q paramq)
  {
    aa localaa = this.a;
    Object[] arrayOfObject = new Object[1];
    String str;
    ab localab;
    if (paramq == null)
    {
      str = "RPC exception";
      arrayOfObject[0] = str;
      localaa.a("onNicknameError(reason=%s)", arrayOfObject);
      if (paramq != null)
        break label83;
      localab = this.d;
      if (this.d.a() != ae.d)
        break label75;
    }
    label75: for (ae localae = ae.e; ; localae = ae.i)
    {
      localab.a(localae);
      return;
      str = paramq.name();
      break;
    }
    label83: switch (u.b[paramq.ordinal()])
    {
    default:
      return;
    case 1:
      this.d.a(ae.p);
      return;
    case 2:
      this.d.a(ae.u);
      return;
    case 3:
      this.d.a(ae.q);
      return;
    case 4:
      this.d.a(ae.r);
      return;
    case 5:
      this.d.a(ae.s);
      return;
    case 6:
    }
    this.d.a(ae.t);
  }

  public final void a(boolean paramBoolean)
  {
    aa localaa = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localaa.a("onConnectivityChanged(hasConnectivity=%s)", arrayOfObject);
  }

  public final void b()
  {
    this.d.a(ae.f);
  }

  public final void b(String paramString)
  {
    this.e.a(paramString);
  }

  public final void b(boolean paramBoolean)
  {
    this.d.a(ae.l);
    ab localab = this.d;
    if (paramBoolean);
    for (p localp = p.a; ; localp = p.b)
    {
      localab.a(localp);
      new w(this, null, true).e();
      return;
    }
  }

  public final void b_(String paramString)
  {
    this.d.a(paramString);
    this.d.a(ae.d);
    NemesisService.a(this.b, paramString);
  }

  public final void c()
  {
    switch (u.c[this.d.a().ordinal()])
    {
    default:
      throw new IllegalStateException("Unsupported state");
    case 1:
      b_(this.d.b());
      return;
    case 2:
      a();
      return;
    case 3:
    case 4:
      a.b(this.b);
      return;
    case 5:
      p();
      return;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      this.d.a(ae.f);
      return;
    case 12:
    }
    this.d.a(ae.a);
  }

  public final void c(String paramString)
  {
    this.d.a(ae.l);
    new w(this, paramString, false).e();
  }

  public final void d()
  {
    this.e.a();
  }

  public final void e()
  {
    this.a.a("Nickname validated");
    this.d.a(ae.g);
  }

  public final void f()
  {
    this.a.a("Nickname persisted");
    this.d.a(ae.j);
  }

  public final void g()
  {
    if (TextUtils.isEmpty(c.f(null)))
    {
      this.d.a(ae.c);
      return;
    }
    p();
  }

  public final void h()
  {
    ec.a("onUiSequenceDone");
    aa localaa = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.d.a();
    localaa.a("onUiSequenceDone: state=%s", arrayOfObject);
    switch (u.c[this.d.a().ordinal()])
    {
    default:
      return;
    case 13:
    }
    p();
  }

  public final void i()
  {
    this.d.a(ae.w);
    new v(this, (byte)0).e();
  }

  public final void j()
  {
    d();
  }

  public final void k()
  {
    try
    {
      aj.a("SignOnController.onHandshakeDone");
      ec.a("start");
      if (!this.h)
      {
        this.g = false;
        this.h = true;
        this.d.a(this.l);
        q();
      }
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void l()
  {
    ec.a("start");
    if (this.h)
    {
      this.h = false;
      this.d.b(this.l);
      this.c.a().b(this.c.a(2131230838)).b();
    }
  }

  public final void m()
  {
    try
    {
      aj.a("SignOnController.onResume");
      ec.a("onResume");
      boolean bool = this.h;
      if (!bool)
        return;
      q();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final boolean n()
  {
    return this.g;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.s
 * JD-Core Version:    0.6.2
 */