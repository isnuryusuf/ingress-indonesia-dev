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
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.d;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import com.nianticproject.ingress.shared.rpc.q;
import java.util.List;

final class ap
  implements bj, ac
{
  private final ab a;
  private final av b;
  private final boolean c;
  private bk d;
  private DisplayedAchievement e;
  private al f;
  private z g;
  private Actor h;
  private Actor i;
  private Actor j;
  private Label k;
  private TextButton l;
  private Label m;
  private ClickListener n;
  private final ClickListener o = new aq(this);

  public ap(ab paramab, DisplayedAchievement paramDisplayedAchievement, av paramav, boolean paramBoolean)
  {
    this.a = ((ab)an.a(paramab));
    this.e = paramDisplayedAchievement;
    this.b = ((av)an.a(paramav));
    this.c = paramBoolean;
  }

  private void a(ClickListener paramClickListener)
  {
    if (this.n != null)
    {
      this.l.removeListener(this.n);
      this.n = null;
    }
    if (paramClickListener != null)
    {
      this.l.addListener(paramClickListener);
      this.n = paramClickListener;
    }
  }

  public final void a()
  {
    this.g.a();
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    Table localTable1 = new Table();
    localTable1.setWidth(paramStage.getWidth());
    localTable1.setHeight(paramStage.getHeight());
    Table localTable2 = new Table();
    this.f = new al(this.b, paramStage, paramSkin, this.c);
    localTable2.add(this.f).o().g().h(24.0F);
    localTable2.row();
    localTable2.add(new Image(com.nianticproject.ingress.common.b.c.a(paramSkin, 46783))).c(l.a(2.0F)).o().g();
    localTable2.row();
    Table localTable3 = new Table();
    this.m = new Label("", (Label.LabelStyle)paramSkin.get("profiles-select-badge-for-details", Label.LabelStyle.class));
    paramSkin.get("default", TextButton.TextButtonStyle.class);
    localTable3.add(this.m);
    localTable2.add(localTable3).h(l.a(16.0F)).j(l.a(16.0F));
    localTable2.row();
    float f1 = l.a(24.0F);
    this.g = new z(this.a, paramSkin, this.b, null, Integer.valueOf(5), localTable1.getWidth(), f1, 0.0F, 0.0F);
    Table localTable4 = new Table();
    localTable4.top();
    localTable4.add(this.g).o().g().k(f1);
    ScrollPane localScrollPane = new ScrollPane(localTable4, (ScrollPane.ScrollPaneStyle)paramSkin.get("profiles", ScrollPane.ScrollPaneStyle.class));
    localScrollPane.setScrollingDisabled(true, false);
    localScrollPane.setFadeScrollBars(false);
    localTable2.add(localScrollPane).f().n();
    Table localTable5 = new Table();
    localTable5.setBackground(com.nianticproject.ingress.common.b.c.a(paramSkin, 0));
    ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
    localProgressIndicator.a(true);
    localTable5.add(localProgressIndicator).i();
    Table localTable6 = new Table();
    this.k = new Label("", (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class));
    localTable6.add(this.k).i();
    this.l = new f("", (TextButton.TextButtonStyle)paramSkin.get("default", TextButton.TextButtonStyle.class));
    localTable6.row();
    localTable6.add(this.l).i().h(l.a(8.0F));
    this.h = localTable5;
    this.i = localTable2;
    this.j = localTable6;
    Table localTable7 = new Table();
    d locald = new d(paramSkin, "ops-close");
    locald.addListener(new ar(this));
    localTable7.add(locald).n().k().j();
    Actor[] arrayOfActor = new Actor[4];
    arrayOfActor[0] = this.i;
    arrayOfActor[1] = this.h;
    arrayOfActor[2] = this.j;
    arrayOfActor[3] = localTable7;
    localTable1.stack(arrayOfActor).f().n();
    paramStage.addActor(localTable1);
  }

  public final void a(bi parambi)
  {
    String str = parambi.d();
    bw localbw = parambi.e();
    this.i.setVisible(false);
    this.h.setVisible(false);
    this.j.setVisible(false);
    switch (au.a[localbw.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (localbw != bw.b)
    {
      return;
      this.h.setVisible(true);
      continue;
      PlayerProfile localPlayerProfile = parambi.f();
      this.f.a(str, localPlayerProfile, parambi.g());
      this.g.a(localPlayerProfile, this.g.b());
      this.i.setVisible(true);
      continue;
      this.j.setVisible(true);
      q localq = parambi.h();
      if ((localq != null) && (localq != q.b))
      {
        this.k.setText(com.nianticproject.ingress.common.ui.c.a().a(localq));
        this.l.setText("CLOSE");
        a(new as(this));
      }
      else
      {
        this.k.setText("Error, please try again.");
        this.l.setText("RETRY");
        a(new at(this));
      }
    }
    switch (au.a[parambi.j().ordinal()])
    {
    default:
      return;
    case 1:
      List localList3 = parambi.k();
      if (this.g.a(localList3, this.e, false))
        this.e = null;
      this.m.setText(PlayerProfileStyles.TEXT_WHILE_LOADING_MORE_BADGES);
      this.m.removeListener(this.o);
      return;
    case 2:
      List localList2 = parambi.k();
      if (this.g.a(localList2, this.e, true))
        this.e = null;
      this.m.setText("Select a medal for details");
      this.m.removeListener(this.o);
      return;
    case 3:
    }
    List localList1 = parambi.k();
    if (this.g.a(localList1, this.e, true))
      this.e = null;
    this.m.setText("Error, please try again.");
    this.m.addListener(this.o);
  }

  public final void a(bk parambk)
  {
    this.d = parambk;
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.f.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.ap
 * JD-Core Version:    0.6.2
 */