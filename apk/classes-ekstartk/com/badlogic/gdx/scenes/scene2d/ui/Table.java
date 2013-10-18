package com.badlogic.gdx.scenes.scene2d.ui;

import com.a.a.b;
import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.Array;
import java.util.List;

public class Table extends WidgetGroup
{
  private Drawable background;
  private boolean clip;
  private final TableLayout layout;
  private Skin skin;

  static
  {
    com.a.a.d.instance = new TableToolkit();
  }

  public Table()
  {
    this(null, null);
  }

  public Table(Skin paramSkin)
  {
    this(paramSkin, null);
  }

  public Table(Skin paramSkin, String paramString)
  {
    super(paramString);
    this.skin = paramSkin;
    this.layout = new TableLayout();
    this.layout.setTable(this);
    setTransform(false);
    setTouchable(Touchable.childrenOnly);
  }

  public Table(String paramString)
  {
    this(null, paramString);
  }

  private Rectangle calculateScissors(Matrix4 paramMatrix4)
  {
    Rectangle localRectangle = Rectangle.tmp;
    localRectangle.width = getWidth();
    localRectangle.height = getHeight();
    if (this.background == null)
    {
      localRectangle.x = 0.0F;
      localRectangle.y = 0.0F;
    }
    while (true)
    {
      ScissorStack.calculateScissors(getStage().getCamera(), paramMatrix4, localRectangle, Rectangle.tmp2);
      return Rectangle.tmp2;
      localRectangle.x = this.layout.getPadLeft().b(this);
      localRectangle.y = this.layout.getPadBottom().c(this);
      localRectangle.width -= localRectangle.x + this.layout.getPadRight().b(this);
      localRectangle.height -= localRectangle.y + this.layout.getPadTop().c(this);
    }
  }

  public static void drawDebug(Stage paramStage)
  {
    if (!TableToolkit.drawDebug)
      return;
    drawDebug(paramStage.getActors(), paramStage.getSpriteBatch());
  }

  private static void drawDebug(Array<Actor> paramArray, SpriteBatch paramSpriteBatch)
  {
    int i = paramArray.size;
    for (int j = 0; j < i; j++)
    {
      Actor localActor = (Actor)paramArray.get(j);
      if ((localActor instanceof Table))
        ((Table)localActor).layout.drawDebug(paramSpriteBatch);
      if ((localActor instanceof Group))
        drawDebug(((Group)localActor).getChildren(), paramSpriteBatch);
    }
  }

  public c add()
  {
    return add(null);
  }

  public c add(Actor paramActor)
  {
    TableLayout localTableLayout = this.layout;
    if (paramActor == null)
      paramActor = new Actor();
    return localTableLayout.add(paramActor);
  }

  public c add(String paramString)
  {
    if (this.skin == null)
      throw new IllegalStateException("Table must have a skin set to use this method.");
    return add(new Label(paramString, this.skin));
  }

  public c add(String paramString1, String paramString2)
  {
    if (this.skin == null)
      throw new IllegalStateException("Table must have a skin set to use this method.");
    return add(new Label(paramString1, (Label.LabelStyle)this.skin.get(paramString2, Label.LabelStyle.class)));
  }

  public Table align(int paramInt)
  {
    this.layout.align(paramInt);
    return this;
  }

  public Table bottom()
  {
    this.layout.bottom();
    return this;
  }

  public Table center()
  {
    this.layout.center();
    return this;
  }

  public void clear()
  {
    super.clear();
    this.layout.clear();
    invalidate();
  }

  public c columnDefaults(int paramInt)
  {
    return this.layout.columnDefaults(paramInt);
  }

  public Table debug()
  {
    this.layout.debug();
    return this;
  }

  public Table debug(b paramb)
  {
    this.layout.debug(paramb);
    return this;
  }

  public Table debugCell()
  {
    this.layout.debugCell();
    return this;
  }

  public Table debugTable()
  {
    this.layout.debugTable();
    return this;
  }

  public Table debugWidget()
  {
    this.layout.debugWidget();
    return this;
  }

  public c defaults()
  {
    return this.layout.defaults();
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    validate();
    drawBackground(paramSpriteBatch, paramFloat);
    if (isTransform())
    {
      applyTransform(paramSpriteBatch, computeTransform());
      if (this.clip)
        if (ScissorStack.pushScissors(calculateScissors(paramSpriteBatch.getTransformMatrix())))
        {
          drawChildren(paramSpriteBatch, paramFloat);
          ScissorStack.popScissors();
        }
      while (true)
      {
        resetTransform(paramSpriteBatch);
        return;
        drawChildren(paramSpriteBatch, paramFloat);
      }
    }
    super.draw(paramSpriteBatch, paramFloat);
  }

  protected void drawBackground(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    if (this.background != null)
    {
      Color localColor = getColor();
      paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
      this.background.draw(paramSpriteBatch, getX(), getY(), getWidth(), getHeight());
    }
  }

  public int getAlign()
  {
    return this.layout.getAlign();
  }

  public Drawable getBackground()
  {
    return this.background;
  }

  public c getCell(Actor paramActor)
  {
    return this.layout.getCell(paramActor);
  }

  public List<c> getCells()
  {
    return this.layout.getCells();
  }

  public b getDebug()
  {
    return this.layout.getDebug();
  }

  public float getMinHeight()
  {
    return this.layout.getMinHeight();
  }

  public float getMinWidth()
  {
    return this.layout.getMinWidth();
  }

  public e getPadBottom()
  {
    return this.layout.getPadBottom();
  }

  public e getPadLeft()
  {
    return this.layout.getPadLeft();
  }

  public e getPadRight()
  {
    return this.layout.getPadRight();
  }

  public e getPadTop()
  {
    return this.layout.getPadTop();
  }

  public float getPrefHeight()
  {
    if (this.background != null)
      return Math.max(this.layout.getPrefHeight(), this.background.getMinHeight());
    return this.layout.getPrefHeight();
  }

  public float getPrefWidth()
  {
    if (this.background != null)
      return Math.max(this.layout.getPrefWidth(), this.background.getMinWidth());
    return this.layout.getPrefWidth();
  }

  public int getRow(float paramFloat)
  {
    return this.layout.getRow(paramFloat);
  }

  public void invalidate()
  {
    this.layout.invalidate();
    super.invalidate();
  }

  public void layout()
  {
    this.layout.layout();
  }

  public Table left()
  {
    this.layout.left();
    return this;
  }

  public Table pad(float paramFloat)
  {
    this.layout.pad(paramFloat);
    return this;
  }

  public Table pad(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.layout.pad(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    return this;
  }

  public Table pad(e parame)
  {
    this.layout.pad(parame);
    return this;
  }

  public Table pad(e parame1, e parame2, e parame3, e parame4)
  {
    this.layout.pad(parame1, parame2, parame3, parame4);
    return this;
  }

  public Table padBottom(float paramFloat)
  {
    this.layout.padBottom(paramFloat);
    return this;
  }

  public Table padBottom(e parame)
  {
    this.layout.padBottom(parame);
    return this;
  }

  public Table padLeft(float paramFloat)
  {
    this.layout.padLeft(paramFloat);
    return this;
  }

  public Table padLeft(e parame)
  {
    this.layout.padLeft(parame);
    return this;
  }

  public Table padRight(float paramFloat)
  {
    this.layout.padRight(paramFloat);
    return this;
  }

  public Table padRight(e parame)
  {
    this.layout.padRight(parame);
    return this;
  }

  public Table padTop(float paramFloat)
  {
    this.layout.padTop(paramFloat);
    return this;
  }

  public Table padTop(e parame)
  {
    this.layout.padTop(parame);
    return this;
  }

  public void reset()
  {
    this.layout.reset();
  }

  public Table right()
  {
    this.layout.right();
    return this;
  }

  public c row()
  {
    return this.layout.row();
  }

  public void setBackground(Drawable paramDrawable)
  {
    if (this.background == paramDrawable)
      return;
    this.background = paramDrawable;
    if (paramDrawable == null)
    {
      pad(null);
      return;
    }
    float f1 = paramDrawable.getTopHeight();
    float f2 = paramDrawable.getLeftWidth();
    float f3 = paramDrawable.getBottomHeight();
    float f4 = paramDrawable.getRightWidth();
    if ((paramDrawable instanceof NinePatchDrawable))
    {
      Padding localPadding = ((NinePatchDrawable)paramDrawable).getPadding();
      if (localPadding != null)
      {
        f1 = localPadding.topPadding;
        f2 = localPadding.leftPadding;
        f3 = localPadding.bottomPadding;
        f4 = localPadding.rightPadding;
      }
    }
    pad(f1, f2, f3, f4);
    invalidate();
  }

  public void setClip(boolean paramBoolean)
  {
    this.clip = paramBoolean;
    setTransform(paramBoolean);
    invalidate();
  }

  public void setRound(boolean paramBoolean)
  {
    this.layout.round = paramBoolean;
  }

  public void setSkin(Skin paramSkin)
  {
    this.skin = paramSkin;
  }

  public c stack(Actor[] paramArrayOfActor)
  {
    Stack localStack = new Stack();
    if (paramArrayOfActor != null)
    {
      int i = 0;
      int j = paramArrayOfActor.length;
      while (i < j)
      {
        localStack.addActor(paramArrayOfActor[i]);
        i++;
      }
    }
    return add(localStack);
  }

  public Table top()
  {
    this.layout.top();
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Table
 * JD-Core Version:    0.6.2
 */