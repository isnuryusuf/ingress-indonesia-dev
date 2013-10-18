package com.nianticproject.ingress.common.ui.elements;

import com.a.a.c;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public final class i extends Table
{
  private final Skin a;
  private final float b;
  private final float c;
  private final Label.LabelStyle d;
  private final Label.LabelStyle e;
  private final LinkedHashMap<n, k> f = new LinkedHashMap();

  public i(Skin paramSkin, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.a = paramSkin;
    this.b = paramFloat1;
    this.c = paramFloat2;
    this.d = ((Label.LabelStyle)paramSkin.get("butterbar-title", Label.LabelStyle.class));
    this.e = ((Label.LabelStyle)paramSkin.get("small-white", Label.LabelStyle.class));
    setBackground(paramSkin.getDrawable("butter-bar-background"));
    setWidth(paramFloat3);
    setVisible(false);
    addListener(new j(this));
  }

  private void b()
  {
    if (this.f.isEmpty())
    {
      clearActions();
      addAction(Actions.sequence(Actions.parallel(Actions.fadeOut(0.375F), Actions.moveTo(this.b + getWidth(), getY(), 0.375F)), Actions.visible(false)));
      return;
    }
    reset();
    defaults().g().o().i();
    float f1 = this.e.font.getCapHeight();
    pad(f1 * 0.0F, f1 * 2.0F, 0.5F * f1, f1 * 2.0F);
    k localk = a();
    if (localk != null)
    {
      l locall1 = localk.b;
      float f2 = 0.0F;
      if (locall1 != null)
      {
        Label localLabel1 = new Label(localk.b.a, this.d);
        add(localLabel1);
        f2 = 0.0F + localLabel1.getPrefHeight();
      }
      if (localk.a != null)
      {
        Iterator localIterator = localk.a.iterator();
        Label localLabel2;
        for (f3 = f2; localIterator.hasNext(); f3 += localLabel2.getPrefHeight())
        {
          l locall2 = (l)localIterator.next();
          row();
          localLabel2 = new Label(locall2.a, new Label.LabelStyle(this.e.font, locall2.b));
          add(localLabel2);
        }
      }
      float f3 = f2;
      setHeight(getPrefHeight());
      setY(this.c - f3);
    }
    setVisible(true);
    setX(this.b + getWidth());
    clearActions();
    addAction(Actions.parallel(Actions.fadeIn(0.375F), Actions.moveTo(this.b, getY(), 0.375F)));
  }

  public final k a()
  {
    Iterator localIterator = this.f.keySet().iterator();
    for (n localn = null; localIterator.hasNext(); localn = (n)localIterator.next());
    if (localn != null)
      return (k)this.f.get(localn);
    return null;
  }

  public final void a(n paramn)
  {
    try
    {
      this.f.remove(paramn);
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(n paramn, l paraml, Collection<l> paramCollection, o paramo)
  {
    try
    {
      an.a(paramCollection);
      this.f.put(paramn, new k(paramCollection, paraml, paramo));
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void setVisible(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.f.isEmpty()))
      return;
    super.setVisible(paramBoolean);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.i
 * JD-Core Version:    0.6.2
 */