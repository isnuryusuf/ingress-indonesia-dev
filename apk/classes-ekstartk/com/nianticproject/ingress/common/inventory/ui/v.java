package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.google.a.a.an;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.b;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel.WidgetCarouselStyle;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.ag;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class v extends com.nianticproject.ingress.common.ui.f
  implements com.nianticproject.ingress.common.ui.ac
{
  private static final ae[] c = arrayOfae;
  private aa A;
  private TextButton.TextButtonStyle a;
  private TextButton.TextButtonStyle b;
  private final k d;
  private final com.nianticproject.ingress.common.g.e e;
  private al f;
  private final ac g;
  private final av h;
  private final l i;
  private final com.nianticproject.ingress.common.j.v j = new com.nianticproject.ingress.common.j.v();
  private final ab k = new ab(this, (byte)0);
  private boolean l = false;
  private Skin m;
  private Stage n;
  private Table o;
  private WidgetCarousel p;
  private Label q;
  private final ao r;
  private final com.nianticproject.ingress.common.j.f s = ao.c();
  private com.nianticproject.ingress.common.ui.widget.f t;
  private Table u;
  private com.nianticproject.ingress.common.ui.widget.f v;
  private Table w;
  private int x;
  private ae y;
  private final Map<String, ae> z = hc.c();

  static
  {
    ae[] arrayOfae = new ae[7];
    arrayOfae[0] = new ae("All", "ALL", null, null, null);
    arrayOfae[1] = new ae("Media", "Media", Collections.singleton(com.nianticproject.ingress.shared.af.g), Collections.singleton(aj.c), aj.c);
    arrayOfae[2] = new ae("ResShield", "Mods", g.c(), null, null);
    arrayOfae[3] = new ae("PortalLinkKeys", "Portal Keys", Collections.singleton(com.nianticproject.ingress.shared.af.i), EnumSet.of(aj.a, aj.b), aj.a);
    arrayOfae[4] = new ae("PowerCube", "Power Cubes", Collections.singleton(com.nianticproject.ingress.shared.af.j), null, null);
    arrayOfae[5] = new ae("Resonator", "Resonators", Collections.singleton(com.nianticproject.ingress.shared.af.a), null, null);
    arrayOfae[6] = new ae("EmpBuster", "Weapons", g.b(), null, null);
  }

  public v(k paramk, ac paramac, av paramav, com.nianticproject.ingress.common.g.e parame, l paraml)
  {
    this.d = ((k)an.a(paramk));
    this.h = ((av)an.a(paramav));
    this.e = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.i = ((l)an.a(paraml));
    this.g = ((ac)an.a(paramac));
    this.r = new ao();
    for (ae localae : c)
      this.z.put(localae.a, localae);
    a(c[0].a);
  }

  public static int a(Stage paramStage)
  {
    return (int)(0.2F * paramStage.getWidth());
  }

  private TextButton a(ae paramae, TextButton.TextButtonStyle paramTextButtonStyle)
  {
    TextButton localTextButton = new TextButton(paramae.a, paramTextButtonStyle);
    localTextButton.addListener(new y(this, paramae));
    localTextButton.setWidth(this.x);
    return localTextButton;
  }

  private TextButton a(aj paramaj, TextButton.TextButtonStyle paramTextButtonStyle)
  {
    TextButton localTextButton = new TextButton(paramaj.d, paramTextButtonStyle);
    localTextButton.addListener(new z(this, paramaj));
    localTextButton.setWidth(this.x);
    return localTextButton;
  }

  private void a(ae paramae)
  {
    an.a(paramae);
    float f1 = 0.006F * this.n.getHeight();
    this.w.clear();
    if (paramae.d != null)
    {
      Iterator localIterator = paramae.d.iterator();
      while (localIterator.hasNext())
      {
        aj localaj = (aj)localIterator.next();
        if (localaj != paramae.e)
        {
          this.w.add(a(localaj, this.b)).n().b(this.x).h(f1);
          this.w.row();
        }
      }
    }
    if (paramae.e != null)
    {
      this.w.add(a(paramae.e, this.a)).n().b(this.x).h(f1);
      this.w.row();
    }
    this.w.pack();
  }

  public static void f()
  {
  }

  private void h()
  {
    this.u.clearActions();
    this.t.clearActions();
    if (!this.u.isVisible())
    {
      i();
      Vector2 localVector2 = b.a(this.t);
      this.u.setX(localVector2.x);
      this.u.setY(localVector2.y);
      this.t.addAction(Actions.sequence(Actions.fadeOut(0.15F), Actions.visible(false)));
      this.u.addAction(Actions.sequence(Actions.visible(true), Actions.fadeIn(0.15F)));
      if (this.w.isVisible())
      {
        this.w.addAction(Actions.sequence(Actions.fadeOut(0.15F), Actions.visible(false)));
        this.v.addAction(Actions.sequence(Actions.visible(true), Actions.fadeIn(0.15F)));
      }
      return;
    }
    this.u.addAction(Actions.sequence(Actions.fadeOut(0.15F), Actions.visible(false)));
    this.t.addAction(Actions.sequence(Actions.visible(true), Actions.fadeIn(0.15F)));
  }

  private void i()
  {
    float f1 = 0.006F * this.n.getHeight();
    this.u.clear();
    Iterator localIterator = this.z.values().iterator();
    while (localIterator.hasNext())
    {
      ae localae = (ae)localIterator.next();
      if (localae != this.y)
      {
        this.u.add(a(localae, this.b)).n().b(this.x).h(f1);
        this.u.row();
      }
    }
    if (this.y != null)
    {
      this.u.add(a(this.y, this.a)).n().b(this.x).h(f1);
      this.u.row();
    }
    this.u.pack();
  }

  private void j()
  {
    if ((this.n == null) || (!this.l))
      return;
    this.l = false;
    if (this.f == null)
    {
      this.q.setVisible(true);
      this.q.setText("Loading...");
      return;
    }
    float f1 = c();
    this.p.clear();
    an.a(this.y);
    List localList = this.f.a(new af(this.y));
    if (this.y.e != null);
    int i1;
    switch (aa.a[this.y.e.ordinal()])
    {
    default:
      ab.a(this.k, localList);
      if (this.y.f != null)
      {
        Iterator localIterator = localList.iterator();
        i1 = 0;
        label165: if (localIterator.hasNext())
          if (((q)localIterator.next()).a(this.y.f))
          {
            label198: if (i1 != -1)
              break label271;
            b(f1);
          }
      }
      break;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      if (this.k.b() != 0)
        break label290;
      this.q.setVisible(true);
      this.q.setText("No Items");
      return;
      q.a(localList);
      break;
      q.b(localList);
      break;
      q.c(localList);
      break;
      i1++;
      break label165;
      i1 = -1;
      break label198;
      label271: this.p.a(this.k.a(i1));
    }
    label290: this.q.setVisible(false);
  }

  public final void a()
  {
    this.j.a();
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.m = paramSkin;
    this.n = paramStage;
    int i1 = (int)(0.6F * paramStage.getWidth());
    int i2 = (int)(0.57F * paramStage.getHeight());
    com.a.a.e locale = com.a.a.e.b(0.04F);
    this.q = new Label("", (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class));
    this.q.setAlignment(1);
    this.q.setVisible(false);
    this.p = new WidgetCarousel(i1, i2, (WidgetCarousel.WidgetCarouselStyle)paramSkin.get("inventory", WidgetCarousel.WidgetCarouselStyle.class), this.k);
    this.p.a(this.k);
    this.o = new Table();
    this.A = new aa(paramSkin, (int)paramStage.getWidth(), this.g, ag.a);
    this.o.add(this.A).i().j().b(Integer.valueOf(2));
    this.o.row();
    Table localTable1 = this.o;
    Actor[] arrayOfActor = new Actor[2];
    arrayOfActor[0] = this.p;
    arrayOfActor[1] = this.q;
    localTable1.stack(arrayOfActor).n().f().i(5.0F).k(5.0F).b(Integer.valueOf(2)).a(com.a.a.e.a(1.0F)).e(com.a.a.e.b(0.02F));
    this.o.row();
    this.a = ((TextButton.TextButtonStyle)paramSkin.get("default", TextButton.TextButtonStyle.class));
    this.b = ((TextButton.TextButtonStyle)paramSkin.get("menu-item-button-list", TextButton.TextButtonStyle.class));
    this.u = new Table();
    this.u.defaults().n().f();
    this.u.setVisible(false);
    this.w = new Table();
    this.w.defaults().n().f();
    this.w.setVisible(false);
    TextButton.TextButtonStyle localTextButtonStyle = this.a;
    Table localTable2 = new Table();
    localTable2.defaults().g(0.006F * this.n.getHeight());
    Iterator localIterator = this.z.values().iterator();
    while (localIterator.hasNext())
    {
      localTable2.add(a((ae)localIterator.next(), localTextButtonStyle));
      localTable2.row();
    }
    localTable2.pack();
    int i3 = (int)localTable2.getWidth();
    localTable2.clear();
    aj[] arrayOfaj = aj.values();
    int i4 = arrayOfaj.length;
    for (int i5 = 0; i5 < i4; i5++)
    {
      localTable2.add(a(arrayOfaj[i5], localTextButtonStyle));
      localTable2.row();
    }
    localTable2.pack();
    this.x = Math.max(i3, (int)localTable2.getWidth());
    i();
    a(this.y);
    this.t = new com.nianticproject.ingress.common.ui.widget.f(this.y.a, this.a);
    this.t.addListener(new w(this));
    this.t.setWidth(this.x);
    String str;
    com.nianticproject.ingress.common.ui.widget.f localf;
    if (this.y.e != null)
    {
      str = this.y.e.d;
      this.v = new com.nianticproject.ingress.common.ui.widget.f(str, this.a);
      this.v.addListener(new x(this));
      localf = this.v;
      if (this.y.d == null)
        break label853;
    }
    label853: for (boolean bool = true; ; bool = false)
    {
      localf.setVisible(bool);
      this.v.setWidth(this.x);
      this.o.add(this.t).n().b(this.x).k().f(locale);
      this.o.add(this.v).n().b(this.x).m().h(locale);
      this.o.row();
      this.o.setX(0.0F);
      this.o.setY(0.0F);
      this.o.setWidth(paramStage.getWidth());
      this.o.setHeight(paramStage.getHeight());
      paramStage.addActor(this.o);
      paramStage.addActor(this.u);
      paramStage.addActor(this.w);
      j();
      return;
      str = null;
      break;
    }
  }

  public final void a(al paramal)
  {
    this.f = paramal;
    this.l = true;
  }

  public final void a(String paramString)
  {
    ae localae = (ae)an.a(this.z.get(paramString));
    if (this.y != null)
      this.y.c = this.p.g();
    if (localae != this.y)
    {
      this.y = localae;
      this.l = true;
    }
  }

  public final boolean a(float paramFloat)
  {
    j();
    this.r.a(paramFloat);
    ab.b(this.k);
    return true;
  }

  public final String b()
  {
    if (this.y != null)
      return this.y.a;
    return null;
  }

  public final void b(float paramFloat)
  {
    this.p.a(paramFloat);
  }

  public final float c()
  {
    if (this.y != null)
      return this.y.c;
    return 0.0F;
  }

  public final void d()
  {
    if ((this.u != null) && (this.u.isVisible()))
      h();
  }

  public final void dispose()
  {
    if (this.o != null)
    {
      this.o.remove();
      this.o = null;
    }
    if (this.u != null)
    {
      this.u.remove();
      this.u = null;
    }
    this.j.dispose();
  }

  public final void e()
  {
    this.A.a();
  }

  public final void g()
  {
    if (this.y != null)
      this.y.c = this.p.g();
    ab.a(this.k);
    this.f = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.v
 * JD-Core Version:    0.6.2
 */