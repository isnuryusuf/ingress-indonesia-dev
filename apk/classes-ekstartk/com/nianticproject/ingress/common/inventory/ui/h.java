package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.d;

class h
  implements u
{
  protected final q a;
  protected final Image b;
  protected d c;
  private final com.nianticproject.ingress.common.j.e d;
  private final int e;

  h(q paramq, com.nianticproject.ingress.common.j.e parame, int paramInt)
  {
    this.a = ((q)an.a(paramq));
    this.d = ((com.nianticproject.ingress.common.j.e)an.a(parame));
    this.b = new Image(null, Scaling.fit);
    this.e = paramInt;
  }

  private void e()
  {
    if (this.c == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Unexpected second call to createTexture.");
      this.c = this.d.a(this.e);
      return;
    }
  }

  public Actor a(Skin paramSkin)
  {
    Table localTable = new Table();
    localTable.setBackground(paramSkin.getDrawable("opaque-outline"));
    localTable.add(this.b).n().f().g(5.0F);
    return localTable;
  }

  public final q a()
  {
    return this.a;
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
      if (!this.d.a())
        e();
    do
    {
      return;
      this.b.setDrawable(null);
    }
    while (this.c == null);
    this.c.d();
    this.c = null;
  }

  public Actor b(Skin paramSkin)
  {
    Table localTable = new Table();
    Actor localActor1 = d(paramSkin);
    Actor localActor2 = f(paramSkin);
    Actor localActor3 = e(paramSkin);
    localTable.add(localActor1).k().i();
    localTable.add(localActor2).o().k().f(com.a.a.e.b(0.08F)).i().k();
    localTable.add(localActor3).m().i();
    return localTable;
  }

  public final void b()
  {
    if (this.c == null)
      e();
  }

  public Actor c(Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("inventory-footer", Label.LabelStyle.class);
    if (this.a.c())
    {
      Label localLabel = new Label(this.a.d().a(), com.nianticproject.ingress.common.ui.l.a(paramSkin, localLabelStyle, this.a.d()));
      localLabel.setAlignment(5);
      return localLabel;
    }
    return new Label("", localLabelStyle);
  }

  public boolean c()
  {
    return false;
  }

  protected Actor d(Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("inventory-header", Label.LabelStyle.class);
    if (this.a.b())
    {
      Label localLabel = new Label(this.a.f(), com.nianticproject.ingress.common.ui.l.a(paramSkin, localLabelStyle, this.a.e()));
      localLabel.setAlignment(8);
      return localLabel;
    }
    return new Label("", localLabelStyle);
  }

  public void d()
  {
    if ((this.c != null) && (this.c.a()) && (this.b.getDrawable() == null))
      this.b.setDrawable(new TextureRegionDrawable(this.c.b()));
  }

  public void dispose()
  {
    if (this.c != null)
    {
      this.c.d();
      this.c = null;
    }
    if (this.b != null)
      this.b.remove();
  }

  protected final Actor e(Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("inventory-header", Label.LabelStyle.class);
    if (this.a.g() > 1)
    {
      Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)paramSkin.get("inventory-header-count", Label.LabelStyle.class);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.a.g());
      Label localLabel = new Label(String.format("[x%d]", arrayOfObject), localLabelStyle2);
      localLabel.setAlignment(16);
      return localLabel;
    }
    return new Label("", localLabelStyle1);
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof h))
      return false;
    return this.a.equals(((h)paramObject).a);
  }

  protected final Actor f(Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("inventory-header", Label.LabelStyle.class);
    return new Label(a.a(this.a.h()), localLabelStyle);
  }

  public int hashCode()
  {
    return this.a.hashCode();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.h
 * JD-Core Version:    0.6.2
 */