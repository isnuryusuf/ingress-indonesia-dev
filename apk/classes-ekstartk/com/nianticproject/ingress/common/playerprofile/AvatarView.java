package com.nianticproject.ingress.common.playerprofile;

import com.a.a.e;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.ag;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.widget.az;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption;
import com.nianticproject.ingress.shared.t;

public final class AvatarView extends Table
{
  private final Skin a;
  private final av b;
  private final AvatarView.AvatarViewStyle c;
  private ai d = null;
  private j e;
  private int f;
  private d g;
  private d h;
  private boolean i;
  private boolean j;
  private boolean k;
  private final i l;
  private final Image m;
  private final Image n;

  public AvatarView(av paramav, Skin paramSkin)
  {
    this(null, ai.c, 1, paramav, paramSkin);
  }

  public AvatarView(k paramk, av paramav, Skin paramSkin)
  {
    this(paramk.r(), paramk.h(), paramk.l(), paramav, paramSkin);
    paramk.a(new u(this));
  }

  public AvatarView(j paramj, ai paramai, int paramInt, av paramav, Skin paramSkin)
  {
    super(paramSkin);
    this.a = paramSkin;
    this.b = ((av)an.a(paramav));
    this.c = ((AvatarView.AvatarViewStyle)paramSkin.get(AvatarView.AvatarViewStyle.class));
    this.l = new i(this.c);
    this.m = new Image();
    this.m.setScaling(Scaling.fill);
    this.n = new Image();
    this.n.setScaling(Scaling.fill);
    Table localTable = new Table();
    Actor[] arrayOfActor1 = new Actor[2];
    arrayOfActor1[0] = this.m;
    arrayOfActor1[1] = this.n;
    localTable.stack(arrayOfActor1).a(e.a(0.5F)).b(e.b(0.5F));
    Actor[] arrayOfActor2 = new Actor[2];
    arrayOfActor2[0] = this.l;
    arrayOfActor2[1] = localTable;
    stack(arrayOfActor2).n().f();
    addListener(new v(this));
    a(paramai);
    a(paramj);
    a(paramInt);
  }

  private void e()
  {
    if ((this.e == null) || (this.e.b() == null) || (this.e.c() == null))
    {
      f();
      this.i = true;
      this.j = true;
      this.k = true;
      return;
    }
    this.k = false;
    this.i = false;
    this.j = false;
    this.g = this.b.a(this.e.b().b(), (int)(0.5F * getWidth()));
    this.h = this.b.a(this.e.c().b(), (int)(0.5F * getWidth()));
  }

  private void f()
  {
    this.m.setDrawable(null);
    this.n.setDrawable(g());
    if (this.g != null)
    {
      this.g.d();
      this.g = null;
    }
    if (this.h != null)
    {
      this.h.d();
      this.h = null;
    }
  }

  private Drawable g()
  {
    switch (w.a[this.d.ordinal()])
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      return new TextureRegionDrawable(com.nianticproject.ingress.common.b.c.a(this.a, "avatar-faction-enlightened"));
    case 2:
      return null;
    case 3:
    }
    return new TextureRegionDrawable(com.nianticproject.ingress.common.b.c.a(this.a, "avatar-faction-resistance"));
  }

  public final j a()
  {
    return this.e;
  }

  public final void a(int paramInt)
  {
    this.f = paramInt;
    float f1 = t.b();
    float f2 = paramInt / f1;
    this.l.a(f2);
  }

  public final void a(j paramj)
  {
    this.e = paramj;
    e();
  }

  public final void a(ai paramai)
  {
    if (ag.a(this.d, paramai))
      return;
    this.d = paramai;
    Color localColor = this.c.getTintColor(this.d);
    this.l.a(localColor);
    this.n.setDrawable(g());
    e();
  }

  public final void act(float paramFloat)
  {
    boolean bool = true;
    super.act(paramFloat);
    if (!this.k)
    {
      if ((!this.i) && (this.g != null) && (this.g.a()))
        this.i = bool;
      if ((!this.j) && (this.h != null) && (this.h.a()))
        this.j = bool;
      if ((!this.i) || (!this.j))
        break label207;
      this.k = bool;
      if (this.k)
      {
        if (this.g.c())
          break label212;
        this.m.setDrawable(new az(new TextureRegionDrawable(this.g.b()), this.e.d().intValue()));
      }
    }
    while (true)
    {
      if (this.h.c())
        break label223;
      this.n.setDrawable(new az(new TextureRegionDrawable(this.h.b()), this.e.e().intValue()));
      return;
      label207: bool = false;
      break;
      label212: this.m.setDrawable(null);
    }
    label223: this.n.setDrawable(g());
  }

  public final int b()
  {
    return this.f;
  }

  public final void c()
  {
    f();
  }

  public final ai d()
  {
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.AvatarView
 * JD-Core Version:    0.6.2
 */