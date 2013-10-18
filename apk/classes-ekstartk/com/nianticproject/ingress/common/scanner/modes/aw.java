package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.e;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.an;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.itemupgrade.n;
import com.nianticproject.ingress.common.itemupgrade.o;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ah;
import com.nianticproject.ingress.common.ui.widget.al;
import com.nianticproject.ingress.common.ui.widget.d;
import com.nianticproject.ingress.gameentity.components.ModResource;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.Mod;

final class aw extends aa
{
  public al a;
  public o e;
  private Skin g;
  private Button.ButtonStyle h;
  private Button.ButtonStyle i;
  private final Button[] j = new Button[4];
  private final ah[] k = new ah[4];
  private final Image[] l = new Image[4];
  private final EventListener[] m = new EventListener[4];
  private final av n = new av(this.f, (byte)0);
  private int o = -1;
  private Actor p;

  public aw(at paramat)
  {
    super("INSTALL");
  }

  private void a(int paramInt)
  {
    if (c(paramInt))
      return;
    if ((this.o != paramInt) || (!(this.e instanceof com.nianticproject.ingress.common.itemupgrade.l)))
    {
      this.o = paramInt;
      f();
      a(new com.nianticproject.ingress.common.itemupgrade.l(at.b(this.f), paramInt, at.c(this.f), at.d(this.f), at.e(this.f), this.f.c.K(), this.n));
    }
    if (at.f(this.f))
    {
      if ((!at.g(this.f)) && ((this.e instanceof com.nianticproject.ingress.common.itemupgrade.l)))
      {
        this.c.b().a(true, "INSTALL", null);
        ((com.nianticproject.ingress.common.itemupgrade.l)this.e).a(this.c);
        ((com.nianticproject.ingress.common.itemupgrade.l)this.e).b();
      }
      this.d.b(true);
      return;
    }
    this.d.b(false);
  }

  private void a(o paramo)
  {
    g();
    if (paramo == null)
    {
      this.f.b(0.0F, -0.3F);
      this.n.a(null);
      this.e = paramo;
      if (this.e != null)
        break label156;
    }
    label156: for (this.p = null; ; this.p = this.e.a(this.g))
    {
      if (this.p != null)
      {
        this.p.setWidth(Gdx.graphics.getWidth());
        this.p.setX(0.0F);
        this.p.setY(0.18F * Gdx.graphics.getHeight());
        this.p.getColor().a = 0.0F;
        this.p.addAction(Actions.fadeIn(0.25F));
        this.f.c.K().a().addActor(this.p);
      }
      return;
      this.f.b(-0.3F, 0.005F);
      break;
    }
  }

  private void b(int paramInt)
  {
    if (!c(paramInt))
      return;
    if ((this.o != paramInt) || (!(this.e instanceof n)))
    {
      this.o = paramInt;
      f();
      a(new n(at.b(this.f), paramInt, at.d(this.f), at.e(this.f), this.f.c.K()));
    }
    this.d.b(false);
  }

  private void c()
  {
    this.o = -1;
    f();
    a(null);
    this.d.b(false);
  }

  private boolean c(int paramInt)
  {
    Portal localPortal = (Portal)at.b(this.f).getComponent(Portal.class);
    return (localPortal != null) && (localPortal.getLinkedMod(paramInt) != null);
  }

  private void f()
  {
    Portal localPortal = (Portal)at.b(this.f).getComponent(Portal.class);
    boolean bool = localPortal.canTeamLinkMods(at.d(this.f).h());
    float f1 = 0.008F * Gdx.graphics.getHeight();
    this.h = ((Button.ButtonStyle)this.g.get("item-outline", Button.ButtonStyle.class));
    this.i = ((Button.ButtonStyle)this.g.get("item-disabled", Button.ButtonStyle.class));
    Color localColor = ea.a(b.a(at.b(this.f)));
    int i1 = 0;
    if (i1 < this.j.length)
    {
      Mod localMod = localPortal.getLinkedMod(i1);
      Button localButton = this.j[i1];
      localButton.removeListener(this.m[i1]);
      Button.ButtonStyle localButtonStyle;
      if (localMod == null)
        if (bool)
        {
          localButtonStyle = this.h;
          label164: localButton.clear();
          localButton.add(g.a()).g(f1);
          localButton.setStyle(localButtonStyle);
          ax localax = new ax(this, bool, i1);
          this.m[i1] = localax;
          localButton.addListener(localax);
          this.k[i1].addAction(Actions.fadeOut(0.5F));
          label235: if (this.o != i1)
            break label477;
          this.l[i1].clearActions();
          this.l[i1].addAction(Actions.fadeIn(0.25F));
        }
      while (true)
      {
        i1++;
        break;
        localButtonStyle = this.i;
        break label164;
        Drawable localDrawable = g.a(localMod.buildModResource().getResourceType(), localMod.getRarity());
        localButton.clear();
        localButton.add(new Image(localDrawable, Scaling.fit)).n().f().g(com.nianticproject.ingress.common.w.l.a(1.0F));
        localButton.setStyle(com.nianticproject.ingress.common.ui.l.a(this.g, true));
        ay localay = new ay(this, i1);
        this.m[i1] = localay;
        localButton.addListener(localay);
        this.k[i1].a(localMod.getInstallingUser());
        float f2 = this.k[i1].getColor().a;
        this.k[i1].getColor().set(localColor.r, localColor.g, localColor.b, f2);
        this.k[i1].clearActions();
        this.k[i1].addAction(Actions.fadeIn(0.5F));
        break label235;
        label477: this.l[i1].clearActions();
        this.l[i1].addAction(Actions.fadeOut(0.5F));
      }
    }
  }

  private void g()
  {
    o localo;
    boolean bool;
    if (this.e != null)
    {
      localo = this.e;
      Actor localActor = this.p;
      if (localo == null)
        break label76;
      bool = true;
      an.a(bool);
      if (localActor == null)
        break label81;
      localActor.clearActions();
      localActor.addAction(Actions.sequence(Actions.fadeOut(0.25F), Actions.run(new az(this, localActor, localo))));
    }
    while (true)
    {
      this.e = null;
      this.p = null;
      a(null);
      return;
      label76: bool = false;
      break;
      label81: localo.c();
    }
  }

  protected final void a()
  {
    if ((this.o >= 0) && (!at.g(this.f)) && ((this.e instanceof com.nianticproject.ingress.common.itemupgrade.l)))
      at.h(this.f);
  }

  protected final void a(Skin paramSkin, Stage paramStage, Table paramTable)
  {
    paramTable.row().o().g();
    Table localTable1 = new Table();
    localTable1.defaults().o().j();
    for (int i1 = 0; i1 < this.j.length; i1++)
    {
      Image localImage1 = g.a();
      this.j[i1] = new d(localImage1, com.nianticproject.ingress.common.ui.l.a(this.g, false));
      Image localImage2 = new Image(new com.nianticproject.ingress.common.ui.widget.az(new NinePatchDrawable(this.g.getPatch("item-button-selection")), 16762974));
      this.l[i1] = localImage2;
      Table localTable2 = new Table();
      this.l[i1].addAction(Actions.alpha(0.0F));
      localTable2.add(this.j[i1]).g(com.nianticproject.ingress.common.w.l.a(3.0F)).f().n();
      com.a.a.c localc2 = localTable1.stack(new Actor[] { localImage2, localTable2 });
      localc2.b(0.14F * Gdx.graphics.getHeight());
      localc2.c(0.14F * Gdx.graphics.getHeight());
      localc2.n().f();
      if (i1 == 0)
        localc2.f(e.a(0.04F));
      if (i1 == -1 + this.j.length)
        localc2.h(e.a(0.04F));
    }
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)this.g.get("owner-tag", Label.LabelStyle.class);
    localLabelStyle.font.getLineHeight();
    localTable1.row();
    for (int i2 = 0; i2 < this.j.length; i2++)
    {
      this.k[i2] = new ah(at.e(this.f), localLabelStyle);
      this.k[i2].addAction(Actions.alpha(0.0F));
      com.a.a.c localc1 = localTable1.add(this.k[i2]).b(this.j[0].getWidth()).c(1.1F * localLabelStyle.font.getLineHeight());
      if (i2 == 0)
        localc1.f(e.a(0.04F));
      if (i2 == -1 + this.j.length)
        localc1.h(e.a(0.04F));
    }
    paramTable.add(localTable1).g().o();
    paramTable.row();
    this.a = new al(paramSkin, 4);
    this.a.defaults().k();
    Drawable localDrawable = com.nianticproject.ingress.common.b.c.a(paramSkin, ea.b);
    this.a.a(localDrawable);
    a(null);
    paramTable.add(this.a).n().a(e.a(0.65F)).m().j().h(10.0F).j(10.0F);
    super.a(paramSkin, paramStage, paramTable);
    this.c.b().a(true);
    this.d.a(false);
    f();
    c();
  }

  public final void a(Modable paramModable)
  {
    if (paramModable == null);
    for (Modable localModable = (Modable)at.b(this.f).getComponent(Modable.class); ; localModable = paramModable)
    {
      Color localColor = ea.H[((Portal)at.b(this.f).getComponent(Portal.class)).getLevel()];
      if (this.o >= 0)
      {
        Mod localMod = localModable.getLinkedMod(this.o);
        if (localMod != null)
          localColor = com.nianticproject.ingress.common.ui.l.a(this.g, localMod.getRarity());
      }
      this.a.a(com.nianticproject.ingress.common.b.c.a(this.g.getDrawable("stats-rarity-bg"), localColor));
      this.a.a(at.d(this.f).h(), at.b(this.f), localColor, localModable, null);
      return;
    }
  }

  public final void a(String paramString)
  {
    at.a(this.f, true);
    this.c.b().b(paramString);
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    this.g = paramSkin;
    Actor localActor = super.b(paramSkin, paramStage);
    localActor.setHeight(0.77F * paramStage.getHeight());
    return localActor;
  }

  protected final void b()
  {
    this.f.c();
  }

  public final void e()
  {
    g();
    super.e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.aw
 * JD-Core Version:    0.6.2
 */