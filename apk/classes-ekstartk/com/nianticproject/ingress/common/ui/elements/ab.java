package com.nianticproject.ingress.common.ui.elements;

import com.a.a.e;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Stack;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.l;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.ui.a.b;
import com.nianticproject.ingress.common.ui.widget.ap;
import com.nianticproject.ingress.common.ui.widget.bd;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.shared.ai;
import java.util.Collections;

public final class ab
  implements ah
{
  private static final int[] a = { 0, 15, 23, 33, 51, 69, 84, 102, 120, 135, 153, 171, 186, 204, 219, 237, 242 };
  private final com.nianticproject.ingress.common.ui.t b;
  private final k c;
  private Label d;
  private Label e;
  private Label f;
  private Label g;
  private Label h;
  private Label i;
  private i j;
  private Table k;
  private Stage l;
  private Skin m;
  private Group n;
  private com.nianticproject.ingress.common.ui.a.c o;
  private Stack p;
  private HighLowWatermarkBar q;
  private Stack r;
  private ap s;
  private final EventListener t = new ac(this);
  private Actor u;
  private final l v = new ad(this);

  public ab(com.nianticproject.ingress.common.ui.t paramt, k paramk)
  {
    this.b = paramt;
    this.c = paramk;
  }

  private HighLowWatermarkBar a(ai paramai, float paramFloat1, float paramFloat2)
  {
    HighLowWatermarkBar.Style localStyle;
    if (paramai == ai.b)
      localStyle = (HighLowWatermarkBar.Style)this.m.get("xmProgress-aliens", HighLowWatermarkBar.Style.class);
    while (true)
    {
      HighLowWatermarkBar localHighLowWatermarkBar = new HighLowWatermarkBar(localStyle);
      localHighLowWatermarkBar.a().a(paramFloat1, false);
      localHighLowWatermarkBar.a().a(paramFloat2, true);
      return localHighLowWatermarkBar;
      if (paramai == ai.a)
        localStyle = (HighLowWatermarkBar.Style)this.m.get("xmProgress-resistance", HighLowWatermarkBar.Style.class);
      else
        localStyle = (HighLowWatermarkBar.Style)this.m.get("xmProgress-neutral", HighLowWatermarkBar.Style.class);
    }
  }

  private ap a(ai paramai, String paramString)
  {
    TextButton.TextButtonStyle localTextButtonStyle;
    if (paramai == ai.b)
      localTextButtonStyle = (TextButton.TextButtonStyle)this.m.get("apProgress-aliens", TextButton.TextButtonStyle.class);
    while (true)
    {
      return new ap(paramString, localTextButtonStyle);
      if (paramai == ai.a)
        localTextButtonStyle = (TextButton.TextButtonStyle)this.m.get("apProgress-resistance", TextButton.TextButtonStyle.class);
      else
        localTextButtonStyle = (TextButton.TextButtonStyle)this.m.get("apProgress-neutral", TextButton.TextButtonStyle.class);
    }
  }

  private void a(long paramLong)
  {
    long l1 = com.nianticproject.ingress.shared.t.b(this.c.l());
    long l2 = com.nianticproject.ingress.shared.t.b(1 + this.c.l());
    int i1 = (int)(16.0F * y.b((float)(paramLong - l1) / (float)(l2 - l1)));
    float f1 = a[i1] / 254.0F;
    this.s.a(f1);
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

  private void a(Label paramLabel, float paramFloat)
  {
    Object localObject = null;
    if (paramLabel != null)
    {
      if (paramLabel != this.f)
        break label58;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(this.c.e());
      paramLabel.setText(String.format("%d AP", arrayOfObject2));
    }
    while (true)
    {
      a(paramLabel, paramFloat);
      a((Actor)localObject, paramFloat);
      return;
      label58: Label localLabel = this.g;
      localObject = null;
      if (paramLabel == localLabel)
      {
        localObject = this.k;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(this.c.d());
        paramLabel.setText(String.format("%d XM", arrayOfObject1));
      }
    }
  }

  private void b(long paramLong1, long paramLong2)
  {
    float f1 = y.b((float)paramLong1 / (float)paramLong2);
    this.q.a().a(f1, true);
  }

  public final i a()
  {
    return this.j;
  }

  protected final void a(long paramLong1, long paramLong2)
  {
    if ((this.e != null) && (paramLong2 > 0L))
    {
      Label localLabel = this.e;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong2);
      localLabel.setText(String.format("+%d AP", arrayOfObject));
      a(this.e, 0.0F);
    }
    if (this.s != null)
    {
      a(paramLong1);
      if (paramLong2 != 0L)
        a(this.f, 0.2475F);
    }
  }

  protected final void a(long paramLong1, long paramLong2, long paramLong3, z paramz)
  {
    if (this.u != null)
    {
      if ((paramz == z.a) && (paramLong3 > 0L))
        b.a(this.l, this.d, "+", paramLong3, 0.34F);
      b(paramLong2, paramLong1);
    }
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.l = paramStage;
    this.m = paramSkin;
    this.n = new Group();
    paramStage.addActor(this.n);
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class);
    Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class);
    this.s = a(this.c.h(), "");
    this.h = this.s.getLabel();
    float f1 = this.s.getWidth();
    float f2 = 16.0F + 3.0F * localLabelStyle2.font.getCapHeight();
    float f3 = paramStage.getHeight() - f2;
    Table localTable1 = new Table();
    localTable1.defaults().g(5.0F);
    localTable1.setWidth(Gdx.graphics.getWidth());
    localTable1.setHeight(f2);
    localTable1.setY(f3);
    localTable1.defaults().j();
    localTable1.setBackground(paramSkin.getDrawable("player-status-bar-background"));
    Actor[] arrayOfActor = new Actor[1];
    arrayOfActor[0] = this.s;
    this.r = bd.a(arrayOfActor);
    this.r.addListener(this.t);
    localTable1.add(this.r).a(f1);
    Table localTable2 = new Table();
    localTable2.defaults().k();
    float f4 = y.b((float)this.c.d() / (float)this.c.c());
    this.q = a(this.c.h(), f4, f4);
    this.g = new Label("", localLabelStyle2);
    this.k = new Table();
    Label localLabel1 = this.g;
    Table localTable3 = this.k;
    HighLowWatermarkBar localHighLowWatermarkBar = this.q;
    localLabel1.setAlignment(1);
    localLabel1.getColor().a = 0.0F;
    localLabel1.setVisible(false);
    if (localTable3 != null)
    {
      localTable3.setBackground(paramSkin.getDrawable("label_bg"));
      localTable3.getColor().a = 0.0F;
      localTable3.setVisible(false);
    }
    for (Stack localStack = bd.a(new Actor[] { localHighLowWatermarkBar, localTable3, localLabel1 }); ; localStack = bd.a(new Actor[] { localHighLowWatermarkBar, localLabel1 }))
    {
      localStack.addListener(new ag(this, localLabel1));
      this.p = localStack;
      localTable2.add(this.p).o().g().b(e.b(0.25F)).b(Integer.valueOf(2));
      localTable2.row();
      Label localLabel2 = new Label("", localLabelStyle2);
      this.i = localLabel2;
      localTable2.add(localLabel2).o().g().b(e.b(0.375F)).b(Integer.valueOf(2));
      localTable2.row();
      this.f = new Label("", localLabelStyle2);
      this.f.getColor().a = 0.0F;
      this.f.setVisible(false);
      localTable2.add(this.f).b(e.b(0.375F));
      this.e = new Label("", localLabelStyle1);
      this.e.setColor(Color.GREEN);
      this.e.getColor().a = 0.0F;
      this.e.setVisible(false);
      localTable2.add(this.e).b(e.b(0.375F)).i(0.5F * localLabelStyle2.font.getCapHeight()).o().g();
      localTable1.add(localTable2).n().f();
      f localf = new f("OPS", (TextButton.TextButtonStyle)paramSkin.get("default", TextButton.TextButtonStyle.class));
      localf.addListener(new ae(this));
      localTable1.add(localf).c(f1).a(e.a(0.2F), e.a(0.125F));
      this.n.addActor(localTable1);
      this.d = new Label("", (Label.LabelStyle)paramSkin.get("bar-energy-gain", Label.LabelStyle.class));
      this.n.addActor(this.d);
      this.l.getWidth();
      float f5 = f3 - 5.0F;
      this.l.getWidth();
      i locali = new i(paramSkin, 0.25F * this.l.getWidth(), f5, 0.75F * this.l.getWidth() - 5.0F);
      locali.addListener(new af(this));
      this.j = locali;
      this.n.addActor(this.j);
      this.v.a(this.c.j());
      this.v.a(null, this.c.h());
      this.v.a(this.c.c(), this.c.d(), 0L, z.a);
      this.v.a(this.c.e(), Collections.emptyList());
      this.v.a(this.c.l(), false);
      this.c.a(this.v);
      this.u = this.q;
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.o == null)
      this.o = com.nianticproject.ingress.common.ui.a.c.a(this.n);
    this.o.b(paramBoolean);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.c.b(this.v);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ab
 * JD-Core Version:    0.6.2
 */