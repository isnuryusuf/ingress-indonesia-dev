package com.nianticproject.ingress.common.e;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.google.a.c.du;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.w;
import com.nianticproject.ingress.shared.af;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

final class b
  implements ac
{
  private b(a parama)
  {
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    TextButton.TextButtonStyle localTextButtonStyle = (TextButton.TextButtonStyle)paramSkin.get("large", TextButton.TextButtonStyle.class);
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class);
    Table localTable1 = new Table();
    localTable1.setWidth(Gdx.graphics.getWidth());
    localTable1.setHeight(Gdx.graphics.getHeight());
    localTable1.defaults().o().k().g(5.0F);
    localTable1.add(new Label("Cheater Store", localLabelStyle)).o().i().g(10.0F);
    localTable1.row();
    Table localTable2 = new Table();
    localTable2.setBackground(paramSkin.getDrawable("transparent-outline"));
    localTable1.add(new ScrollPane(localTable2)).n().f();
    localTable1.row();
    Iterator localIterator = com.nianticproject.ingress.common.gameentity.g.a.iterator();
    while (localIterator.hasNext())
    {
      af localaf = (af)localIterator.next();
      w localw = new w(Integer.toString(a.a(this.a, localaf)), localLabelStyle);
      a.b(this.a).put(localaf, localw);
      Table localTable5 = new Table();
      localTable5.defaults().d().e().k(10.0F);
      localTable5.add(new Label(localaf.a(), localLabelStyle)).n();
      com.nianticproject.ingress.common.ui.widget.f localf9 = new com.nianticproject.ingress.common.ui.widget.f("-", localTextButtonStyle);
      localf9.addListener(new h(this, localaf));
      localTable5.add(localf9);
      localTable5.add(localw);
      com.nianticproject.ingress.common.ui.widget.f localf10 = new com.nianticproject.ingress.common.ui.widget.f("+", localTextButtonStyle);
      localf10.addListener(new i(this, localaf));
      localTable5.add(localf10);
      if (!a.a(this.a).contains(localaf))
      {
        localTable2.add(localTable5).n().f();
        localTable2.row();
      }
    }
    Table localTable3 = new Table();
    localTable1.add(localTable3).n().f();
    localTable1.row();
    a.b(this.a, new w(Integer.toString(a.g(this.a)), localLabelStyle));
    com.nianticproject.ingress.common.ui.widget.f localf1 = new com.nianticproject.ingress.common.ui.widget.f("-", localTextButtonStyle);
    localf1.addListener(new f(this));
    com.nianticproject.ingress.common.ui.widget.f localf2 = new com.nianticproject.ingress.common.ui.widget.f("+", localTextButtonStyle);
    localf2.addListener(new g(this));
    localTable3.add(new Label("Resource Level", localLabelStyle)).n();
    localTable3.add(localf1).n();
    localTable3.add(a.i(this.a)).n();
    localTable3.add(localf2).n();
    localTable3.row();
    a.a(this.a, new w(Integer.toString(a.c(this.a)), localLabelStyle));
    com.nianticproject.ingress.common.ui.widget.f localf3 = new com.nianticproject.ingress.common.ui.widget.f("-", localTextButtonStyle);
    localf3.addListener(new c(this));
    com.nianticproject.ingress.common.ui.widget.f localf4 = new com.nianticproject.ingress.common.ui.widget.f("+", localTextButtonStyle);
    localf4.addListener(new e(this));
    localTable3.add(new Label("Access Level", localLabelStyle)).n();
    localTable3.add(localf3).n();
    localTable3.add(a.e(this.a)).n();
    localTable3.add(localf4).n();
    localTable3.row();
    Table localTable4 = new Table();
    localTable1.add(localTable4).n().f();
    localTable1.row();
    com.nianticproject.ingress.common.ui.widget.f localf5 = new com.nianticproject.ingress.common.ui.widget.f("XM Fill up", localTextButtonStyle);
    localf5.addListener(new j(this));
    localTable4.add(localf5).n();
    com.nianticproject.ingress.common.ui.widget.f localf6 = new com.nianticproject.ingress.common.ui.widget.f("XM Empty", localTextButtonStyle);
    localf6.addListener(new k(this));
    localTable4.add(localf6).n();
    localTable4.row();
    com.nianticproject.ingress.common.ui.widget.f localf7 = new com.nianticproject.ingress.common.ui.widget.f("Back", localTextButtonStyle);
    localf7.addListener(new d(this));
    localTable4.add(localf7).n();
    com.nianticproject.ingress.common.ui.widget.f localf8 = new com.nianticproject.ingress.common.ui.widget.f("Checkout", localTextButtonStyle);
    localf8.addListener(new l(this));
    localTable4.add(localf8).n();
    paramStage.addActor(localTable1);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.b
 * JD-Core Version:    0.6.2
 */