package com.nianticproject.ingress.common.missions.tutorial;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.de;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.w.b;
import java.util.Iterator;

public final class r extends a
{
  private final b a;
  private Table b;
  private dc<TextButton> c;

  public r(b paramb)
  {
    this.a = ((b)an.a(paramb));
  }

  public final void a(int paramInt)
  {
    int i = 0;
    if (i < this.c.size())
    {
      TextButton localTextButton = (TextButton)this.c.get(i);
      if (paramInt == i);
      for (boolean bool = true; ; bool = false)
      {
        localTextButton.setChecked(bool);
        i++;
        break;
      }
    }
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    this.b = new Table();
    this.b.setSize(paramStage.getWidth(), paramStage.getHeight());
    this.b.defaults().j().h(8.0F).n().r();
    this.b.add(new Label("Agent Training", paramSkin, "tutorial-header")).k().i(8.0F).s();
    Table localTable1 = this.b;
    de localde = dc.h();
    localde.c(new TextButton("1", paramSkin, "tutorial-step"));
    localde.c(new TextButton("2", paramSkin, "tutorial-step"));
    localde.c(new TextButton("3", paramSkin, "tutorial-step"));
    localde.c(new TextButton("4", paramSkin, "tutorial-step"));
    this.c = localde.a();
    Table localTable2 = new Table();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      TextButton localTextButton2 = (TextButton)localIterator.next();
      localTextButton2.setDisabled(true);
      localTable2.add(localTextButton2);
    }
    a(0);
    localTable1.add(localTable2).s();
    TextButton localTextButton1 = new TextButton("Abort", paramSkin, "tutorial-abort");
    this.b.add(localTextButton1).m().k(8.0F).s();
    com.nianticproject.ingress.common.ui.a.c localc = com.nianticproject.ingress.common.ui.a.c.a(this.b);
    localc.a(false);
    localc.b(true);
    localTextButton1.addListener(new s(this));
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.r
 * JD-Core Version:    0.6.2
 */