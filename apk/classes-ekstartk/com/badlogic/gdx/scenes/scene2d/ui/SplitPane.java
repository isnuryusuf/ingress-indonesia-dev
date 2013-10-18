package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.GdxRuntimeException;

public class SplitPane extends WidgetGroup
{
  private Rectangle firstScissors = new Rectangle();
  private Actor firstWidget;
  private Rectangle firstWidgetBounds = new Rectangle();
  Rectangle handleBounds = new Rectangle();
  Vector2 handlePosition = new Vector2();
  Vector2 lastPoint = new Vector2();
  float maxAmount = 1.0F;
  float minAmount;
  private float oldSplitAmount;
  private Rectangle secondScissors = new Rectangle();
  private Actor secondWidget;
  private Rectangle secondWidgetBounds = new Rectangle();
  float splitAmount = 0.5F;
  SplitPane.SplitPaneStyle style;
  boolean vertical;

  public SplitPane(Actor paramActor1, Actor paramActor2, boolean paramBoolean, Skin paramSkin)
  {
  }

  public SplitPane(Actor paramActor1, Actor paramActor2, boolean paramBoolean, Skin paramSkin, String paramString)
  {
    this(paramActor1, paramActor2, paramBoolean, (SplitPane.SplitPaneStyle)paramSkin.get(paramString, SplitPane.SplitPaneStyle.class));
  }

  public SplitPane(Actor paramActor1, Actor paramActor2, boolean paramBoolean, SplitPane.SplitPaneStyle paramSplitPaneStyle)
  {
    this.firstWidget = paramActor1;
    this.secondWidget = paramActor2;
    this.vertical = paramBoolean;
    setStyle(paramSplitPaneStyle);
    setFirstWidget(paramActor1);
    setSecondWidget(paramActor2);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
    initialize();
  }

  private void calculateHorizBoundsAndPositions()
  {
    Drawable localDrawable = this.style.handle;
    float f1 = getHeight();
    float f2 = getWidth() - localDrawable.getMinWidth();
    float f3 = (int)(f2 * this.splitAmount);
    float f4 = f2 - f3;
    float f5 = localDrawable.getMinWidth();
    this.firstWidgetBounds.set(0.0F, 0.0F, f3, f1);
    this.secondWidgetBounds.set(f3 + f5, 0.0F, f4, f1);
    this.handleBounds.set(f3, 0.0F, f5, f1);
  }

  private void calculateVertBoundsAndPositions()
  {
    Drawable localDrawable = this.style.handle;
    float f1 = getWidth();
    float f2 = getHeight();
    float f3 = f2 - localDrawable.getMinHeight();
    float f4 = (int)(f3 * this.splitAmount);
    float f5 = f3 - f4;
    float f6 = localDrawable.getMinHeight();
    this.firstWidgetBounds.set(0.0F, f2 - f4, f1, f4);
    this.secondWidgetBounds.set(0.0F, 0.0F, f1, f5);
    this.handleBounds.set(0.0F, f5, f1, f6);
  }

  private void initialize()
  {
    addListener(new SplitPane.1(this));
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

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    validate();
    Color localColor = getColor();
    Drawable localDrawable = this.style.handle;
    applyTransform(paramSpriteBatch, computeTransform());
    Matrix4 localMatrix4 = paramSpriteBatch.getTransformMatrix();
    if (this.firstWidget != null)
    {
      ScissorStack.calculateScissors(getStage().getCamera(), localMatrix4, this.firstWidgetBounds, this.firstScissors);
      if (ScissorStack.pushScissors(this.firstScissors))
      {
        if (this.firstWidget.isVisible())
          this.firstWidget.draw(paramSpriteBatch, paramFloat * localColor.a);
        paramSpriteBatch.flush();
        ScissorStack.popScissors();
      }
    }
    if (this.secondWidget != null)
    {
      ScissorStack.calculateScissors(getStage().getCamera(), localMatrix4, this.secondWidgetBounds, this.secondScissors);
      if (ScissorStack.pushScissors(this.secondScissors))
      {
        if (this.secondWidget.isVisible())
          this.secondWidget.draw(paramSpriteBatch, paramFloat * localColor.a);
        paramSpriteBatch.flush();
        ScissorStack.popScissors();
      }
    }
    paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, localColor.a);
    localDrawable.draw(paramSpriteBatch, this.handleBounds.x, this.handleBounds.y, this.handleBounds.width, this.handleBounds.height);
    resetTransform(paramSpriteBatch);
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
    float f1;
    if ((this.firstWidget instanceof Layout))
    {
      f1 = ((Layout)this.firstWidget).getPrefHeight();
      if (!(this.secondWidget instanceof Layout))
        break label85;
    }
    label85: for (float f2 = ((Layout)this.secondWidget).getPrefHeight(); ; f2 = this.secondWidget.getHeight())
    {
      float f3 = f2 + f1;
      if (this.vertical)
        f3 += this.style.handle.getMinHeight();
      return f3;
      f1 = this.firstWidget.getHeight();
      break;
    }
  }

  public float getPrefWidth()
  {
    float f1;
    if ((this.firstWidget instanceof Layout))
    {
      f1 = ((Layout)this.firstWidget).getPrefWidth();
      if (!(this.secondWidget instanceof Layout))
        break label85;
    }
    label85: for (float f2 = ((Layout)this.secondWidget).getPrefWidth(); ; f2 = this.secondWidget.getWidth())
    {
      float f3 = f2 + f1;
      if (!this.vertical)
        f3 += this.style.handle.getMinWidth();
      return f3;
      f1 = this.firstWidget.getWidth();
      break;
    }
  }

  public float getSplit()
  {
    return this.splitAmount;
  }

  public SplitPane.SplitPaneStyle getStyle()
  {
    return this.style;
  }

  public void layout()
  {
    if (!this.vertical)
      calculateHorizBoundsAndPositions();
    while (true)
    {
      if (((this.firstWidget != null) && (this.firstWidget.getWidth() != this.firstWidgetBounds.width)) || (this.firstWidget.getHeight() != this.firstWidgetBounds.height))
      {
        this.firstWidget.setBounds(this.firstWidgetBounds.x, this.firstWidgetBounds.y, this.firstWidgetBounds.width, this.firstWidgetBounds.height);
        if ((this.firstWidget instanceof Layout))
        {
          Layout localLayout2 = (Layout)this.firstWidget;
          localLayout2.invalidate();
          localLayout2.validate();
        }
      }
      if (((this.secondWidget != null) && (this.secondWidget.getWidth() != this.secondWidgetBounds.width)) || (this.secondWidget.getHeight() != this.secondWidgetBounds.height))
      {
        this.secondWidget.setBounds(this.secondWidgetBounds.x, this.secondWidgetBounds.y, this.secondWidgetBounds.width, this.secondWidgetBounds.height);
        if ((this.secondWidget instanceof Layout))
        {
          Layout localLayout1 = (Layout)this.secondWidget;
          localLayout1.invalidate();
          localLayout1.validate();
        }
      }
      return;
      calculateVertBoundsAndPositions();
    }
  }

  public boolean removeActor(Actor paramActor)
  {
    throw new UnsupportedOperationException("Use ScrollPane#setWidget(null).");
  }

  public void setFirstWidget(Actor paramActor)
  {
    if (this.firstWidget != null)
      super.removeActor(this.firstWidget);
    this.firstWidget = paramActor;
    if (paramActor != null)
      super.addActor(paramActor);
    invalidate();
  }

  public void setMaxSplitAmount(float paramFloat)
  {
    if (paramFloat > 1.0F)
      throw new GdxRuntimeException("maxAmount has to be >= 0");
    if (paramFloat <= this.minAmount)
      throw new GdxRuntimeException("maxAmount has to be > minAmount");
    this.maxAmount = paramFloat;
  }

  public void setMinSplitAmount(float paramFloat)
  {
    if (paramFloat < 0.0F)
      throw new GdxRuntimeException("minAmount has to be >= 0");
    if (paramFloat >= this.maxAmount)
      throw new GdxRuntimeException("minAmount has to be < maxAmount");
    this.minAmount = paramFloat;
  }

  public void setSecondWidget(Actor paramActor)
  {
    if (this.secondWidget != null)
      super.removeActor(this.secondWidget);
    this.secondWidget = paramActor;
    if (paramActor != null)
      super.addActor(paramActor);
    invalidate();
  }

  public void setSplitAmount(float paramFloat)
  {
    this.splitAmount = Math.max(Math.min(this.maxAmount, paramFloat), this.minAmount);
    invalidate();
  }

  public void setStyle(SplitPane.SplitPaneStyle paramSplitPaneStyle)
  {
    this.style = paramSplitPaneStyle;
    invalidateHierarchy();
  }

  public void setVertical(boolean paramBoolean)
  {
    this.vertical = paramBoolean;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.SplitPane
 * JD-Core Version:    0.6.2
 */