package com.nianticproject.ingress.common.ui.widget;

import a;
import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.ButtonGroup;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.playerprofile.ao;

public final class aa extends Table
{
  private final af a;
  private final ag b;
  private final Skin c;
  private final ScrollPane d;
  private final Table e;
  private Table f;
  private Table g;

  public aa(Skin paramSkin, int paramInt, af paramaf, ag paramag)
  {
    this.c = paramSkin;
    this.a = paramaf;
    this.b = paramag;
    this.e = new Table();
    this.d = new ab(this, this.e, new ScrollPane.ScrollPaneStyle());
    setWidth(paramInt);
    this.d.setWidth(paramInt);
    this.d.setScrollingDisabled(false, true);
    Table localTable1 = new Table();
    Table localTable2 = new Table();
    localTable2.setBackground(paramSkin.getDrawable("ops-title-background"));
    localTable1.add(localTable2).o().g();
    Label localLabel = new Label("OPS", paramSkin, "ops-title");
    localLabel.setAlignment(16, 16);
    localTable2.add(localLabel).o().g().m().h(e.a(0.02F));
    localTable1.row();
    Table localTable3 = new Table();
    this.f = new Table();
    this.f.setBackground(paramSkin.getDrawable("ops-scroll-indicator-left"));
    this.g = new Table();
    this.g.setBackground(paramSkin.getDrawable("ops-scroll-indicator-right"));
    localTable3.add(this.f).n().f().k().a(e.a(0.1F));
    localTable3.add(this.g).n().f().m().a(e.a(0.1F));
    Actor[] arrayOfActor = new Actor[2];
    arrayOfActor[0] = this.d;
    arrayOfActor[1] = localTable3;
    localTable1.stack(arrayOfActor);
    Table localTable4 = new Table();
    localTable4.setWidth(getWidth());
    localTable4.setHeight(getHeight());
    Button localButton = new Button(paramSkin, "ops-close");
    localButton.addListener(new ac(this));
    localTable4.add(localButton).n().k().j();
    stack(new Actor[] { localTable1, localTable4 });
  }

  public final void a()
  {
    this.e.reset();
    ButtonGroup localButtonGroup = new ButtonGroup();
    AudibleTwoTextButton.TwoTextButtonStyle localTwoTextButtonStyle1 = (AudibleTwoTextButton.TwoTextButtonStyle)this.c.get("tab-bar-unchecked", AudibleTwoTextButton.TwoTextButtonStyle.class);
    AudibleTwoTextButton.TwoTextButtonStyle localTwoTextButtonStyle2 = (AudibleTwoTextButton.TwoTextButtonStyle)this.c.get("tab-bar-checked", AudibleTwoTextButton.TwoTextButtonStyle.class);
    this.e.add();
    float f1 = 0.02F * this.d.getWidth();
    float f2 = 0.035F * this.d.getWidth();
    float f3 = 0.08F * this.d.getWidth();
    Object localObject = null;
    ag[] arrayOfag = a.d();
    int i = arrayOfag.length;
    int j = 0;
    if (j < i)
    {
      ag localag = arrayOfag[j];
      AudibleTwoTextButton localAudibleTwoTextButton;
      if ((ao.l()) || (localag != ag.b))
      {
        if (this.b != localag)
          break label218;
        localAudibleTwoTextButton = new AudibleTwoTextButton(localag.toString(), localag.a(), localTwoTextButtonStyle2);
        localAudibleTwoTextButton.pad(f1, f3, f2, f3);
        localObject = localAudibleTwoTextButton;
      }
      while (true)
      {
        this.e.add(localAudibleTwoTextButton).p().j();
        localAudibleTwoTextButton.addListener(new ad(this, localag));
        j++;
        break;
        label218: localAudibleTwoTextButton = new AudibleTwoTextButton(localag.toString(), localag.a(), localTwoTextButtonStyle1);
        localAudibleTwoTextButton.pad(f1, f3, f1, f3);
        localButtonGroup.add(localAudibleTwoTextButton);
      }
    }
    this.d.layout();
    this.d.setScrollX(-getWidth() / 2.0F + localObject.getX() + localObject.getWidth() / 2.0F);
  }

  public final void act(float paramFloat)
  {
    super.act(paramFloat);
    float f1 = this.d.getScrollPercentX();
    if (f1 == 0.0F)
    {
      this.f.setVisible(false);
      this.g.setVisible(true);
      return;
    }
    if (f1 == 1.0F)
    {
      this.f.setVisible(true);
      this.g.setVisible(false);
      return;
    }
    this.f.setVisible(true);
    this.g.setVisible(true);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.aa
 * JD-Core Version:    0.6.2
 */