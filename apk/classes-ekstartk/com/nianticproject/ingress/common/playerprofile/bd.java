package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.google.a.a.an;
import com.nianticproject.ingress.common.inventory.i;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.ag;
import com.nianticproject.ingress.common.ui.widget.d;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import com.nianticproject.ingress.shared.rpc.q;

final class bd
  implements bj, ac
{
  private final boolean a;
  private final av b;
  private final i c;
  private bk d;
  private aa e;
  private Table f;
  private Actor g;
  private Actor h;
  private Actor i;
  private Label j;
  private TextButton k;
  private al l;
  private z m;
  private af n;
  private ClickListener o;

  public bd(boolean paramBoolean, av paramav, i parami)
  {
    this.a = paramBoolean;
    this.b = ((av)an.a(paramav));
    this.c = parami;
  }

  private void a(ClickListener paramClickListener)
  {
    if (this.o != null)
    {
      this.k.removeListener(this.o);
      this.o = null;
    }
    if (paramClickListener != null)
    {
      this.k.addListener(paramClickListener);
      this.o = paramClickListener;
    }
  }

  public final void a()
  {
    if (this.e != null)
      this.e.a();
    this.m.a();
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.f = new Table();
    this.f.setWidth(paramStage.getWidth());
    this.f.setHeight(paramStage.getHeight());
    if (this.c != null)
    {
      this.e = new aa(paramSkin, (int)paramStage.getWidth(), this.c, ag.b);
      if (this.a)
      {
        this.f.add(this.e);
        this.f.row();
      }
    }
    Table localTable1 = this.f;
    float f1 = this.f.getWidth();
    Table localTable2 = new Table();
    localTable2.top();
    float f2 = l.a(24.0F);
    this.l = new al(this.b, paramStage, paramSkin, this.a);
    localTable2.add(this.l).o().g();
    this.m = new z(this.d, paramSkin, this.b, Integer.valueOf(2), Integer.valueOf(5), f1, f2, l.a(16.0F), l.a(16.0F));
    localTable2.row();
    localTable2.add(this.m).o().g().k(f2);
    this.m.setBackground(paramSkin.getTiledDrawable("tile-diag"));
    localTable2.row();
    localTable2.add(new Image(com.nianticproject.ingress.common.b.c.a(paramSkin, 46783))).c(l.a(2.0F)).o().g().k(f2);
    this.n = new af(paramSkin, f1, f2);
    localTable2.row();
    localTable2.add(this.n).o().g().k(f2);
    ScrollPane localScrollPane = new ScrollPane(localTable2, (ScrollPane.ScrollPaneStyle)paramSkin.get("profiles", ScrollPane.ScrollPaneStyle.class));
    localScrollPane.setScrollingDisabled(true, false);
    Table localTable3 = new Table();
    Table localTable4 = new Table();
    ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
    localProgressIndicator.a(true);
    localTable3.add(localProgressIndicator).i();
    this.j = new Label("", (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class));
    localTable4.add(this.j).i();
    this.k = new f("", (TextButton.TextButtonStyle)paramSkin.get("default", TextButton.TextButtonStyle.class));
    localTable4.row();
    localTable4.add(this.k).i().h(l.a(8.0F));
    Table localTable5 = new Table();
    this.g = localScrollPane;
    this.h = localTable3;
    this.i = localTable4;
    Table localTable6 = new Table();
    d locald = new d(paramSkin, "ops-close");
    locald.addListener(new be(this));
    localTable6.add(locald).n().k().j();
    if (!this.a);
    for (boolean bool = true; ; bool = false)
    {
      localTable6.setVisible(bool);
      Actor[] arrayOfActor = new Actor[4];
      arrayOfActor[0] = this.g;
      arrayOfActor[1] = this.h;
      arrayOfActor[2] = this.i;
      arrayOfActor[3] = localTable6;
      localTable5.stack(arrayOfActor).n().f();
      localTable1.add(localTable5).f().n();
      paramStage.addActor(this.f);
      return;
    }
  }

  public final void a(bi parambi)
  {
    String str = parambi.d();
    this.g.setVisible(false);
    this.h.setVisible(false);
    this.i.setVisible(false);
    switch (bh.a[parambi.e().ordinal()])
    {
    default:
      return;
    case 1:
      this.h.setVisible(true);
      return;
    case 2:
      PlayerProfile localPlayerProfile = parambi.f();
      this.l.a(str, localPlayerProfile, parambi.g());
      this.m.a(localPlayerProfile);
      this.n.a(localPlayerProfile.c());
      this.g.setVisible(true);
      return;
    case 3:
    }
    this.i.setVisible(true);
    q localq = parambi.h();
    if ((localq != null) && (localq != q.b))
    {
      this.j.setText(com.nianticproject.ingress.common.ui.c.a().a(localq));
      this.k.setText("CLOSE");
      a(new bf(this));
      return;
    }
    this.j.setText("Error, please try again.");
    this.k.setText("RETRY");
    a(new bg(this));
  }

  public final void a(bk parambk)
  {
    this.d = ((bk)an.a(parambk));
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.m.c();
    this.f.remove();
    this.l.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.bd
 * JD-Core Version:    0.6.2
 */