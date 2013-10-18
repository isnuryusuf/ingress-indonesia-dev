package com.nianticproject.ingress.common.missions;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.common.ui.widget.x;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class cf
  implements ac
{
  private Table b;
  private Table c;
  private TextButton.TextButtonStyle d;
  private TextButton.TextButtonStyle e;
  private TextButton.TextButtonStyle f;
  private Button.ButtonStyle g;
  private Button.ButtonStyle h;
  private cd i;
  private final Map<String, Button> j = hc.c();
  private Label.LabelStyle k;
  private Label.LabelStyle l;
  private x m;
  private x n;
  private Drawable o;
  private final e p = e.a(0.33F);

  private cf(cc paramcc)
  {
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.k = ((Label.LabelStyle)paramSkin.get("mission-list", Label.LabelStyle.class));
    this.l = ((Label.LabelStyle)paramSkin.get("mission-list-disabled", Label.LabelStyle.class));
    this.d = ((TextButton.TextButtonStyle)paramSkin.get("mission-list", TextButton.TextButtonStyle.class));
    this.e = ((TextButton.TextButtonStyle)paramSkin.get("mission-list-completed", TextButton.TextButtonStyle.class));
    this.f = ((TextButton.TextButtonStyle)paramSkin.get("mission-list-selected", TextButton.TextButtonStyle.class));
    this.g = ((Button.ButtonStyle)paramSkin.get("default", TextButton.TextButtonStyle.class));
    this.h = ((Button.ButtonStyle)paramSkin.get("disabled", Button.ButtonStyle.class));
    this.o = paramSkin.getDrawable("nav-button-clear");
    this.b = new Table();
    this.b.setWidth(paramStage.getWidth());
    this.b.setHeight(paramStage.getHeight());
    cc.a(this.a, new aa(paramSkin, (int)paramStage.getWidth(), cc.b(this.a), com.nianticproject.ingress.common.ui.widget.ag.c));
    this.b.add(cc.c(this.a));
    this.b.row();
    this.c = new Table();
    this.c.setWidth(-10 + (int)paramStage.getWidth());
    ScrollPane localScrollPane = new ScrollPane(this.c, new ScrollPane.ScrollPaneStyle());
    localScrollPane.setScrollY(0.0F);
    localScrollPane.setScrollingDisabled(true, false);
    this.b.add(localScrollPane).g().o().p().j().a(5.0F, 5.0F, 5.0F, 5.0F);
    paramStage.addActor(this.b);
  }

  public final boolean a(float paramFloat)
  {
    if (!com.google.a.a.ag.a(cc.a(this.a), this.i))
    {
      this.i = cc.a(this.a);
      this.c.clear();
      Iterator localIterator = cd.a(this.i).keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        this.j.clear();
        ce localce = (ce)cd.a(this.i).get(str);
        TextButton.TextButtonStyle localTextButtonStyle = this.d;
        int i1 = 5;
        if (((cd.b(this.i) == null) && (com.google.a.a.ag.a(cd.c(this.i), str))) || (com.google.a.a.ag.a(cd.b(this.i), str)))
        {
          localTextButtonStyle = this.f;
          i1 = 0;
        }
        while (true)
        {
          f localf = new f(str, localTextButtonStyle);
          this.j.put(str, localf);
          localf.addListener(new cg(this, str));
          this.c.add(localf).o().g().j().a(5.0F, 5.0F, i1, 5.0F);
          this.c.row();
          if ((cd.c(this.i) == null) || (!cd.c(this.i).equals(str)))
            break;
          Label localLabel1 = new Label("View Briefing", this.k);
          Label localLabel2 = new Label("Abort", this.k);
          Label localLabel3 = new Label("View Briefing", this.l);
          Label localLabel4 = new Label("Abort", this.l);
          this.m = new x(localLabel1, localLabel3, this.g, this.h);
          this.n = new x(localLabel2, localLabel4, this.g, this.h);
          Label localLabel5 = new Label("objective", this.k);
          localLabel5.setWrap(true);
          localLabel5.setText(localce.a);
          localLabel5.pack();
          Table localTable1 = new Table();
          localTable1.setBackground(this.o);
          localTable1.add(localLabel5).o().g().g(20.0F);
          localTable1.row();
          Table localTable2 = new Table();
          localTable2.add(this.n).a(Integer.valueOf(16)).a(0.0F, 5.0F, 5.0F, 5.0F).o().a(this.p);
          localTable2.add(this.m).a(Integer.valueOf(16)).a(0.0F, 5.0F, 5.0F, 5.0F).a(this.p);
          localTable1.add(localTable2).a(Integer.valueOf(16)).j(20.0F).o().g();
          this.c.add(localTable1).a(0.0F, 5.0F, 0.0F, 5.0F).g().o().h();
          this.c.row();
          if (cd.b(this.i) != null)
            break label664;
          this.n.b(false);
          this.n.a(null);
          this.m.b(true);
          this.m.a(localce.b);
          break;
          if (localce.c == ck.a)
            localTextButtonStyle = this.e;
        }
        label664: if (cd.b(this.i).equals(str))
        {
          this.n.b(true);
          this.n.a(cd.d(this.i));
          this.m.b(false);
          this.m.a(null);
        }
        else
        {
          this.n.b(false);
          this.n.a(null);
          this.m.b(false);
          this.m.a(null);
        }
      }
    }
    return true;
  }

  public final void dispose()
  {
    this.b.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.cf
 * JD-Core Version:    0.6.2
 */