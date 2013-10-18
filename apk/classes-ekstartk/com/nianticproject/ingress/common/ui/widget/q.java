package com.nianticproject.ingress.common.ui.widget;

import com.a.a.c;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Scaling;
import com.badlogic.gdx.utils.SnapshotArray;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.ui.l;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.f;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class q extends Table
{
  private Skin a;
  private List<com.nianticproject.ingress.common.inventory.ui.q> b = Collections.emptyList();
  private com.nianticproject.ingress.common.inventory.ui.q c;
  private ar d;
  private s e;
  private Map<Actor, com.nianticproject.ingress.common.inventory.ui.q> f = new HashMap();

  public q(Skin paramSkin)
  {
    this.a = paramSkin;
    Table localTable = new Table();
    Drawable localDrawable = paramSkin.getDrawable("transparent-no-outline-75");
    new Label.LabelStyle((Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class)).background = localDrawable;
    int i = (int)(0.3F * Gdx.graphics.getWidth());
    ar localar = new ar(i, (int)(0.8F * i), (WidgetCarousel.WidgetCarouselStyle)paramSkin.get("modBrowser2", WidgetCarousel.WidgetCarouselStyle.class));
    localar.a(new r(this));
    b();
    this.d = localar;
    localTable.row();
    localTable.add(this.d).o().f();
    row();
    add(localTable).o().a(Float.valueOf(1.0F), Float.valueOf(1.0F));
  }

  private void b()
  {
    float f1;
    Object localObject1;
    Table localTable;
    String str;
    if (this.d != null)
    {
      this.d.c();
      f1 = this.d.g();
      this.d.clear();
      this.f.clear();
      Label.LabelStyle localLabelStyle1 = new Label.LabelStyle(((Label.LabelStyle)this.a.get("large", Label.LabelStyle.class)).font, Color.CYAN);
      Label.LabelStyle localLabelStyle2 = new Label.LabelStyle(((Label.LabelStyle)this.a.get("small", Label.LabelStyle.class)).font, Color.WHITE);
      localObject1 = null;
      Iterator localIterator = this.b.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          com.nianticproject.ingress.common.inventory.ui.q localq = (com.nianticproject.ingress.common.inventory.ui.q)localIterator.next();
          f localf = localq.h();
          if ((Resource)localf.getComponent(Resource.class) != null)
          {
            localTable = new Table(localf.getGuid());
            Image localImage = new Image(g.a(localq.h()));
            localImage.setScaling(Scaling.fit);
            localImage.setAlign(9);
            int i = localq.g();
            if (i > 1)
            {
              str = "x" + i;
              label232: Label localLabel1 = new Label(str, localLabelStyle2);
              localLabel1.setAlignment(18);
              g.d(localf);
              Label localLabel2 = new Label(localq.f(), l.a(this.a, localLabelStyle1, localq.e()));
              localLabel2.setAlignment(20);
              localTable.stack(new Actor[] { localImage, localLabel1, localLabel2 }).n().f().i().g(4.0F);
              this.d.addActor(localTable);
              this.f.put(localTable, localq);
              if (localq != this.c)
                break label428;
            }
          }
        }
    }
    label428: for (Object localObject2 = localTable; ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      str = "";
      break label232;
      this.d.a(f1);
      if ((localObject1 != null) && (this.d.f() != localObject1))
        this.d.a(localObject1);
      c();
      this.d.c();
      return;
    }
  }

  private void c()
  {
    Drawable localDrawable1 = this.a.getDrawable("item-enabled-selected");
    Drawable localDrawable2 = this.a.getDrawable("item-enabled-unselected");
    Actor localActor1 = this.d.d();
    Iterator localIterator = this.d.getChildren().iterator();
    while (localIterator.hasNext())
    {
      Actor localActor2 = (Actor)localIterator.next();
      f localf = ((com.nianticproject.ingress.common.inventory.ui.q)this.f.get(localActor2)).h();
      int i;
      label92: Table localTable;
      if (localActor2 == localActor1)
      {
        i = 1;
        localTable = (Table)localActor2;
        if (localTable != null)
          if (i == 0);
      }
      else
      {
        for (Drawable localDrawable3 = g.a(localDrawable1, localf); ; localDrawable3 = localDrawable2)
        {
          localTable.setBackground(localDrawable3);
          break;
          i = 0;
          break label92;
        }
      }
    }
  }

  public final f a()
  {
    com.nianticproject.ingress.common.inventory.ui.q localq = (com.nianticproject.ingress.common.inventory.ui.q)this.f.get(this.d.f());
    if (localq != null)
      return localq.h();
    return null;
  }

  public final void a(s params)
  {
    this.e = params;
  }

  public final void a(List<com.nianticproject.ingress.common.inventory.ui.q> paramList, com.nianticproject.ingress.common.inventory.ui.q paramq)
  {
    this.b = paramList;
    this.c = paramq;
    b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.q
 * JD-Core Version:    0.6.2
 */