package com.nianticproject.ingress.common.factionchoice;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator.ProgressIndicatorStyle;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.shared.ai;

final class at
  implements ac
{
  private final az a;
  private Table b;
  private final String c;
  private final String d;
  private final String e;
  private final ai f;

  at(az paramaz, String paramString1, String paramString2, ai paramai, String paramString3)
  {
    this.a = paramaz;
    this.c = ((String)an.a(paramString1));
    this.d = ((String)an.a(paramString2));
    this.e = paramString3;
    this.f = paramai;
  }

  private static void a(Table paramTable, String paramString, Label.LabelStyle paramLabelStyle)
  {
    Label localLabel = new Label(String.format("[%s is a member of this faction]", new Object[] { paramString }), paramLabelStyle);
    localLabel.setWrap(true);
    localLabel.setWidth(paramTable.getWidth());
    localLabel.pack();
    paramTable.add(localLabel).o().g().g(15.0F);
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.b = new Table();
    this.b.setX(0.0F);
    this.b.setY(0.0F);
    this.b.setWidth(paramStage.getWidth());
    this.b.setHeight(paramStage.getHeight());
    this.b.pad(15.0F);
    Table localTable1 = this.b;
    Table localTable2 = new Table();
    localTable2.add(new Label(this.c, (Label.LabelStyle)paramSkin.get(this.d, Label.LabelStyle.class))).n().l().g();
    ProgressIndicator localProgressIndicator = new ProgressIndicator((ProgressIndicator.ProgressIndicatorStyle)paramSkin.get("ada-wheels-sm", ProgressIndicator.ProgressIndicatorStyle.class));
    localProgressIndicator.a(true);
    localTable2.add(localProgressIndicator);
    localTable1.add(localTable2).o().g().j();
    this.b.row();
    Table localTable3 = this.b;
    Table localTable4 = new Table();
    Table localTable5 = new Table();
    f localf1 = new f("Join the Resistance", (TextButton.TextButtonStyle)paramSkin.get("fc-choose-humanist", TextButton.TextButtonStyle.class));
    localf1.addListener(new au(this));
    localTable5.add(localf1).o().g();
    if ((!br.b(this.e)) && (this.f == ai.a))
    {
      localTable5.row();
      a(localTable5, this.e, (Label.LabelStyle)paramSkin.get("fc-hint-humanist", Label.LabelStyle.class));
    }
    localTable4.add(localTable5).n().g().j();
    localTable4.row();
    Table localTable6 = new Table();
    f localf2 = new f("Join the Enlightened", (TextButton.TextButtonStyle)paramSkin.get("fc-choose-enlightened", TextButton.TextButtonStyle.class));
    localf2.addListener(new av(this));
    localTable6.add(localf2).o().g();
    if ((!br.b(this.e)) && (this.f == ai.b))
    {
      localTable6.row();
      a(localTable6, this.e, (Label.LabelStyle)paramSkin.get("fc-hint-enlightened", Label.LabelStyle.class));
    }
    localTable4.add(localTable6).n().g().j();
    localTable3.add(localTable4).n().f().h(50.0F).j(50.0F);
    paramStage.addActor(this.b);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.b.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.at
 * JD-Core Version:    0.6.2
 */