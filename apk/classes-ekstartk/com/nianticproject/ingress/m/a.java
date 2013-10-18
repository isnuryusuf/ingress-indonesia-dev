package com.nianticproject.ingress.m;

import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.net.Uri;
import com.nianticproject.ingress.AttributionPageActivity;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.SoundBoardActivity;
import com.nianticproject.ingress.common.aa;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.playerprofile.ax;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.ui.elements.ay;
import com.nianticproject.ingress.common.ui.o;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.cq;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.service.CommService;

public final class a extends com.nianticproject.ingress.common.v.e
  implements aa
{
  private final NemesisActivity e;
  private final int f;
  private com.nianticproject.ingress.common.scanner.k g;
  private ay h;
  private boolean i;
  private cq j;

  public a(NemesisActivity paramNemesisActivity)
  {
    this.e = paramNemesisActivity;
    this.f = 1004;
  }

  private void B()
  {
    this.d.a(this.i);
  }

  private void a(com.nianticproject.ingress.shared.ai paramai)
  {
    com.nianticproject.ingress.common.v.ai localai;
    NemesisActivity localNemesisActivity;
    if (this.d != null)
    {
      localai = this.d;
      localNemesisActivity = this.e;
      if (paramai != com.nianticproject.ingress.shared.ai.b)
        break label41;
    }
    label41: for (int k = 2131296282; ; k = 2131296283)
    {
      localai.b(localNemesisActivity.getString(k));
      return;
    }
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.h = new ay();
      this.g.a(this.h);
    }
    while (true)
    {
      if (this.d != null)
        B();
      return;
      if (this.h != null)
      {
        this.g.b(this.h);
        this.h = null;
      }
    }
  }

  public final void A()
  {
    if (!this.i);
    for (boolean bool = true; ; bool = false)
    {
      this.i = bool;
      a(this.i);
      return;
    }
  }

  public final void a(Uri paramUri)
  {
    com.nianticproject.ingress.push.d.a(paramUri);
    this.d.e(com.nianticproject.ingress.push.d.c());
  }

  public final void a(t paramt, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.model.k paramk, r paramr, com.nianticproject.ingress.common.scanner.k paramk1, q paramq, com.nianticproject.ingress.common.model.d paramd, cq paramcq, ax paramax)
  {
    super.a(paramt, parame, paramk, paramr, paramq, paramd, paramax);
    this.a = paramk;
    this.b = paramr;
    this.g = paramk1;
    this.j = paramcq;
    paramk.a(new b(this));
  }

  public final void a(com.nianticproject.ingress.common.v.ai paramai)
  {
    super.a(paramai);
    paramai.a(com.nianticproject.ingress.common.s.c.b(""));
    a(this.a.h());
    B();
    paramai.c(ec.c(this.e));
    paramai.d(ec.a());
    paramai.e(com.nianticproject.ingress.push.d.c());
  }

  public final void b()
  {
  }

  public final void c()
  {
    com.nianticproject.ingress.common.s.c.a(this.i);
    a(false);
  }

  public final void f_()
  {
    this.i = com.nianticproject.ingress.common.s.c.g();
    a(this.i);
  }

  public final void r()
  {
    super.r();
    if (p.a().p().c())
    {
      this.j.c();
      CommService.b(this.e);
      return;
    }
    this.j.f_();
    CommService.a(this.e);
  }

  public final void t()
  {
    Intent localIntent = new Intent(this.e, SoundBoardActivity.class);
    this.e.startActivity(localIntent);
  }

  public final void u()
  {
    this.e.startActivity(new Intent(this.e, AttributionPageActivity.class));
  }

  public final void v()
  {
    this.e.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://support.google.com/ingress")));
  }

  public final void w()
  {
    com.nianticproject.ingress.common.a.a.b("Device", "signOut");
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.e);
    localBuilder.setTitle(2131296329);
    localBuilder.setMessage(2131296330);
    localBuilder.setPositiveButton(17039379, new c(this));
    localBuilder.setNegativeButton(17039369, null);
    this.e.runOnUiThread(new d(this, localBuilder));
  }

  public final void x()
  {
    this.e.a();
    Intent localIntent = com.nianticproject.ingress.push.d.d();
    this.e.startActivityForResult(localIntent, this.f);
  }

  public final void y()
  {
    if (this.a.h() == com.nianticproject.ingress.shared.ai.b);
    for (com.nianticproject.ingress.shared.ai localai = com.nianticproject.ingress.shared.ai.a; ; localai = com.nianticproject.ingress.shared.ai.b)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.e);
      NemesisActivity localNemesisActivity = this.e;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localai.a();
      localBuilder.setTitle(localNemesisActivity.getString(2131296346, arrayOfObject));
      localBuilder.setMessage(2131296330);
      localBuilder.setPositiveButton(17039379, new e(this, localai));
      localBuilder.setNegativeButton(17039369, null);
      this.e.runOnUiThread(new f(this, localBuilder));
      return;
    }
  }

  public final void z()
  {
    boolean bool;
    if (!com.nianticproject.ingress.common.s.c.t())
    {
      bool = true;
      com.nianticproject.ingress.common.s.c.c(bool);
      this.j.a(bool);
      this.d.d(bool);
      if (!bool)
        break label51;
    }
    label51: for (String str = "ParticleFilterOn"; ; str = "ParticleFilterOff")
    {
      com.nianticproject.ingress.common.a.a.a("ParticleFilter", str);
      return;
      bool = false;
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.m.a
 * JD-Core Version:    0.6.2
 */