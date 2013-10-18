package com.nianticproject.ingress.common.ui.elements;

import a;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Stack;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.playerprofile.AvatarView;
import com.nianticproject.ingress.common.playerprofile.ao;
import com.nianticproject.ingress.common.ui.a.b;
import com.nianticproject.ingress.common.ui.widget.bd;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.shared.ai;
import java.util.Collections;
import java.util.Locale;

public final class c
  implements ah
{
  private static final int a = com.nianticproject.ingress.shared.t.b();
  private final com.nianticproject.ingress.common.ui.t b;
  private final av c;
  private final k d;
  private Label e;
  private Label f;
  private Label g;
  private Label h;
  private Label i;
  private Label j;
  private i k;
  private Table l;
  private Stage m;
  private Skin n;
  private Group o;
  private com.nianticproject.ingress.common.ui.a.c p;
  private SegmentedProgressBar q;
  private Stack r;
  private HighLowWatermarkBar s;
  private AvatarView t;
  private com.a.a.c<SegmentedProgressBar> u;
  private Actor v;
  private final com.nianticproject.ingress.common.model.l w = new f(this);
  private final ClickListener x = new g(this);

  public c(com.nianticproject.ingress.common.ui.t paramt, av paramav, k paramk)
  {
    this.b = paramt;
    this.c = paramav;
    this.d = paramk;
  }

  private HighLowWatermarkBar a(ai paramai, float paramFloat1, float paramFloat2)
  {
    HighLowWatermarkBar.Style localStyle;
    if (paramai == ai.b)
      localStyle = (HighLowWatermarkBar.Style)this.n.get("xmProgress-aliens", HighLowWatermarkBar.Style.class);
    while (true)
    {
      HighLowWatermarkBar localHighLowWatermarkBar = new HighLowWatermarkBar(localStyle);
      localHighLowWatermarkBar.a().a(paramFloat1, false);
      localHighLowWatermarkBar.a().a(paramFloat2, true);
      return localHighLowWatermarkBar;
      if (paramai == ai.a)
        localStyle = (HighLowWatermarkBar.Style)this.n.get("xmProgress-resistance", HighLowWatermarkBar.Style.class);
      else
        localStyle = (HighLowWatermarkBar.Style)this.n.get("xmProgress-neutral", HighLowWatermarkBar.Style.class);
    }
  }

  private void a(long paramLong1, long paramLong2)
  {
    float f1 = y.b((float)paramLong1 / (float)paramLong2);
    this.s.a().a(f1, true);
  }

  private static void a(Actor paramActor, float paramFloat)
  {
    if (paramActor != null)
    {
      paramActor.clearActions();
      Action[] arrayOfAction = new Action[6];
      arrayOfAction[0] = Actions.delay(paramFloat);
      arrayOfAction[1] = Actions.visible(true);
      arrayOfAction[2] = Actions.fadeIn(0.75F);
      arrayOfAction[3] = Actions.delay(4.0F);
      arrayOfAction[4] = Actions.fadeOut(1.5F);
      arrayOfAction[5] = Actions.visible(false);
      paramActor.addAction(Actions.sequence(arrayOfAction));
    }
  }

  private SegmentedProgressBar b()
  {
    String str;
    switch (h.a[this.d.h().ordinal()])
    {
    default:
      str = "scanner-ap-progress-neutral";
    case 1:
    case 2:
    }
    while (true)
    {
      SegmentedProgressBar localSegmentedProgressBar = new SegmentedProgressBar((SegmentedProgressBar.SegmentedProgressBarStyle)this.n.get(str, SegmentedProgressBar.SegmentedProgressBarStyle.class), (float)(8L * this.d.d()) / (float)this.d.c());
      localSegmentedProgressBar.addListener(this.x);
      return localSegmentedProgressBar;
      str = "scanner-ap-progress-aliens";
      continue;
      str = "scanner-ap-progress-resistance";
    }
  }

  private void b(float paramFloat)
  {
    int i1 = this.d.l();
    Locale localLocale2;
    Object[] arrayOfObject2;
    if (i1 < a)
    {
      long l1 = com.nianticproject.ingress.shared.t.b(i1 + 1);
      localLocale2 = Locale.US;
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.d.e());
      arrayOfObject2[1] = Long.valueOf(l1);
    }
    Locale localLocale1;
    Object[] arrayOfObject1;
    for (String str = String.format(localLocale2, "%,d / %,d AP", arrayOfObject2); ; str = String.format(localLocale1, "%,d AP", arrayOfObject1))
    {
      this.g.setText(str);
      a(this.g, paramFloat);
      return;
      localLocale1 = Locale.US;
      arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(this.d.e());
    }
  }

  private void c()
  {
    int i1 = this.d.l();
    long l1;
    long l2;
    if (i1 < a)
    {
      l1 = com.nianticproject.ingress.shared.t.b(i1);
      l2 = com.nianticproject.ingress.shared.t.b(i1 + 1) - l1;
    }
    for (float f1 = (float)((this.d.e() - l1) * this.q.a()) / (float)l2; ; f1 = this.q.a())
    {
      this.q.b().a(f1);
      return;
    }
  }

  public final i a()
  {
    return this.k;
  }

  protected final void a(long paramLong)
  {
    if ((this.f != null) && (paramLong > 0L))
    {
      Label localLabel1 = this.f;
      Locale localLocale = Locale.US;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      localLabel1.setText(String.format(localLocale, "+%,d AP", arrayOfObject));
      Stage localStage = this.m;
      Label localLabel2 = this.f;
      Color localColor = localLabel2.getColor();
      localLabel2.setColor(localColor.r, localColor.g, localColor.b, 0.0F);
      localLabel2.setVisible(true);
      localLabel2.setX(localStage.getWidth() / 2.0F - localLabel2.getPrefWidth() / 2.0F);
      localLabel2.setY(0.4F * localStage.getHeight());
      float f1 = 0.13F * localStage.getHeight();
      localLabel2.addAction(Actions.parallel(Actions.sequence(Actions.fadeIn(0.25F), Actions.alpha(1.0F, 0.25F), Actions.fadeOut(1.9F, Interpolation.pow3)), Actions.moveTo(localLabel2.getX(), f1 + localLabel2.getY(), 1.9F, Interpolation.linear)));
    }
    c();
    if (paramLong != 0L)
      b(0.2475F);
  }

  protected final void a(long paramLong1, long paramLong2, long paramLong3, z paramz)
  {
    if (this.v != null)
    {
      if ((paramz == z.a) && (paramLong3 > 0L))
        b.a(this.m, this.e, "+", paramLong3, 0.34F);
      a(paramLong2, paramLong1);
    }
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.m = paramStage;
    this.n = paramSkin;
    this.o = new Group();
    paramStage.addActor(this.o);
    paramSkin.get("default", Label.LabelStyle.class);
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class);
    Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)paramSkin.get("profiles-player-header-level-number", Label.LabelStyle.class);
    float f1 = com.nianticproject.ingress.common.w.l.a(5.0F);
    com.nianticproject.ingress.common.w.l.a(3.0F);
    Table localTable1 = new Table();
    localTable1.defaults().j().g();
    this.i = new Label("", localLabelStyle1);
    BitmapFont localBitmapFont1 = this.i.getStyle().font;
    localTable1.add(this.i).c(localBitmapFont1.getCapHeight() - localBitmapFont1.getDescent());
    localTable1.row();
    this.g = new Label("", localLabelStyle1);
    this.g.getColor().a = 0.0F;
    this.g.setVisible(false);
    BitmapFont localBitmapFont2 = this.g.getStyle().font;
    localTable1.add(this.g).c(localBitmapFont2.getCapHeight() - localBitmapFont2.getDescent());
    Table localTable2 = new Table();
    localTable2.defaults().j().k();
    float f2 = y.b((float)this.d.d() / (float)this.d.c());
    this.s = a(this.d.h(), f2, f2);
    this.h = new Label("", localLabelStyle1);
    this.l = new Table();
    Label localLabel = this.h;
    Table localTable3 = this.l;
    HighLowWatermarkBar localHighLowWatermarkBar = this.s;
    ClickListener localClickListener = this.x;
    localLabel.setAlignment(1);
    localLabel.getColor().a = 0.0F;
    localLabel.setVisible(false);
    Stack localStack;
    Table localTable4;
    if (localTable3 != null)
    {
      localTable3.setBackground(paramSkin.getDrawable("label_bg"));
      localTable3.getColor().a = 0.0F;
      localTable3.setVisible(false);
      localStack = bd.a(new Actor[] { localHighLowWatermarkBar, localTable3, localLabel });
      localStack.addListener(localClickListener);
      this.r = localStack;
      localTable2.add(this.r).c(0.75F * this.h.getStyle().font.getCapHeight()).f().b(Integer.valueOf(2));
      localTable2.row();
      this.j = new Label("L" + this.d.l(), localLabelStyle2);
      BitmapFont localBitmapFont3 = this.j.getStyle().font;
      localTable2.add(this.j).c(localBitmapFont3.getCapHeight());
      localTable2.add(localTable1).o().i(f1);
      localTable4 = new Table();
      localTable4.top();
      localTable4.defaults().j().j(f1);
      localTable4.setBackground(paramSkin.getDrawable("player-status-bar-background"));
      this.q = b();
      this.u = localTable4.add(this.q).g().b(Integer.valueOf(3)).i(f1).k(f1);
      localTable4.row();
      this.t = new AvatarView(this.d, this.c, paramSkin);
      localTable4.add(this.t).i(f1).k(f1);
      if (!ao.l())
        break label1182;
      this.t.addListener(new e(this));
    }
    while (true)
    {
      localTable4.add(localTable2).g().o();
      com.nianticproject.ingress.common.ui.widget.f localf = new com.nianticproject.ingress.common.ui.widget.f("OPS", (TextButton.TextButtonStyle)this.n.get("default", TextButton.TextButtonStyle.class));
      localf.addListener(new d(this));
      float f3 = ((TextButton.TextButtonStyle)localf.getStyle()).font.getCapHeight();
      localTable4.add(localf).g().b(3.35F * f3).c(f3 * 2.0F).i(f1).k(f1);
      localTable4.pack();
      localTable4.setWidth(paramStage.getWidth());
      localTable4.setHeight(localTable4.getPrefHeight());
      localTable4.setY(paramStage.getHeight() - localTable4.getPrefHeight());
      paramStage.addActor(localTable4);
      this.e = new Label("", (Label.LabelStyle)paramSkin.get("bar-energy-gain", Label.LabelStyle.class));
      this.o.addActor(this.e);
      this.f = new Label("", (Label.LabelStyle)paramSkin.get("bar-ap-gain", Label.LabelStyle.class));
      this.o.addActor(this.f);
      this.k = new i(paramSkin, 0.25F * this.m.getWidth(), this.m.getHeight() - localTable4.getPrefHeight(), 0.75F * this.m.getWidth() - f1);
      paramStage.addActor(this.k);
      com.nianticproject.ingress.common.model.l locall = this.w;
      String str = this.d.j();
      if (a.q())
        str = "";
      locall.a(str);
      this.w.a(null, this.d.h());
      this.w.a(this.d.c(), this.d.d(), 0L, z.a);
      this.w.a(this.d.e(), Collections.emptyList());
      this.w.a(this.d.l(), false);
      this.d.a(this.w);
      this.v = this.s;
      return;
      localStack = bd.a(new Actor[] { localHighLowWatermarkBar, localLabel });
      break;
      label1182: this.t.setTouchable(Touchable.disabled);
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.p == null)
      this.p = com.nianticproject.ingress.common.ui.a.c.a(this.o);
    this.p.b(paramBoolean);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.d.b(this.w);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.c
 * JD-Core Version:    0.6.2
 */