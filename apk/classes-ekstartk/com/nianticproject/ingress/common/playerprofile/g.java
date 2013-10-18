package com.nianticproject.ingress.common.playerprofile;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.ui.widget.az;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption;

final class g extends Table
{
  private final av a;
  private final AvatarLayerOption b;
  private Image c;
  private Image d;
  private d e;
  private boolean f = false;

  public g(Skin paramSkin, av paramav, AvatarLayerOption paramAvatarLayerOption)
  {
    this.a = ((av)an.a(paramav));
    this.b = ((AvatarLayerOption)an.a(paramAvatarLayerOption));
    az localaz = new az(paramSkin.getDrawable("item-button-selection"), 16762974);
    this.d = new Image(null, Scaling.fill, 1);
    Table localTable = new Table();
    localTable.add(this.d).n().f().g(l.a(8.0F));
    this.c = new Image(localaz, Scaling.fill, 1);
    Actor[] arrayOfActor = new Actor[2];
    arrayOfActor[0] = this.c;
    arrayOfActor[1] = localTable;
    stack(arrayOfActor).n().f();
    a(false);
  }

  public final AvatarLayerOption a()
  {
    return this.b;
  }

  public final void a(boolean paramBoolean)
  {
    this.c.setVisible(paramBoolean);
  }

  public final void act(float paramFloat)
  {
    super.act(paramFloat);
    if (this.f);
    do
    {
      return;
      if (this.e == null)
      {
        this.e = this.a.a(this.b.b(), (int)Math.max(getWidth(), getHeight()));
        return;
      }
    }
    while (!this.e.a());
    this.d.setDrawable(new TextureRegionDrawable(this.e.b()));
    this.f = true;
  }

  public final void b()
  {
    this.d.setDrawable(null);
    this.f = false;
    if (this.e != null)
    {
      this.e.d();
      this.e = null;
    }
  }

  public final String toString()
  {
    return ag.a(this).a("option", this.b).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.g
 * JD-Core Version:    0.6.2
 */