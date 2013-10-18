package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.input.GestureDetector;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener;
import com.badlogic.gdx.scenes.scene2d.utils.Cullable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;

public class ScrollPane extends WidgetGroup
{
  float amountX;
  float amountY;
  float areaHeight;
  float areaWidth;
  private boolean clamp = true;
  private boolean disableX;
  private boolean disableY;
  float fadeAlpha;
  float fadeAlphaSeconds = 1.0F;
  float fadeDelay;
  float fadeDelaySeconds = 1.0F;
  private boolean fadeScrollBars = true;
  private boolean flickScroll = true;
  float flingTime = 1.0F;
  float flingTimer;
  private boolean forceOverscrollX;
  private boolean forceOverscrollY;
  private ActorGestureListener gestureListener;
  final Rectangle hKnobBounds = new Rectangle();
  final Rectangle hScrollBounds = new Rectangle();
  final Vector2 lastPoint = new Vector2();
  float maxX;
  float maxY;
  private boolean overscroll = true;
  private float overscrollDistance = 50.0F;
  private float overscrollSpeedMax = 200.0F;
  private float overscrollSpeedMin = 30.0F;
  private final Rectangle scissorBounds = new Rectangle();
  boolean scrollX;
  boolean scrollY;
  private ScrollPane.ScrollPaneStyle style;
  boolean touchScrollH;
  boolean touchScrollV;
  final Rectangle vKnobBounds = new Rectangle();
  final Rectangle vScrollBounds = new Rectangle();
  float velocityX;
  float velocityY;
  private Actor widget;
  private final Rectangle widgetAreaBounds = new Rectangle();
  private final Rectangle widgetCullingArea = new Rectangle();

  public ScrollPane(Actor paramActor)
  {
    this(paramActor, new ScrollPane.ScrollPaneStyle());
  }

  public ScrollPane(Actor paramActor, ScrollPane.ScrollPaneStyle paramScrollPaneStyle)
  {
    if (paramScrollPaneStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    this.widget = paramActor;
    this.style = paramScrollPaneStyle;
    if (paramActor != null)
      setWidget(paramActor);
    setWidth(150.0F);
    setHeight(150.0F);
    addCaptureListener(new ScrollPane.1(this));
    this.gestureListener = new ScrollPane.2(this);
    addListener(this.gestureListener);
    addListener(new ScrollPane.3(this));
  }

  public ScrollPane(Actor paramActor, Skin paramSkin)
  {
    this(paramActor, (ScrollPane.ScrollPaneStyle)paramSkin.get(ScrollPane.ScrollPaneStyle.class));
  }

  public ScrollPane(Actor paramActor, Skin paramSkin, String paramString)
  {
    this(paramActor, (ScrollPane.ScrollPaneStyle)paramSkin.get(paramString, ScrollPane.ScrollPaneStyle.class));
  }

  public void act(float paramFloat)
  {
    super.act(paramFloat);
    boolean bool = this.gestureListener.getGestureDetector().isPanning();
    if ((this.fadeScrollBars) && (this.flickScroll) && (!bool) && (!this.touchScrollH) && (!this.touchScrollV))
    {
      this.fadeDelay -= paramFloat * this.fadeDelaySeconds;
      if (this.fadeDelay <= 0.0F)
        this.fadeAlpha = Math.max(0.0F, this.fadeAlpha - paramFloat * this.fadeAlphaSeconds);
    }
    if (this.flingTimer > 0.0F)
    {
      resetFade();
      float f = this.flingTimer / this.flingTime;
      this.amountX -= paramFloat * (f * this.velocityX);
      this.amountY -= paramFloat * (f * this.velocityY);
      clamp();
      if (this.amountX == -this.overscrollDistance)
        this.velocityX = 0.0F;
      if (this.amountX >= this.maxX + this.overscrollDistance)
        this.velocityX = 0.0F;
      if (this.amountY == -this.overscrollDistance)
        this.velocityY = 0.0F;
      if (this.amountY >= this.maxY + this.overscrollDistance)
        this.velocityY = 0.0F;
      this.flingTimer -= paramFloat;
      if (this.flingTimer <= 0.0F)
      {
        this.velocityX = 0.0F;
        this.velocityY = 0.0F;
      }
    }
    if ((this.overscroll) && (!bool))
    {
      if (this.amountX >= 0.0F)
        break label399;
      resetFade();
      this.amountX += paramFloat * (this.overscrollSpeedMin + (this.overscrollSpeedMax - this.overscrollSpeedMin) * -this.amountX / this.overscrollDistance);
      if (this.amountX > 0.0F)
        this.amountX = 0.0F;
    }
    label399: 
    do
    {
      do
        while (this.amountY < 0.0F)
        {
          resetFade();
          this.amountY += paramFloat * (this.overscrollSpeedMin + (this.overscrollSpeedMax - this.overscrollSpeedMin) * -this.amountY / this.overscrollDistance);
          if (this.amountY > 0.0F)
            this.amountY = 0.0F;
          return;
          if (this.amountX > this.maxX)
          {
            resetFade();
            this.amountX -= paramFloat * (this.overscrollSpeedMin + (this.overscrollSpeedMax - this.overscrollSpeedMin) * -(this.maxX - this.amountX) / this.overscrollDistance);
            if (this.amountX < this.maxX)
              this.amountX = this.maxX;
          }
        }
      while (this.amountY <= this.maxY);
      resetFade();
      this.amountY -= paramFloat * (this.overscrollSpeedMin + (this.overscrollSpeedMax - this.overscrollSpeedMin) * -(this.maxY - this.amountY) / this.overscrollDistance);
    }
    while (this.amountY >= this.maxY);
    this.amountY = this.maxY;
  }

  public void addActor(Actor paramActor)
  {
    throw new UnsupportedOperationException("Use ScrollPane#setWidget.");
  }

  public void addActorAt(int paramInt, Actor paramActor)
  {
    throw new UnsupportedOperationException("Use ScrollPane#setWidget.");
  }

  public void addActorBefore(Actor paramActor1, Actor paramActor2)
  {
    throw new UnsupportedOperationException("Use ScrollPane#setWidget.");
  }

  void cancelTouchFocusedChild(InputEvent paramInputEvent)
  {
    Stage localStage = getStage();
    if (localStage == null)
      return;
    localStage.cancelTouchFocus(this.gestureListener, this);
  }

  void clamp()
  {
    if (!this.clamp)
      return;
    if (this.overscroll)
    {
      this.amountX = MathUtils.clamp(this.amountX, -this.overscrollDistance, this.maxX + this.overscrollDistance);
      this.amountY = MathUtils.clamp(this.amountY, -this.overscrollDistance, this.maxY + this.overscrollDistance);
      return;
    }
    this.amountX = MathUtils.clamp(this.amountX, 0.0F, this.maxX);
    this.amountY = MathUtils.clamp(this.amountY, 0.0F, this.maxY);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    if (this.widget == null)
      return;
    validate();
    applyTransform(paramSpriteBatch, computeTransform());
    if (this.scrollX)
      this.hKnobBounds.x = (this.hScrollBounds.x + (int)((this.hScrollBounds.width - this.hKnobBounds.width) * getScrollPercentX()));
    if (this.scrollY)
      this.vKnobBounds.y = (this.vScrollBounds.y + (int)((this.vScrollBounds.height - this.vKnobBounds.height) * (1.0F - getScrollPercentY())));
    float f1 = this.widgetAreaBounds.y;
    if (!this.scrollY);
    for (float f2 = f1 - (int)this.maxY; ; f2 = f1 - (int)(this.maxY * (1.0F - this.amountY / this.maxY)))
    {
      float f3 = this.widgetAreaBounds.x;
      if (this.scrollX)
        f3 -= (int)(this.maxX * this.amountX / this.maxX);
      this.widget.setPosition(f3, f2);
      if ((this.widget instanceof Cullable))
      {
        this.widgetCullingArea.x = (-this.widget.getX() + this.widgetAreaBounds.x);
        this.widgetCullingArea.y = (-this.widget.getY() + this.widgetAreaBounds.y);
        this.widgetCullingArea.width = this.widgetAreaBounds.width;
        this.widgetCullingArea.height = this.widgetAreaBounds.height;
        ((Cullable)this.widget).setCullingArea(this.widgetCullingArea);
      }
      ScissorStack.calculateScissors(getStage().getCamera(), paramSpriteBatch.getTransformMatrix(), this.widgetAreaBounds, this.scissorBounds);
      Color localColor = getColor();
      paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
      if (this.style.background != null)
        this.style.background.draw(paramSpriteBatch, 0.0F, 0.0F, getWidth(), getHeight());
      paramSpriteBatch.flush();
      if (ScissorStack.pushScissors(this.scissorBounds))
      {
        drawChildren(paramSpriteBatch, paramFloat);
        ScissorStack.popScissors();
      }
      paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a * Interpolation.fade.apply(this.fadeAlpha / this.fadeAlphaSeconds));
      if (this.scrollX)
      {
        if (this.style.hScroll != null)
          this.style.hScroll.draw(paramSpriteBatch, this.hScrollBounds.x, this.hScrollBounds.y, this.hScrollBounds.width, this.hScrollBounds.height);
        if (this.style.hScrollKnob != null)
          this.style.hScrollKnob.draw(paramSpriteBatch, this.hKnobBounds.x, this.hKnobBounds.y, this.hKnobBounds.width, this.hKnobBounds.height);
      }
      if (this.scrollY)
      {
        if (this.style.vScroll != null)
          this.style.vScroll.draw(paramSpriteBatch, this.vScrollBounds.x, this.vScrollBounds.y, this.vScrollBounds.width, this.vScrollBounds.height);
        if (this.style.vScrollKnob != null)
          this.style.vScrollKnob.draw(paramSpriteBatch, this.vKnobBounds.x, this.vKnobBounds.y, this.vKnobBounds.width, this.vKnobBounds.height);
      }
      resetTransform(paramSpriteBatch);
      return;
    }
  }

  public float getMaxX()
  {
    return this.maxX;
  }

  public float getMaxY()
  {
    return this.maxY;
  }

  public float getMinHeight()
  {
    return 0.0F;
  }

  public float getMinWidth()
  {
    return 0.0F;
  }

  public float getPrefHeight()
  {
    if ((this.widget instanceof Layout))
      return ((Layout)this.widget).getPrefHeight();
    return 150.0F;
  }

  public float getPrefWidth()
  {
    if ((this.widget instanceof Layout))
      return ((Layout)this.widget).getPrefWidth();
    return 150.0F;
  }

  public float getScrollPercentX()
  {
    return MathUtils.clamp(this.amountX / this.maxX, 0.0F, 1.0F);
  }

  public float getScrollPercentY()
  {
    return MathUtils.clamp(this.amountY / this.maxY, 0.0F, 1.0F);
  }

  public float getScrollX()
  {
    return this.amountX;
  }

  public float getScrollY()
  {
    return this.amountY;
  }

  public ScrollPane.ScrollPaneStyle getStyle()
  {
    return this.style;
  }

  public float getVelocityX()
  {
    if (this.flingTimer <= 0.0F)
      return 0.0F;
    float f1 = this.flingTimer / this.flingTime;
    float f2 = f1 * (f1 * f1);
    return f2 * (f2 * (f2 * this.velocityX));
  }

  public float getVelocityY()
  {
    return this.velocityY;
  }

  public Actor hit(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 > 0.0F) && (paramFloat1 < getWidth()) && (paramFloat2 > 0.0F) && (paramFloat2 < getHeight()))
      return super.hit(paramFloat1, paramFloat2);
    return null;
  }

  public boolean isFlinging()
  {
    return this.flingTimer > 0.0F;
  }

  public boolean isPanning()
  {
    return this.gestureListener.getGestureDetector().isPanning();
  }

  public void layout()
  {
    Drawable localDrawable1 = this.style.background;
    Drawable localDrawable2 = this.style.hScrollKnob;
    Drawable localDrawable3 = this.style.vScrollKnob;
    float f4;
    float f3;
    float f2;
    float f1;
    if (localDrawable1 != null)
    {
      float f11 = localDrawable1.getLeftWidth();
      float f12 = localDrawable1.getRightWidth();
      float f13 = localDrawable1.getTopHeight();
      float f14 = localDrawable1.getBottomHeight();
      f4 = f11;
      f3 = f12;
      f2 = f13;
      f1 = f14;
    }
    while (true)
    {
      float f5 = getWidth();
      float f6 = getHeight();
      this.areaWidth = (f5 - f4 - f3);
      this.areaHeight = (f6 - f2 - f1);
      if (this.widget == null);
      label184: label217: label489: label1134: 
      while (true)
      {
        return;
        float f7;
        float f8;
        boolean bool1;
        boolean bool2;
        float f9;
        label500: float f10;
        if ((this.widget instanceof Layout))
        {
          Layout localLayout2 = (Layout)this.widget;
          f7 = localLayout2.getPrefWidth();
          f8 = localLayout2.getPrefHeight();
          if ((!this.forceOverscrollX) && ((f7 <= this.areaWidth) || (this.disableX)))
            break label1009;
          bool1 = true;
          this.scrollX = bool1;
          if ((!this.forceOverscrollY) && ((f8 <= this.areaHeight) || (this.disableY)))
            break label1015;
          bool2 = true;
          this.scrollY = bool2;
          boolean bool3 = this.flickScroll;
          int i = 0;
          if (bool3)
          {
            boolean bool4 = this.fadeScrollBars;
            i = 0;
            if (bool4)
              i = 1;
          }
          if (i == 0)
          {
            if (this.scrollX)
              this.areaHeight -= localDrawable2.getMinHeight();
            if (this.scrollY)
              this.areaWidth -= localDrawable3.getMinWidth();
            if ((!this.scrollX) && (this.scrollY) && (localDrawable3 != null) && (f7 > this.areaWidth) && (!this.disableX))
            {
              this.scrollX = true;
              this.areaHeight -= localDrawable2.getMinHeight();
            }
            if ((!this.scrollY) && (this.scrollX) && (localDrawable2 != null) && (f8 > this.areaHeight) && (!this.disableY))
            {
              this.scrollY = true;
              this.areaWidth -= localDrawable3.getMinWidth();
            }
          }
          this.widgetAreaBounds.set(f4, f1, this.areaWidth, this.areaHeight);
          if (i == 0)
            break label1021;
          if ((this.scrollX) && (localDrawable2 != null))
            this.areaHeight -= localDrawable2.getMinHeight();
          if ((this.scrollY) && (localDrawable3 != null))
            this.areaWidth -= localDrawable3.getMinWidth();
          if (!this.disableX)
            break label1058;
          f9 = f5;
          if (!this.disableY)
            break label1072;
          f10 = f6;
          label511: if ((this.widget.getWidth() != f9) || (this.widget.getHeight() != f10))
          {
            this.widget.setWidth(f9);
            this.widget.setHeight(f10);
          }
          this.maxX = (f9 - this.areaWidth);
          this.maxY = (f10 - this.areaHeight);
          if (i != 0)
          {
            if ((this.scrollX) && (localDrawable2 != null))
              this.maxY -= localDrawable2.getMinHeight();
            if ((this.scrollY) && (localDrawable3 != null))
              this.maxX -= localDrawable3.getMinWidth();
          }
          this.amountX = MathUtils.clamp(this.amountX, 0.0F, this.maxX);
          this.amountY = MathUtils.clamp(this.amountY, 0.0F, this.maxY);
          if (this.scrollX)
          {
            if (localDrawable2 == null)
              break label1086;
            this.hScrollBounds.set(f4, f1, this.areaWidth, localDrawable2.getMinHeight());
            this.hKnobBounds.width = Math.max(localDrawable2.getMinWidth(), (int)(this.hScrollBounds.width * this.areaWidth / this.widget.getWidth()));
            this.hKnobBounds.height = localDrawable2.getMinHeight();
            this.hKnobBounds.x = (this.hScrollBounds.x + (int)((this.hScrollBounds.width - this.hKnobBounds.width) * getScrollPercentX()));
            this.hKnobBounds.y = this.hScrollBounds.y;
          }
          if (this.scrollY)
          {
            if (localDrawable3 == null)
              break label1111;
            this.vScrollBounds.set(f5 - f3 - localDrawable3.getMinWidth(), f6 - f2 - this.areaHeight, localDrawable3.getMinWidth(), this.areaHeight);
            this.vKnobBounds.width = localDrawable3.getMinWidth();
            this.vKnobBounds.height = Math.max(localDrawable3.getMinHeight(), (int)(this.vScrollBounds.height * this.areaHeight / this.widget.getHeight()));
            this.vKnobBounds.x = this.vScrollBounds.x;
            this.vKnobBounds.y = (this.vScrollBounds.y + (int)((this.vScrollBounds.height - this.vKnobBounds.height) * (1.0F - getScrollPercentY())));
          }
        }
        while (true)
        {
          if (!(this.widget instanceof Layout))
            break label1134;
          Layout localLayout1 = (Layout)this.widget;
          localLayout1.invalidate();
          localLayout1.validate();
          return;
          f7 = this.widget.getWidth();
          f8 = this.widget.getHeight();
          break;
          label1009: bool1 = false;
          break label184;
          label1015: bool2 = false;
          break label217;
          label1021: if ((!this.scrollX) || (localDrawable2 == null))
            break label489;
          Rectangle localRectangle = this.widgetAreaBounds;
          localRectangle.y += localDrawable2.getMinHeight();
          break label489;
          f9 = Math.max(this.areaWidth, f7);
          break label500;
          f10 = Math.max(this.areaHeight, f8);
          break label511;
          this.hScrollBounds.set(0.0F, 0.0F, 0.0F, 0.0F);
          this.hKnobBounds.set(0.0F, 0.0F, 0.0F, 0.0F);
          break label800;
          this.vScrollBounds.set(0.0F, 0.0F, 0.0F, 0.0F);
          this.vKnobBounds.set(0.0F, 0.0F, 0.0F, 0.0F);
        }
      }
      label800: label1058: label1072: label1086: label1111: f1 = 0.0F;
      f2 = 0.0F;
      f3 = 0.0F;
      f4 = 0.0F;
    }
  }

  public boolean removeActor(Actor paramActor)
  {
    if (paramActor != this.widget)
      return false;
    setWidget(null);
    return true;
  }

  void resetFade()
  {
    this.fadeAlpha = this.fadeAlphaSeconds;
    this.fadeDelay = this.fadeDelaySeconds;
  }

  public void scrollTo(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f;
    if (paramFloat1 < this.amountX)
    {
      this.amountX = paramFloat1;
      this.amountX = MathUtils.clamp(this.amountX, 0.0F, this.maxX);
      f = getMaxY() + this.areaHeight - paramFloat2;
      if (f <= this.amountY + this.areaHeight)
        break label117;
      this.amountY = (f - this.areaHeight);
    }
    while (true)
    {
      this.amountY = MathUtils.clamp(this.amountY, 0.0F, this.maxY);
      return;
      if (paramFloat1 + paramFloat3 <= this.amountX + this.areaWidth)
        break;
      this.amountX = (paramFloat1 + paramFloat3 - this.areaWidth);
      break;
      label117: if (f - paramFloat4 < this.amountY)
        this.amountY = (f - paramFloat4);
    }
  }

  public void setClamp(boolean paramBoolean)
  {
    this.clamp = paramBoolean;
  }

  public void setFadeScrollBars(boolean paramBoolean)
  {
    if (this.fadeScrollBars == paramBoolean)
      return;
    this.fadeScrollBars = paramBoolean;
    if (!paramBoolean)
      this.fadeAlpha = 1.0F;
    invalidate();
  }

  public void setFlickScroll(boolean paramBoolean)
  {
    if (this.flickScroll == paramBoolean)
      return;
    this.flickScroll = paramBoolean;
    if (paramBoolean)
      addListener(this.gestureListener);
    while (true)
    {
      invalidate();
      return;
      removeListener(this.gestureListener);
      this.fadeAlpha = 1.0F;
    }
  }

  public void setFlingTime(float paramFloat)
  {
    this.flingTime = paramFloat;
  }

  public void setForceOverscroll(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.forceOverscrollX = paramBoolean1;
    this.forceOverscrollY = paramBoolean2;
  }

  public void setOverscroll(boolean paramBoolean)
  {
    this.overscroll = paramBoolean;
  }

  public void setScrollPercentX(float paramFloat)
  {
    this.amountX = (this.maxX * MathUtils.clamp(paramFloat, 0.0F, 1.0F));
  }

  public void setScrollPercentY(float paramFloat)
  {
    this.amountY = (this.maxY * MathUtils.clamp(paramFloat, 0.0F, 1.0F));
  }

  public void setScrollX(float paramFloat)
  {
    this.amountX = MathUtils.clamp(paramFloat, 0.0F, this.maxX);
  }

  public void setScrollY(float paramFloat)
  {
    this.amountY = MathUtils.clamp(paramFloat, 0.0F, this.maxY);
  }

  public void setScrollingDisabled(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.disableX = paramBoolean1;
    this.disableY = paramBoolean2;
  }

  public void setStyle(ScrollPane.ScrollPaneStyle paramScrollPaneStyle)
  {
    if (paramScrollPaneStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    this.style = paramScrollPaneStyle;
    invalidateHierarchy();
  }

  public void setVelocityX(float paramFloat)
  {
    this.velocityX = paramFloat;
  }

  public void setVelocityY(float paramFloat)
  {
    this.velocityY = paramFloat;
  }

  public void setWidget(Actor paramActor)
  {
    if (this.widget != null)
      super.removeActor(this.widget);
    this.widget = paramActor;
    if (paramActor != null)
      super.addActor(paramActor);
  }

  public void setupFadeScrollBars(float paramFloat1, float paramFloat2)
  {
    this.fadeAlphaSeconds = paramFloat1;
    this.fadeDelaySeconds = paramFloat2;
  }

  public void setupOverscroll(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.overscrollDistance = paramFloat1;
    this.overscrollSpeedMin = paramFloat2;
    this.overscrollSpeedMax = paramFloat3;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.ScrollPane
 * JD-Core Version:    0.6.2
 */