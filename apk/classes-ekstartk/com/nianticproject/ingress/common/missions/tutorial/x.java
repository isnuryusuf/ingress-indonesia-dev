package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.google.a.a.aj;
import com.google.a.a.an;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.h;
import com.nianticproject.ingress.common.missions.af;
import com.nianticproject.ingress.common.missions.cl;
import com.nianticproject.ingress.common.missions.cq;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.shared.ai;
import java.util.List;

public final class x extends af
  implements u
{
  private static final d a = new com.nianticproject.ingress.common.w.f("NEXT_TUTORIAL_STEP_EVENT");
  private final com.nianticproject.ingress.common.scanner.e b;
  private final ac c;
  private r d;
  private TextureAtlas e;
  private com.nianticproject.ingress.gameentity.f f;

  public x(cq paramcq, com.nianticproject.ingress.common.g.ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.scanner.e parame, com.nianticproject.ingress.common.c.e parame1, com.nianticproject.ingress.common.a parama, com.nianticproject.ingress.common.ui.elements.i parami, com.nianticproject.ingress.common.model.a.e parame2)
  {
    super(paramcq, paramad, paramm, paramk, paramk1, parame1, parama, parami, parame2);
    this.b = parame;
    this.c = paramk1.p();
  }

  private void d(boolean paramBoolean)
  {
    cl localcl = this.i.s_();
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      localcl.a(bool);
      if (!paramBoolean)
        break;
      this.m.a(this.d);
      return;
    }
    this.d.e();
  }

  public final TextureRegion a(String paramString)
  {
    return (TextureRegion)an.a(this.e.findRegion(paramString), "Unable to find image " + paramString);
  }

  public final com.nianticproject.ingress.gameentity.f a()
  {
    return this.f;
  }

  public final void a(ModalDialog paramModalDialog)
  {
    super.a(paramModalDialog);
    paramModalDialog.a(new y(this));
  }

  protected final void a(com.nianticproject.ingress.common.w.c paramc)
  {
    p localp = new p(this);
    ad localad = new ad(this, this.k, this.j);
    ab localab = new ab(this, this.k, com.nianticproject.ingress.common.g.p.a().s(), com.nianticproject.ingress.common.g.p.a().y());
    aa localaa1 = new aa(this, 1);
    j localj = new j(this);
    l locall = new l(this, this.c);
    g localg = new g(this, this.b);
    i locali = new i(this, this.l, this.k);
    aa localaa2 = new aa(this, 2);
    e locale = new e(this);
    a locala = new a(this);
    c localc = new c(this);
    paramc.a(localp);
    paramc.a(localp, a, localad);
    paramc.a(localad, a, localab);
    paramc.a(localab, ab.a, localaa1);
    paramc.a(localaa1, a, localj);
    paramc.a(localj, a, locall);
    paramc.a(locall, a, localg);
    paramc.a(localg, a, locali);
    paramc.a(locali, i.a, localaa2);
    paramc.a(localaa2, a, locale);
    paramc.a(locale, a, locala);
    paramc.a(locala, a.a, localc);
    paramc.a(localc, a, this.s);
  }

  public final void a(d paramd)
  {
    t().a(paramd);
  }

  public final void a(String paramString, aj<byte[]> paramaj)
  {
    com.google.a.d.u localu = com.nianticproject.ingress.shared.b.a.b(this.k.g().a(), 0.0D, 15.0D);
    this.f = this.j.a(localu, ai.c, 0, 0, 0, null, paramString, null);
    if (paramaj.a())
      this.f.add(new TutorialMission.2(this, paramaj));
  }

  public final void c()
  {
    super.c();
    this.d = new r(t());
    d(true);
    this.k.a(600L, z.d);
    com.nianticproject.ingress.common.g.p.a().y().a(false);
  }

  public final void h()
  {
    super.h();
    d(false);
    com.nianticproject.ingress.common.g.p.a().y().a(true);
    if (this.e != null)
      this.e.dispose();
  }

  public final String q()
  {
    return "Agent Training";
  }

  public final List<String> r()
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.x
 * JD-Core Version:    0.6.2
 */