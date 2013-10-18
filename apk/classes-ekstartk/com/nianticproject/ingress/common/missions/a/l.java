package com.nianticproject.ingress.common.missions.a;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.c.ak;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.missions.cl;
import com.nianticproject.ingress.common.missions.cq;
import com.nianticproject.ingress.common.missions.cs;
import com.nianticproject.ingress.common.missions.ct;
import com.nianticproject.ingress.common.ui.b.k;
import com.nianticproject.ingress.common.ui.e.b;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.z;
import java.util.List;

public class l extends k
  implements cq
{
  private final r b;
  private final e c;
  private final ak d;
  private TextureRegion e;
  private TextureRegion f;

  public l(r paramr, e parame, ak paramak)
  {
    super("MissionBriefingActivity");
    this.b = paramr;
    this.c = parame;
    this.d = paramak;
  }

  private void a(float paramFloat, Runnable paramRunnable)
  {
    this.b.B().b();
    this.b.s();
    J().a(paramFloat, new p(this, paramRunnable));
  }

  public final void a()
  {
    super.a();
    this.d.a(false);
    this.c.b(true);
    Gdx.graphics.getGL20().glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
  }

  public final void a(cs paramcs, List<String> paramList, String paramString1, String paramString2, float paramFloat, z paramz1, z paramz2, boolean paramBoolean)
  {
    a(0.2F, new n(this, paramList, paramString1, paramString2, paramFloat, paramz1, paramz2, paramBoolean, paramcs));
  }

  public final void a(ct paramct, String paramString, float paramFloat, z paramz1, z paramz2, boolean paramBoolean)
  {
    a(1.4F, new o(this, paramString, paramFloat, paramz1, paramz2, paramBoolean, paramct));
  }

  public final void a(z paramz)
  {
    a(0.2F, new m(this, paramz));
  }

  public final void b(Skin paramSkin)
  {
    super.b(paramSkin);
    this.f = c.a(paramSkin, "ada_wheel_large_inner");
    this.e = c.a(paramSkin, "ada_wheel_large_outer");
  }

  public final void c()
  {
    J().a(0.2F, new q(this));
  }

  protected final String d()
  {
    return "MissionBriefingActivity";
  }

  public final void e()
  {
    this.d.a(true);
    this.c.b(false);
    super.e();
  }

  protected final boolean f()
  {
    return true;
  }

  public final boolean l_()
  {
    this.b.j();
    return true;
  }

  public final void q_()
  {
    super.q_();
  }

  public final cl s_()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.l
 * JD-Core Version:    0.6.2
 */