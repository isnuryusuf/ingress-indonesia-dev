package com.nianticproject.ingress.common.scanner.visuals;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.inventory.ui.v;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.ef;
import com.nianticproject.ingress.common.scanner.ez;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.shared.ai;
import java.util.List;
import java.util.Map;

final class cw extends cs
{
  private final Map<ai, TextButton.TextButtonStyle> g = hc.b();
  private final Map<ai, Color> h = hc.b();
  private Label i;
  private Label j;
  private Label k;
  private Image l;
  private Image m;
  private ProgressIndicator n;
  private cy o;
  private final ef p = new cx(this);
  private final ed q;
  private final ez r;

  public cw(h paramh, ed paramed1, ed paramed2, ez paramez)
  {
    super(paramh, paramed1, "TARGET");
    this.q = paramed2;
    this.r = paramez;
  }

  private float a(FloatArray paramFloatArray, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i1 = 0;
    if (i1 < paramFloatArray.size)
    {
      float f = paramFloatArray.items[i1];
      if (Math.abs(f - paramFloat1) < this.e.getHeight())
        if (f >= (paramFloat2 + paramFloat3) / 2.0F)
          break label67;
      label67: for (paramFloat1 += this.e.getHeight(); ; paramFloat1 -= this.e.getHeight())
      {
        i1++;
        break;
      }
    }
    return paramFloat1;
  }

  protected final float a()
  {
    return 0.0F;
  }

  protected final void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    this.d.getWidth();
    float f1 = this.m.getWidth();
    float f2 = this.m.getHeight();
    this.m.setVisible(true);
    this.m.setPosition(0.0F, 0.0F);
    this.m.setRotation(0.0F);
    if (paramFloat1 < 0.0F)
    {
      float f7 = this.m.getHeight();
      this.m.getWidth();
      this.m.rotate(90.0F);
      paramFloat4 = a(this.o.b(), paramFloat4, paramFloat7, paramFloat8);
      this.e.setY(paramFloat4);
      this.o.a(da.a, paramFloat4);
      this.m.setPosition(0.0F, paramFloat4);
      this.m.translate(f7, 0.0F);
    }
    while (paramFloat4 > 0.089F * this.d.getHeight())
    {
      this.f.setX(paramFloat3);
      this.f.setY(paramFloat4 - this.f.getHeight());
      return;
      if (paramFloat1 > this.d.getWidth())
      {
        float f5 = this.m.getHeight();
        float f6 = this.m.getWidth();
        this.m.rotate(-90.0F);
        paramFloat4 = a(this.o.c(), paramFloat4, paramFloat7, paramFloat8);
        this.e.setY(paramFloat4);
        this.o.a(da.b, paramFloat4);
        this.m.setPosition(this.d.getWidth() - f5, paramFloat4);
        this.m.translate(0.0F, f6);
      }
      else if ((paramFloat2 < 0.06F * this.d.getHeight()) || (paramFloat2 > 0.9F * this.d.getHeight()))
      {
        float f3 = a(this.o.b(), paramFloat4, paramFloat7, paramFloat8);
        float f4 = a(this.o.c(), paramFloat4, paramFloat7, paramFloat8);
        if ((f3 == paramFloat4) && (f4 == paramFloat4))
          this.o.a(da.c, paramFloat4);
        while (true)
        {
          if (paramFloat2 >= 0.06F * this.d.getHeight())
            break label512;
          this.m.rotate(180.0F);
          this.m.setPosition(paramFloat3, 0.06F * this.d.getHeight());
          this.m.translate(f1, f2);
          break;
          if (Math.abs(f3 - paramFloat4) < Math.abs(f4 - paramFloat4))
          {
            this.o.a(da.a, f3);
            paramFloat4 = f3;
            paramFloat3 = paramFloat5;
          }
          else
          {
            this.o.a(da.b, f4);
            paramFloat4 = f4;
            paramFloat3 = paramFloat6;
          }
        }
        label512: this.m.setPosition(paramFloat3, 0.9F * this.d.getHeight() - f2);
      }
      else
      {
        this.m.setVisible(false);
        this.o.a(da.c, paramFloat4);
      }
    }
    this.f.setX(paramFloat3);
    this.f.setY(paramFloat4 + this.e.getHeight());
  }

  protected final void a(int paramInt)
  {
    this.e.padLeft(paramInt);
    this.e.padRight(0.0F);
    this.e.pack();
    this.f.padLeft(paramInt);
    this.f.padRight(paramInt);
    this.f.pack();
  }

  public final void a(TextureRegion paramTextureRegion)
  {
    an.a(this.l);
    int i1 = paramTextureRegion.getRegionHeight();
    int i2 = paramTextureRegion.getRegionWidth();
    if (i2 > i1);
    for (TextureRegion localTextureRegion = new TextureRegion(paramTextureRegion, (i2 - i1) / 2, 0, i1, i1); ; localTextureRegion = new TextureRegion(paramTextureRegion, 0, (i1 - i2) / 2, i2, i2))
    {
      this.l.setDrawable(new TextureRegionDrawable(localTextureRegion));
      return;
    }
  }

  protected final void a(Vector2 paramVector2, float paramFloat1, float paramFloat2)
  {
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    super.a(paramSkin, paramStage);
    this.l = new Image();
    this.l.setAlign(1);
    this.l.setScaling(Scaling.fill);
    this.m = new Image(paramSkin, "hud-arrow");
    this.m.setAlign(1);
    this.m.setScaling(Scaling.fit);
    this.m.setHeight(0.024F * paramStage.getHeight());
    float f = 0.95F * v.a(paramStage);
    this.n = new ProgressIndicator(paramSkin);
    this.n.a(true);
    this.i = new Label(" ", paramSkin, "default-font", "yellow");
    this.j = new Label("L1", paramSkin, "default-font", "white");
    this.k = new Label(" PORTAL", paramSkin, "x-small-font", "white");
    this.i.setAlignment(1);
    this.e.clear();
    Table localTable1 = new Table();
    Table localTable2 = new Table();
    localTable2.add(this.j).a(Integer.valueOf(8));
    localTable2.add(this.k).a(Integer.valueOf(8));
    localTable1.add(localTable2);
    localTable1.row();
    localTable1.add(this.i).a(Integer.valueOf(8));
    this.e.add(localTable1).g(5.0F).a(Integer.valueOf(2));
    f localf = this.e;
    Actor[] arrayOfActor = new Actor[2];
    arrayOfActor[0] = this.n;
    arrayOfActor[1] = this.l;
    localf.stack(arrayOfActor).b(f).c(f).g(5.0F);
    this.g.put(ai.b, paramSkin.get("portal-vector-aliens", TextButton.TextButtonStyle.class));
    this.g.put(ai.a, paramSkin.get("portal-vector-resistance", TextButton.TextButtonStyle.class));
    this.g.put(ai.c, paramSkin.get("portal-vector-neutral", TextButton.TextButtonStyle.class));
    this.h.put(ai.b, paramSkin.get("aliens", Color.class));
    this.h.put(ai.a, paramSkin.get("resistance", Color.class));
    this.h.put(ai.c, paramSkin.get("neutral", Color.class));
    this.f.setStyle((Button.ButtonStyle)paramSkin.get("portal-vector-target", TextButton.TextButtonStyle.class));
  }

  final void a(cy paramcy)
  {
    this.o = paramcy;
  }

  public final void a(ai paramai)
  {
    an.a(this.e);
    TextButton.TextButtonStyle localTextButtonStyle = (TextButton.TextButtonStyle)this.g.get(paramai);
    this.e.setStyle(localTextButtonStyle);
    this.k.setColor((Color)this.h.get(paramai));
    this.m.setColor((Color)this.h.get(paramai));
  }

  protected final void a(String paramString)
  {
    an.a(this.i);
    this.i.setText(paramString);
  }

  protected final float b()
  {
    return 0.052F;
  }

  public final void b(int paramInt)
  {
    an.a(this.j);
    this.j.setText("L" + paramInt);
  }

  protected final float c()
  {
    return 0.052F;
  }

  protected final float d()
  {
    return 0.129F;
  }

  protected final float e()
  {
    return 0.089F;
  }

  protected final List<Actor> g()
  {
    return dc.a(this.e, this.f, this.m);
  }

  protected final void h()
  {
    this.q.a(this.a.e());
    this.r.b(true);
    this.q.a(this.p);
    f();
  }

  public final boolean i()
  {
    return (this.l != null) && (this.l.getDrawable() != null);
  }

  public final void j()
  {
    this.n.setVisible(false);
  }

  public final void k()
  {
    this.n.setVisible(true);
    this.l.setDrawable(null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cw
 * JD-Core Version:    0.6.2
 */