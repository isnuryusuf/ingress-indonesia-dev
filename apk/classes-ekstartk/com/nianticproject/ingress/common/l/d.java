package com.nianticproject.ingress.common.l;

import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.l;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.ag;
import com.nianticproject.ingress.common.ui.widget.bd;
import com.nianticproject.ingress.shared.GameScore;
import com.nianticproject.ingress.shared.ai;

final class d
  implements ac
{
  Table a;
  Label b;
  Label c;
  Label d;
  Label e;
  c f;

  private d(a parama)
  {
  }

  private static Table a(Skin paramSkin, ai paramai, Label paramLabel1, Label paramLabel2)
  {
    String str1;
    Label.LabelStyle localLabelStyle1;
    Label.LabelStyle localLabelStyle2;
    Table localTable;
    if (paramai == ai.b)
    {
      str1 = "score-enlightened-default-font";
      localLabelStyle1 = (Label.LabelStyle)paramSkin.get(str1, Label.LabelStyle.class);
      localLabelStyle2 = (Label.LabelStyle)paramSkin.get("small-yellow", Label.LabelStyle.class);
      localTable = new Table();
      if (paramai != ai.b)
        break label197;
    }
    label197: for (String str2 = "score-enlightened-background"; ; str2 = "score-resistance-background")
    {
      localTable.setBackground(paramSkin.getDrawable(str2));
      localTable.pad(16.0F);
      localTable.defaults().k().e();
      localTable.add(new Label(paramai.a().toUpperCase(), localLabelStyle1)).b(Integer.valueOf(2));
      localTable.row();
      localTable.add(new Label("Mind Units:", localLabelStyle2)).k(16.0F);
      localTable.add(paramLabel1);
      localTable.row();
      localTable.add(new Label("Global control:", localLabelStyle2)).k(16.0F);
      localTable.add(paramLabel2);
      return localTable;
      str1 = "score-resistance-default-font";
      break;
    }
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("score-enlightened", Label.LabelStyle.class);
    Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)paramSkin.get("score-resistance", Label.LabelStyle.class);
    this.b = new Label("...", localLabelStyle1);
    this.c = new Label("...", localLabelStyle1);
    Table localTable1 = a(paramSkin, ai.b, this.b, this.c);
    this.d = new Label("...", localLabelStyle2);
    this.e = new Label("...", localLabelStyle2);
    Table localTable2 = a(paramSkin, ai.a, this.d, this.e);
    this.f = new c();
    Table localTable3 = new Table();
    localTable3.defaults().n();
    localTable3.add(localTable1).j().k().h(64.0F).i(32.0F).a(e.a(0.65F));
    localTable3.row();
    localTable3.add(localTable2).l().m().j(64.0F).k(32.0F).a(e.a(0.65F));
    this.a = new Table();
    this.a.setWidth(paramStage.getWidth());
    this.a.setHeight(paramStage.getHeight());
    a.a(this.g, new aa(paramSkin, (int)paramStage.getWidth(), a.a(this.g), ag.d));
    this.a.add(a.b(this.g));
    this.a.row();
    Table localTable4 = this.a;
    Actor[] arrayOfActor = new Actor[2];
    arrayOfActor[0] = this.f;
    arrayOfActor[1] = localTable3;
    localTable4.add(bd.a(arrayOfActor)).n().f().g(10.0F);
    paramStage.addActor(this.a);
  }

  final void a(GameScore paramGameScore)
  {
    this.b.setText(l.a(paramGameScore.a()));
    this.d.setText(l.a(paramGameScore.b()));
    long l = paramGameScore.a() + paramGameScore.b();
    int i = (int)Math.round(100.0D * (paramGameScore.a() / l));
    this.c.setText(Integer.toString(i) + "%");
    this.e.setText(Integer.toString(100 - i) + "%");
  }

  public final boolean a(float paramFloat)
  {
    this.f.a(paramFloat);
    return true;
  }

  public final void dispose()
  {
    this.a.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.l.d
 * JD-Core Version:    0.6.2
 */