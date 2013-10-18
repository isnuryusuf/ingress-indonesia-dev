package com.nianticproject.ingress.common.factionchoice;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.GL20;
import com.google.a.a.an;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.c.ak;
import com.nianticproject.ingress.common.missions.cs;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.ui.n;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.z;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.ai;

public class d extends com.nianticproject.ingress.common.ui.b.k
{
  private static final aa b = new aa(d.class);
  private final ac c;
  private boolean d = false;
  private final ah e;
  private final com.nianticproject.ingress.common.c.e f;
  private final ak g;
  private ai h = null;
  private String i = null;

  public d(ac paramac, ah paramah, com.nianticproject.ingress.common.c.e parame, ak paramak)
  {
    super("Faction Choice");
    this.c = paramac;
    this.f = parame;
    this.g = paramak;
    this.e = ((ah)an.a(paramah));
  }

  private void b(Runnable paramRunnable)
  {
    J().a(0.2F, new k(this, paramRunnable));
  }

  public final void a()
  {
    super.a();
    this.g.a(false);
    this.f.b(true);
    Gdx.graphics.getGL20().glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
  }

  public final void a(az paramaz)
  {
    b(new f(this, paramaz));
  }

  public final void a(az paramaz, String paramString1, String paramString2)
  {
    b(new g(this, paramaz, paramString1, paramString2));
  }

  public final void a(ai paramai, cs paramcs, String paramString, float paramFloat, z paramz)
  {
    if ((paramai == ai.a) || (paramai == ai.b));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      b(new e(this, paramai, paramString, paramFloat, paramz, paramcs));
      return;
    }
  }

  public final void a(ai paramai, z paramz)
  {
    if ((paramai == ai.a) || (paramai == ai.b));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      b(new i(this, paramai, paramz));
      return;
    }
  }

  public final void a(String paramString)
  {
    b(new j(this, paramString));
  }

  public final void b(az paramaz, String paramString1, String paramString2)
  {
    b(new h(this, paramaz, paramString1, paramString2));
  }

  protected final String d()
  {
    return "FactionChoiceActivity";
  }

  public final void e()
  {
    this.g.a(true);
    this.f.b(false);
    super.e();
  }

  protected final boolean f()
  {
    return true;
  }

  public final void h()
  {
    this.d = false;
    J().a(0.2F, new l(this));
  }

  public final n k_()
  {
    if (this.d)
      return n.c;
    return n.a;
  }

  public final boolean l_()
  {
    this.c.b();
    return true;
  }

  public final void o_()
  {
    this.d = true;
    if ((this.h == null) || (this.i == null))
      new m(this).e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.d
 * JD-Core Version:    0.6.2
 */