package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.inventory.i;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;

public class ao extends com.nianticproject.ingress.common.ui.a
{
  private final ax a;
  private final bi b;
  private final bd c;
  private final bc d;
  private String e;

  public ao(String paramString, av paramav, ax paramax, i parami, boolean paramBoolean)
  {
    super("PlayerProfileActivity");
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.e = paramString;
      this.a = ((ax)an.a(paramax));
      this.b = new ae(paramString);
      this.c = new bd(k(), paramav, parami);
      this.d = new bc(this.a, this.b, this.c, paramav, false, paramBoolean);
      K().a(this.c);
      return;
    }
  }

  public static boolean l()
  {
    return q.f().b(com.nianticproject.ingress.common.p.a.a());
  }

  public static boolean m()
  {
    return q.f().e(com.nianticproject.ingress.common.p.a.a());
  }

  public final void a()
  {
    Gdx.gl.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
    this.c.a();
    this.d.a(this.e, false);
  }

  protected String d()
  {
    return "PlayerProfileActivity";
  }

  protected boolean k()
  {
    return false;
  }

  public final void n()
  {
    this.b.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.ao
 * JD-Core Version:    0.6.2
 */