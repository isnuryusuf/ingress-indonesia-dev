package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.ScrollPaneStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.w.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class a extends Table
{
  private final com.nianticproject.ingress.shared.playerprofile.a a;
  private final Skin b;
  private final c c;
  private final ArrayList<Integer> d = eq.a();
  private final d e = new d((byte)0);
  private final Table f;
  private final float g;
  private float h;

  public a(com.nianticproject.ingress.shared.playerprofile.a parama, Skin paramSkin, c paramc, float paramFloat)
  {
    this.a = ((com.nianticproject.ingress.shared.playerprofile.a)an.a(parama));
    this.b = ((Skin)an.a(paramSkin));
    this.c = ((c)an.a(paramc));
    this.h = l.a(32.0F);
    this.g = paramFloat;
    this.f = new Table();
    this.f.defaults().j(l.a(8.0F));
    ScrollPane.ScrollPaneStyle localScrollPaneStyle = (ScrollPane.ScrollPaneStyle)paramSkin.get("avatar-color-picker", ScrollPane.ScrollPaneStyle.class);
    ScrollPane localScrollPane = new ScrollPane(this.f, localScrollPaneStyle);
    localScrollPane.setScrollingDisabled(false, true);
    localScrollPane.setFadeScrollBars(false);
    add(localScrollPane).o().g().c(this.h + 2.0F * paramFloat);
  }

  private void a(Button paramButton, Integer paramInteger)
  {
    if (this.e.b != null)
    {
      this.e.b.setChecked(false);
      this.e.b = null;
    }
    if (paramInteger != null)
      this.e.a = Integer.valueOf(paramInteger.intValue());
    if (paramButton != null)
    {
      this.e.b = paramButton;
      this.e.b.setChecked(true);
      this.c.a(this.a, paramInteger.intValue());
    }
  }

  public final float a()
  {
    return this.g;
  }

  public final void a(List<Integer> paramList, Integer paramInteger)
  {
    this.d.clear();
    if (paramList != null)
      this.d.addAll(paramList);
    a(null, paramInteger);
    invalidate();
  }

  public final void layout()
  {
    Object localObject = null;
    if (needsLayout())
    {
      float f1 = l.a(12.0F) / 2.0F;
      this.f.clear();
      a(null, null);
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        Integer localInteger = (Integer)localIterator.next();
        Button localButton = new Button(com.nianticproject.ingress.common.b.c.a(this.b, localInteger.intValue()));
        com.nianticproject.ingress.common.ui.widget.d locald = new com.nianticproject.ingress.common.ui.widget.d(new NinePatchDrawable(this.b.getPatch("avatar-color-picker-button-up")), new NinePatchDrawable(this.b.getPatch("avatar-color-picker-button-down")), new NinePatchDrawable(this.b.getPatch("avatar-color-picker-button-checked")));
        locald.addListener(new b(this, locald, localInteger));
        if (localObject == null)
          localObject = locald;
        this.f.stack(new Actor[] { localButton, locald }).b(this.h).c(this.h).i(f1).k(f1);
        if ((this.e.a != null) && (ag.a(this.e.a, localInteger)))
          a(locald, Integer.valueOf(localInteger.intValue()));
      }
      if ((this.e.b == null) && (localObject != null))
        a(localObject, (Integer)this.d.get(0));
      super.layout();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.a
 * JD-Core Version:    0.6.2
 */