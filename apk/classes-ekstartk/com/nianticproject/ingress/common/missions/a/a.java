package com.nianticproject.ingress.common.missions.a;

import com.a.a.e;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.scenes.scene2d.ui.ImageButton;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.google.a.a.br;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.b.s;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator.ProgressIndicatorStyle;
import com.nianticproject.ingress.common.ui.widget.Spectrograph;
import com.nianticproject.ingress.common.ui.widget.h;
import com.nianticproject.ingress.common.ui.widget.z;
import java.util.Iterator;
import java.util.List;

public abstract class a extends s
{
  private static float d = 0.05F;
  protected f a;
  protected final t b;
  protected ac c = new b(this);
  private Spectrograph e;

  protected a(ad paramad, t paramt)
  {
    super(paramad, new ac[0]);
    this.b = paramt;
    e();
  }

  protected static Table a(Skin paramSkin, float paramFloat, z paramz1, z paramz2, String paramString1, String paramString2, boolean paramBoolean)
  {
    Table localTable = new Table();
    ActionButton localActionButton1 = new ActionButton(paramString1, null, "", (ActionButton.ActionButtonStyle)paramSkin.get("large-accept", ActionButton.ActionButtonStyle.class));
    localActionButton1.a(paramz1);
    localTable.add(localActionButton1).a(e.a(0.5F)).b(e.b(0.4F)).o().g().i().i((int)(0.36D * paramFloat));
    localTable.row();
    if (paramBoolean)
    {
      ActionButton localActionButton2 = new ActionButton(paramString2, null, "", (ActionButton.ActionButtonStyle)paramSkin.get("medium-ignore", ActionButton.ActionButtonStyle.class));
      localActionButton2.a(paramz2);
      localTable.add(localActionButton2).a(e.a(0.33F)).b(e.b(0.35F)).o().g().i().k((int)(0.36D * paramFloat));
    }
    return localTable;
  }

  protected static Table a(Skin paramSkin, String paramString1, String paramString2, float paramFloat, boolean paramBoolean)
  {
    Table localTable1 = new Table();
    localTable1.setX(0.0F);
    localTable1.setY(0.0F);
    localTable1.setWidth(paramFloat);
    Table localTable2 = new Table();
    localTable2.add(new Label(paramString1, (Label.LabelStyle)paramSkin.get("ada-title", Label.LabelStyle.class))).n().a(Integer.valueOf(10));
    localTable2.row();
    localTable2.add(new Label(paramString2, (Label.LabelStyle)paramSkin.get("ada-location", Label.LabelStyle.class))).n().a(Integer.valueOf(10));
    localTable1.add(localTable2).n().a(Integer.valueOf(10)).i(15.0F);
    if (paramBoolean)
    {
      ProgressIndicator localProgressIndicator = new ProgressIndicator((ProgressIndicator.ProgressIndicatorStyle)paramSkin.get("ada-wheels-sm", ProgressIndicator.ProgressIndicatorStyle.class));
      localProgressIndicator.a(true);
      localTable1.add(localProgressIndicator).n().a(Integer.valueOf(18)).k(15.0F);
    }
    return localTable1;
  }

  protected abstract Table a(Skin paramSkin, float paramFloat);

  protected final Table a(Skin paramSkin, Drawable paramDrawable, float paramFloat1, List<String> paramList, String paramString1, String paramString2, float paramFloat2)
  {
    Table localTable1 = new Table();
    localTable1.setX(0.0F);
    localTable1.setWidth(paramFloat1);
    Table localTable2 = new Table();
    this.e = new Spectrograph(paramSkin);
    Table localTable3 = new Table();
    localTable3.setBackground(paramSkin.getDrawable("message-window"));
    localTable3.add(this.e).n().f().a(4.0F, 4.0F, 4.0F, 4.0F);
    localTable2.add(localTable3).b(Integer.valueOf(2)).b().i().a(e.a(0.99F)).b(e.b(0.68F));
    localTable2.row();
    ImageButton localImageButton1 = new ImageButton(paramSkin, "audio-pause");
    ImageButton localImageButton2 = new ImageButton(paramSkin, "audio-rewind");
    this.a = new f(this.e);
    localImageButton1.addListener(new c(this, localImageButton1, paramSkin));
    localImageButton2.addListener(new d(this, localImageButton1, paramSkin));
    Table localTable4 = new Table();
    localTable4.add(localImageButton1).a(e.a(0.25F)).b(e.b(0.9F));
    localTable4.add(localImageButton2).a(e.a(0.25F)).b(e.b(0.9F));
    localTable2.add(localTable4).a(e.a(1.0F)).b(e.b(0.35F)).i();
    localTable1.add(localTable2).b(Integer.valueOf(2)).b().i().a(e.a(0.99F)).b(e.b(0.3F));
    localTable1.row();
    Table localTable5 = new Table();
    e locale = e.a(0.04F);
    localTable5.defaults().j().k().o().g().f(locale).h(locale);
    boolean bool = br.b(paramString2);
    float f1 = 0.0F;
    if (!bool)
    {
      Label localLabel1 = new Label("Mission - " + paramString2, (Label.LabelStyle)paramSkin.get("mission-briefing-title-old", Label.LabelStyle.class));
      localTable5.add(localLabel1);
      localTable5.row();
      f1 = 0.0F + localLabel1.getTextBounds().height;
    }
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      Label localLabel3 = new Label("Objectives", (Label.LabelStyle)paramSkin.get("message-label", Label.LabelStyle.class));
      localTable5.add(localLabel3);
      localTable5.row();
      float f4 = f1 + localLabel3.getTextBounds().height;
      Iterator localIterator = paramList.iterator();
      Label localLabel4;
      for (f1 = f4; localIterator.hasNext(); f1 += localLabel4.getTextBounds().height)
      {
        String str = (String)localIterator.next();
        localLabel4 = new Label("- " + str, (Label.LabelStyle)paramSkin.get("mission-briefing-objective", Label.LabelStyle.class));
        localLabel4.setWrap(true);
        localTable5.add(localLabel4);
        localTable5.row();
      }
    }
    Label localLabel2 = new Label(paramString1 + "\n ", (Label.LabelStyle)paramSkin.get("message-label", Label.LabelStyle.class));
    localLabel2.setWrap(true);
    localLabel2.setAlignment(10);
    localLabel2.setWidth(0.9F * paramFloat1);
    localLabel2.layout();
    float f2 = localLabel2.getTextBounds().height;
    float f3 = 1.0F - f2 / (f1 + f2);
    localTable5.add(localLabel2).l().a(e.a(1.0F)).b(e.a());
    h localh = new h(localTable5, new ScrollPane.ScrollPaneStyle(), f3, paramFloat2, d);
    localh.setScrollPercentY(0.0F);
    localh.setScrollingDisabled(true, false);
    Table localTable6 = new Table();
    localTable6.setBackground(paramDrawable);
    localTable6.add(localh).o().g().b(e.b(0.85F)).j().k();
    localTable1.add(localTable6).b(Integer.valueOf(2)).c().i().a(e.a(0.99F)).b(e.b(0.69F));
    localTable1.row();
    return localTable1;
  }

  protected abstract Table b(Skin paramSkin, float paramFloat);

  protected abstract Table c(Skin paramSkin, float paramFloat);

  protected void e()
  {
    a(this.c);
  }

  public final void f()
  {
    if (this.a != null)
      this.a.a();
    super.f();
  }

  protected boolean r_()
  {
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.a
 * JD-Core Version:    0.6.2
 */