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
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.shared.ai;

final class aq
  implements ac
{
  private final String b;
  private final String c;
  private final String d;
  private final ai e;
  private Table f;

  aq(aj paramaj, String paramString1, String paramString2, ai paramai, String paramString3)
  {
    this.b = ((String)an.a(paramString1));
    this.c = ((String)an.a(paramString2));
    this.d = paramString3;
    this.e = paramai;
  }

  private void a(Table paramTable, Skin paramSkin, String paramString1, String paramString2, String paramString3, ai paramai, String paramString4)
  {
    f localf = new f(paramString1, (TextButton.TextButtonStyle)paramSkin.get(paramString2, TextButton.TextButtonStyle.class));
    localf.addListener(new ar(this, paramai));
    paramTable.add(localf).a(FactionChoiceStyles.BUTTON_WIDTH).a(Integer.valueOf(8)).o().g();
    paramTable.row();
    if ((!br.b(this.d)) && (this.e == paramai))
    {
      StringBuilder localStringBuilder = new StringBuilder().append(paramString4).append("\n");
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.d;
      paramString4 = String.format("[%s is a member of this faction]", arrayOfObject);
    }
    Label localLabel = new Label(paramString4, (Label.LabelStyle)paramSkin.get(paramString3, Label.LabelStyle.class));
    localLabel.setWidth(paramTable.getWidth());
    localLabel.setWrap(true);
    localLabel.setAlignment(10);
    localLabel.pack();
    paramTable.add(localLabel).n().g().j().h(15.0F).j(30.0F);
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.f = new Table();
    this.f.setX(0.0F);
    this.f.setY(0.0F);
    this.f.setWidth(paramStage.getWidth());
    this.f.setHeight(paramStage.getHeight());
    this.f.pad(15.0F);
    Table localTable1 = this.f;
    Table localTable2 = new Table();
    localTable2.add(new Label(this.b, (Label.LabelStyle)paramSkin.get(this.c, Label.LabelStyle.class))).n().l().g();
    localTable1.add(localTable2).o().g().j().j(15.0F);
    this.f.row();
    Table localTable3 = this.f;
    Table localTable4 = new Table();
    a(localTable4, paramSkin, "The Resistance", "fc-choose-humanist", "fc-hint-humanist", ai.a, "The Resistance seek to battle the forces that are attempting to use Exotic Matter to enslave humanity.");
    localTable4.row();
    a(localTable4, paramSkin, "The Enlightened", "fc-choose-enlightened", "fc-hint-enlightened", ai.b, "The Enlightened seek to harness the power of Exotic Matter to evolve mankind to a higher level.");
    localTable4.row();
    Label localLabel = new Label("Choose carefully.  This choice is final.", paramSkin, "fc-message");
    localLabel.setWidth(localTable4.getWidth());
    localLabel.setWrap(true);
    localTable4.add(localLabel).o().g();
    localTable3.add(localTable4).n().f().h(15.0F).j(15.0F);
    paramStage.addActor(this.f);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.f.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.aq
 * JD-Core Version:    0.6.2
 */