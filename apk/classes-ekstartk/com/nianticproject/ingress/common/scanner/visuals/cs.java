package com.nianticproject.ingress.common.scanner.visuals;

import com.a.a.c;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.c.dc;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.f;
import java.util.Iterator;
import java.util.List;

public class cs
  implements ac
{
  protected final ed a;
  protected boolean b;
  protected double c;
  protected Stage d = null;
  protected f e = null;
  protected f f = null;
  private final h g;
  private final String h;
  private Table i = null;

  public cs(h paramh, ed paramed, String paramString)
  {
    this.g = paramh;
    this.a = paramed;
    this.c = 0.0D;
    this.b = true;
    this.h = paramString;
  }

  private void a(double paramDouble)
  {
    if (Math.abs(paramDouble - this.c) > 0.5D)
    {
      this.c = paramDouble;
      a(com.nianticproject.ingress.common.ui.l.a((float)paramDouble));
      a((int)this.e.getStyle().font.getSpaceWidth());
    }
  }

  protected float a()
  {
    return 120.0F;
  }

  protected void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    if (paramFloat3 < this.d.getWidth() / 2.0F)
    {
      this.f.setX(paramFloat3 + this.e.getWidth());
      this.f.setY(paramFloat4);
      return;
    }
    this.f.setX(paramFloat3 - this.f.getWidth());
    this.f.setY(paramFloat4);
  }

  protected void a(int paramInt)
  {
    this.e.padLeft(paramInt);
    this.e.padRight(paramInt);
    this.e.pack();
    this.f.padLeft(paramInt);
    this.f.padRight(paramInt);
    this.f.pack();
  }

  public final void a(Vector2 paramVector2)
  {
    if (this.e != null)
    {
      a(this.a.d());
      Vector2 localVector2 = new Vector2(0.5F - paramVector2.x, 0.5F - paramVector2.y);
      if (localVector2.len2() < 0.000390625F)
        localVector2.y = 1.0F;
      localVector2.nor();
      float f1 = paramVector2.x * this.d.getWidth() + a() * localVector2.x;
      float f2 = paramVector2.y * this.d.getHeight() + a() * localVector2.y;
      float f3 = c() * this.d.getWidth();
      float f4 = (1.0F - b()) * this.d.getWidth() - this.e.getWidth();
      float f5 = e() * this.d.getHeight();
      float f6 = (1.0F - d()) * this.d.getHeight() - this.e.getHeight();
      float f7 = Math.max(f1 - this.e.getWidth() / 2.0F, f3);
      float f8 = Math.max(f2 - this.e.getHeight() / 2.0F, f5);
      float f9 = Math.min(f7, f4);
      float f10 = Math.min(f8, f6);
      this.e.setX(f9);
      this.e.setY(f10);
      a(f1, f2, f9, f10, f3, f4, f5, f6);
      a(paramVector2, f9, f10);
    }
  }

  protected void a(Vector2 paramVector2, float paramFloat1, float paramFloat2)
  {
    this.i.setX(paramVector2.x * this.d.getWidth() - this.i.getWidth() / 2.0F);
    this.i.setY(paramVector2.y * this.d.getHeight() - this.i.getHeight() / 2.0F);
    Vector2 localVector21 = new Vector2((paramFloat1 + this.e.getWidth() / 2.0F) / this.d.getWidth(), (paramFloat2 + this.e.getHeight() / 2.0F) / this.d.getHeight());
    Vector2 localVector22 = paramVector2.cpy().sub(localVector21).nor().rotate(90.0F).mul(3.0F / this.d.getHeight());
    Vector2[] arrayOfVector21 = { paramVector2, localVector21 };
    Vector2[] arrayOfVector22 = { localVector22, localVector22 };
    this.g.a(com.nianticproject.ingress.common.j.l.a, arrayOfVector21, arrayOfVector22, cr.d());
  }

  public void a(Skin paramSkin, Stage paramStage)
  {
    this.d = paramStage;
    TextButton.TextButtonStyle localTextButtonStyle1 = (TextButton.TextButtonStyle)paramSkin.get("player-compass", TextButton.TextButtonStyle.class);
    int j = (int)localTextButtonStyle1.font.getSpaceWidth();
    this.e = new f("", localTextButtonStyle1);
    this.e.padLeft(j);
    this.e.padRight(j);
    this.e.addListener(new ct(this));
    TextButton.TextButtonStyle localTextButtonStyle2 = (TextButton.TextButtonStyle)paramSkin.get("player-compass-clear", TextButton.TextButtonStyle.class);
    this.f = new f(this.h, localTextButtonStyle2);
    this.f.padLeft(j);
    this.f.padRight(j);
    this.f.setVisible(false);
    this.f.addListener(new cu(this));
    TextureRegion localTextureRegion = paramSkin.getRegion("nav-beacon");
    Image localImage = new Image(localTextureRegion);
    localImage.setScaling(Scaling.none);
    this.i = new Table();
    this.i.add(localImage).b(localTextureRegion.getRegionWidth()).c(localTextureRegion.getRegionHeight());
    a(this.a.d());
  }

  protected void a(String paramString)
  {
    this.e.setText(paramString);
  }

  public final boolean a(float paramFloat)
  {
    if (this.a.a())
    {
      if (this.b)
      {
        if (this.d != null)
        {
          localIterator2 = g().iterator();
          while (localIterator2.hasNext())
          {
            localActor = (Actor)localIterator2.next();
            this.d.addActor(localActor);
            localActor.toBack();
          }
        }
        this.b = false;
      }
      this.a.a(paramFloat);
    }
    while (this.b)
    {
      Iterator localIterator2;
      Actor localActor;
      return true;
    }
    if (this.d != null)
    {
      Iterator localIterator1 = g().iterator();
      while (localIterator1.hasNext())
        ((Actor)localIterator1.next()).remove();
    }
    this.b = true;
    return true;
  }

  protected float b()
  {
    return 0.0F;
  }

  protected float c()
  {
    return 0.0F;
  }

  protected float d()
  {
    return 0.1F;
  }

  public void dispose()
  {
    if (this.d != null)
    {
      Iterator localIterator = g().iterator();
      while (localIterator.hasNext())
        ((Actor)localIterator.next()).remove();
      this.d = null;
    }
    this.e = null;
    this.f = null;
    this.i = null;
  }

  protected float e()
  {
    return 0.06F;
  }

  protected final void f()
  {
    f localf;
    if (this.d != null)
    {
      localf = this.f;
      if (this.f.isVisible())
        break label30;
    }
    label30: for (boolean bool = true; ; bool = false)
    {
      localf.setVisible(bool);
      return;
    }
  }

  protected List<Actor> g()
  {
    return dc.a(this.e, this.f, this.i);
  }

  protected void h()
  {
    this.a.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cs
 * JD-Core Version:    0.6.2
 */