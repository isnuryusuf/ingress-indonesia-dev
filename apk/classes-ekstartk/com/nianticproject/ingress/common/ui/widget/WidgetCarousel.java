package com.nianticproject.ingress.common.ui.widget;

import com.a.a.e;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.WidgetGroup;
import com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;
import com.google.a.a.an;
import com.google.a.c.jc;
import com.google.a.c.ji;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.shared.aj;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class WidgetCarousel extends WidgetGroup
{
  private float A;
  private float B;
  private float C;
  private float D;
  private boolean E = true;
  private boolean F = true;
  private boolean G;
  private boolean H;
  private boolean I;
  private boolean J;
  private bb K;
  private bc L;
  private Actor M;
  private Set<Actor> N = Collections.emptySet();
  private final Array<Actor> O;
  private final ActorGestureListener P = new ba(this);
  private final Rectangle a = new Rectangle();
  private final Rectangle b = new Rectangle();
  private final Rectangle c = new Rectangle();
  private final Rectangle d = new Rectangle();
  private float e = 0.0F;
  private WidgetCarousel.WidgetCarouselStyle f;
  private int g;
  private float h;
  private float i;
  private float j;
  private float k;
  private Actor l = null;
  private Actor m = null;
  private boolean n;
  private float o;
  private float p;
  private boolean q;
  private boolean r;
  private final int s;
  private final int t;
  private boolean u;
  private float v;
  private float w;
  private float x = 1.0F;
  private float y;
  private final float z;

  public WidgetCarousel(int paramInt1, int paramInt2, WidgetCarousel.WidgetCarouselStyle paramWidgetCarouselStyle, bb parambb)
  {
    this(paramInt1, paramInt2, paramWidgetCarouselStyle, parambb, (byte)0);
  }

  public WidgetCarousel(int paramInt1, int paramInt2, WidgetCarousel.WidgetCarouselStyle paramWidgetCarouselStyle, bb parambb, byte paramByte)
  {
    super(null);
    this.K = parambb;
    this.s = paramInt1;
    this.t = paramInt2;
    this.z = (0.3125F * Gdx.graphics.getWidth());
    float f1 = Gdx.graphics.getWidth();
    this.B = (0.1666667F * f1);
    this.C = (0.0625F * f1);
    this.D = (f1 * 0.3541667F);
    this.f = ((WidgetCarousel.WidgetCarouselStyle)an.a(paramWidgetCarouselStyle));
    this.g = paramWidgetCarouselStyle.widgetsPerSide;
    this.h = paramWidgetCarouselStyle.widgetOverdraw;
    this.i = paramWidgetCarouselStyle.widgetScaling;
    this.j = paramWidgetCarouselStyle.widgetAlpha;
    this.k = paramWidgetCarouselStyle.curveFalloff;
    if ((paramWidgetCarouselStyle.leftButton != null) && (paramWidgetCarouselStyle.rightButton != null))
    {
      this.l = new Image(paramWidgetCarouselStyle.leftButton);
      this.m = new Image(paramWidgetCarouselStyle.rightButton);
    }
    this.o = paramWidgetCarouselStyle.flingTimeS;
    this.p = paramWidgetCarouselStyle.scrollSpeedScalar;
    this.n = paramWidgetCarouselStyle.centerOnSelection;
    this.q = paramWidgetCarouselStyle.keepActorsInside;
    this.r = paramWidgetCarouselStyle.useScissor;
    invalidateHierarchy();
    this.O = new Array(false, 1 + 2 * this.g);
    addListener(this.P);
  }

  private float a()
  {
    return -this.w / this.o;
  }

  private void a(int paramInt1, int paramInt2, float paramFloat)
  {
    Actor localActor = a(paramInt2);
    if (localActor == null)
      return;
    int i1 = paramInt2 - paramInt1;
    float f1;
    if (i1 < 0)
      if (i1 == 0)
        f1 = Math.signum(paramFloat);
    while (true)
    {
      float f2 = (float)Math.pow(Math.abs((Math.abs(i1) + f1 * paramFloat) / this.g), this.k);
      float f3 = this.s * (1.0F + f2 * (this.i - 1.0F));
      float f4 = this.t * (1.0F + f2 * (this.i - 1.0F));
      float f5 = y.b(1.0F + f2 * (this.j - 1.0F));
      float f6 = getWidth() / 2.0F + this.s * this.h * i1;
      float f7 = getHeight() / 2.0F + this.a.height;
      float f8 = f6 - paramFloat * (this.s * this.h) - f3 / 2.0F;
      float f9 = f7 - f4 / 2.0F;
      if (this.q)
      {
        float f10 = Math.max(5.0F, f8);
        f8 = Math.min(getWidth() - f3 - 5.0F, f10);
      }
      localActor.setVisible(true);
      localActor.getColor().a = f5;
      localActor.setX(Math.round(f8));
      localActor.setY(Math.round(f9));
      localActor.setWidth(Math.round(f3));
      localActor.setHeight(Math.round(f4));
      if ((localActor instanceof Layout))
        ((Layout)localActor).invalidate();
      getChildren().add(localActor);
      return;
      f1 = 1.0F;
      continue;
      f1 = -1.0F;
    }
  }

  private float b(float paramFloat)
  {
    return this.A + paramFloat * this.w + paramFloat * (paramFloat * (0.5F * a()));
  }

  private float b(int paramInt)
  {
    an.a(this.K);
    int i1 = this.K.b();
    if ((paramInt < 0) || (i1 <= 1))
      return 0.0F;
    if (paramInt >= i1)
      return this.x;
    return this.x * paramInt / (i1 - 1);
  }

  private void c(float paramFloat)
  {
    float f1 = this.v;
    float f2;
    if (this.F)
      if (this.E)
        f2 = MathUtils.clamp(this.v - paramFloat, -this.B, this.x + this.B);
    while (true)
    {
      if (f1 != f2)
      {
        h();
        this.v = f2;
      }
      return;
      f2 = MathUtils.clamp(this.v - paramFloat, 0.0F, this.x);
      continue;
      f2 = f1 - paramFloat;
    }
  }

  private int d(float paramFloat)
  {
    an.a(this.K);
    int i1 = this.K.b();
    if (i1 == 0)
      return -1;
    return Math.round(y.b(paramFloat) * (i1 - 1));
  }

  private void h()
  {
    this.G = true;
    this.H = true;
  }

  private void i()
  {
    float f1 = y.b(g());
    this.b.x = (this.a.x + (int)(f1 * (this.a.width - this.b.width)));
    this.b.y = this.a.y;
  }

  private int j()
  {
    return d(g());
  }

  public final Actor a(int paramInt)
  {
    an.a(this.K);
    if ((paramInt >= 0) && (paramInt < this.K.b()));
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      an.a(this.K);
      Actor localActor = this.K.a(paramInt);
      if (localActor.getParent() != this)
        addActor(localActor);
      return localActor;
    }
    return null;
  }

  public final void a(float paramFloat)
  {
    if (needsLayout())
      layout();
    int i1 = (int)(paramFloat * this.x);
    c(this.v - i1);
  }

  public final void a(Actor paramActor)
  {
    an.a(this.K);
    int i1 = this.K.a(paramActor);
    if (i1 != -1)
      a(i1 / (this.K.b() - 1.0F));
  }

  public final void a(bb parambb)
  {
    if ((this.K == null) && (parambb != null));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.K = parambb;
      return;
    }
  }

  public final void a(bc parambc)
  {
    if ((this.L == null) || (parambc == null));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.L = parambc;
      this.M = null;
      return;
    }
  }

  public void act(float paramFloat)
  {
    aj.a("WidgetCarousel.act");
    super.act(paramFloat);
    boolean bool1 = this.P.isPanning();
    int i1;
    boolean bool2;
    label41: float f6;
    if (this.y > 0.0F)
    {
      i1 = 1;
      if ((!bool1) && (i1 == 0))
        break label442;
      bool2 = true;
      if (i1 == 0)
        break label818;
      this.y = Math.max(0.0F, this.y - paramFloat);
      float f5 = this.o - this.y;
      f6 = this.w + f5 * a();
      this.v = b(this.o - this.y);
      h();
      if ((this.v <= -this.B) || (this.v >= this.x + this.B))
      {
        this.y = 0.0F;
        this.w = 0.0F;
      }
    }
    label812: label818: for (float f1 = f6; ; f1 = 0.0F)
    {
      int i2;
      if ((this.E) && (!bool1))
        if (this.v < 0.0F)
        {
          float f4 = -this.v / this.B;
          this.v += paramFloat * (this.C + f4 * this.D);
          if (this.v > 0.0F)
            this.v = 0.0F;
          h();
          i2 = 1;
        }
      while (true)
      {
        label225: if ((i2 == 0) && (this.n) && (!bool1) && (this.y <= 0.0F))
        {
          float f2 = b(j()) - this.v;
          if (Math.abs(f2) > 1.0E-04F)
          {
            this.v = (f2 * 0.5F + this.v);
            h();
          }
        }
        if ((this.G) && (this.u))
          i();
        if (this.L != null)
        {
          if (this.H)
          {
            this.H = false;
            int i3 = j();
            Actor localActor2 = a(i3);
            HashSet localHashSet = jc.a();
            if (i3 != -1)
            {
              localHashSet.add(localActor2);
              int i4 = this.g;
              while (true)
                if (i4 > 0)
                {
                  Actor localActor5 = a(i3 - i4);
                  if (localActor5 != null)
                    localHashSet.add(localActor5);
                  Actor localActor6 = a(i3 + i4);
                  if (localActor6 != null)
                    localHashSet.add(localActor6);
                  i4--;
                  continue;
                  i1 = 0;
                  break;
                  label442: bool2 = false;
                  break label41;
                  if (this.v <= this.x)
                    break label812;
                  float f3 = -(this.x - this.v) / this.B;
                  this.v -= paramFloat * (this.C + f3 * this.D);
                  if (this.v < this.x)
                    this.v = this.x;
                  h();
                  i2 = 1;
                  break label225;
                }
            }
            Iterator localIterator2 = jc.a(this.N, localHashSet).iterator();
            while (localIterator2.hasNext())
            {
              Actor localActor4 = (Actor)localIterator2.next();
              this.L.a(localActor4, false);
              this.O.removeValue(localActor4, true);
            }
            Iterator localIterator3 = jc.a(localHashSet, this.N).iterator();
            while (localIterator3.hasNext())
            {
              Actor localActor3 = (Actor)localIterator3.next();
              this.L.a(localActor3, true);
              this.O.add(localActor3);
            }
            this.N = localHashSet;
            if (localActor2 != this.M)
            {
              this.M = localActor2;
              if ((this.L != null) && (this.M != null))
              {
                this.L.b(this.M);
                if (this.I)
                  Gdx.input.vibrate(30);
              }
            }
          }
          if (Math.abs(f1) < 480.0F)
          {
            Iterator localIterator1 = this.O.iterator();
            while (localIterator1.hasNext())
            {
              Actor localActor1 = (Actor)localIterator1.next();
              this.L.c(localActor1);
            }
            this.O.clear();
          }
          if ((this.J) && (!bool2))
            this.L.a();
          this.J = bool2;
        }
        aj.b();
        return;
        i2 = 0;
      }
    }
  }

  protected void b()
  {
    an.a(this.K);
    getChildren().clear();
    int i1 = j();
    float f1 = g() * (-1 + this.K.b()) - i1;
    for (int i2 = this.g; i2 > 0; i2--)
    {
      a(i1, i1 - i2, f1);
      a(i1, i1 + i2, f1);
    }
    a(i1, i1, f1);
    this.G = false;
  }

  public final void c()
  {
    this.I = false;
  }

  public final Actor d()
  {
    return a(j());
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    aj.a("WidgetCarousel.draw");
    applyTransform(paramSpriteBatch, computeTransform());
    Color localColor = getColor();
    if (this.f.background != null)
    {
      paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
      this.f.background.draw(paramSpriteBatch, 0.0F, 0.0F, getWidth(), getHeight());
    }
    if (this.G)
      b();
    int i1;
    if (this.r)
    {
      float f1 = this.e;
      this.c.set(f1, f1, getWidth() - 2.0F * f1, getHeight() - 2.0F * f1);
      ScissorStack.calculateScissors(getStage().getCamera(), paramSpriteBatch.getTransformMatrix(), this.c, this.d);
      if (ScissorStack.pushScissors(this.d))
      {
        drawChildren(paramSpriteBatch, paramFloat);
        ScissorStack.popScissors();
      }
      if ((this.l != null) && (this.m != null))
      {
        if (this.v >= 0.1F * this.s)
          break label397;
        i1 = 1;
        label201: if (i1 == 0)
          this.l.draw(paramSpriteBatch, paramFloat);
        if (this.v <= this.x - 0.1F * this.s)
          break label403;
      }
    }
    label397: label403: for (int i2 = 1; ; i2 = 0)
    {
      if (i2 == 0)
        this.m.draw(paramSpriteBatch, paramFloat);
      if (this.u)
      {
        paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
        this.f.hScroll.draw(paramSpriteBatch, this.a.x, this.a.y - (this.a.height - this.b.height) / 2.0F, this.a.width, this.a.height);
        this.f.hScrollKnob.draw(paramSpriteBatch, this.b.x, this.b.y, this.b.width, this.b.height);
      }
      resetTransform(paramSpriteBatch);
      aj.b();
      return;
      drawChildren(paramSpriteBatch, paramFloat);
      break;
      i1 = 0;
      break label201;
    }
  }

  public final void e()
  {
    Iterator localIterator = this.N.iterator();
    while (localIterator.hasNext())
    {
      Actor localActor = (Actor)localIterator.next();
      if ((this.L != null) && (localActor != null))
        this.L.a(localActor, false);
    }
    this.N = Collections.emptySet();
    invalidate();
    an.a(this.K);
    this.x = Math.max(1, this.s * this.K.b());
    this.v = Math.min(this.v, this.x);
    h();
  }

  public final Actor f()
  {
    return a(j());
  }

  public final float g()
  {
    return this.v / this.x;
  }

  public float getPrefHeight()
  {
    float f1 = this.t;
    if (this.f.background != null)
      f1 += this.f.background.getTotalHeight();
    return f1 + this.a.height;
  }

  public float getPrefWidth()
  {
    float f1 = Gdx.graphics.getWidth();
    Group localGroup = getParent();
    Table localTable;
    if ((localGroup instanceof Table))
    {
      localTable = (Table)localGroup;
      if (localTable.getPadLeft() == null)
        break label153;
    }
    label153: for (float f3 = localTable.getPadLeft().a(localTable.getCell(this)); ; f3 = 0.0F)
    {
      e locale = localTable.getPadRight();
      float f4 = 0.0F;
      if (locale != null)
        f4 = localTable.getPadRight().a(localTable.getCell(this));
      f1 = localGroup.getWidth() - f3 - f4;
      float f2 = this.s + 2.0F * this.s * this.h * this.g * this.i;
      if (this.f.background != null)
        f2 += this.f.background.getTotalWidth();
      return Math.min(f1, f2);
    }
  }

  public Actor hit(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 > 0.0F) && (paramFloat1 < getWidth()) && (paramFloat2 > 0.0F) && (paramFloat2 < getHeight()))
      return super.hit(paramFloat1, paramFloat2);
    return null;
  }

  public void layout()
  {
    NinePatch localNinePatch = this.f.background;
    float f1;
    float f2;
    label20: float f3;
    label27: float f4;
    label34: float f5;
    float f6;
    boolean bool;
    if (localNinePatch == null)
    {
      f1 = 0.0F;
      if (localNinePatch != null)
        break label387;
      f2 = 0.0F;
      if (localNinePatch != null)
        break label395;
      f3 = 0.0F;
      if (localNinePatch != null)
        break label404;
      f4 = 0.0F;
      f5 = getWidth() - f1 - f2;
      f6 = getHeight() - f3 - f4;
      if ((this.f.hScroll == null) || (this.f.hScrollKnob == null))
        break label413;
      bool = true;
      label79: this.u = bool;
      if (!this.u)
        break label425;
    }
    label387: label395: label404: label413: label425: for (float f7 = f6 - this.f.hScrollKnob.getTotalHeight(); ; f7 = f6)
    {
      Rectangle localRectangle = this.c;
      if (this.u);
      for (float f8 = this.f.hScrollKnob.getTotalHeight(); ; f8 = 0.0F)
      {
        localRectangle.set(f1, f8 + f4, f5, f7);
        if (this.u)
        {
          this.a.set(f1, f4, f5, this.f.hScrollKnob.getTotalHeight());
          if (this.f.hScrollBarHeightDp != null)
            this.a.height = l.a(this.f.hScrollBarHeightDp.intValue());
          this.b.width = this.f.hScrollKnob.getTotalWidth();
          if (this.f.hScrollKnobWidthDp != null)
            this.b.width = l.a(this.f.hScrollKnobWidthDp.intValue());
          this.b.height = this.f.hScrollKnob.getTotalHeight();
          if (this.f.hScrollKnobHeightDp != null)
            this.b.height = l.a(this.f.hScrollKnobHeightDp.intValue());
          i();
        }
        if ((this.l != null) && (this.m != null))
        {
          float f9 = 0.5F * getHeight() - 0.5F * this.l.getHeight();
          this.l.setPosition(0.0F, f9);
          this.m.setPosition(getWidth() - this.m.getWidth(), f9);
        }
        h();
        return;
        f1 = localNinePatch.getLeftWidth();
        break;
        f2 = localNinePatch.getRightWidth();
        break label20;
        f3 = localNinePatch.getTopHeight();
        break label27;
        f4 = localNinePatch.getTopHeight();
        break label34;
        bool = false;
        break label79;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.WidgetCarousel
 * JD-Core Version:    0.6.2
 */