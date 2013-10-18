package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

class SelectBox$SelectList extends Actor
{
  float itemHeight;
  int listSelectedIndex = this.this$0.selectedIndex;
  Vector2 oldScreenCoords = new Vector2();
  InputListener stageListener = new SelectBox.SelectList.1(this);
  float textOffsetX;
  float textOffsetY;

  public SelectBox$SelectList(SelectBox paramSelectBox, float paramFloat1, float paramFloat2)
  {
    setBounds(paramFloat1, 0.0F, paramSelectBox.getWidth(), 100.0F);
    this.oldScreenCoords.set(paramSelectBox.screenCoords);
    layout();
    Stage localStage = paramSelectBox.getStage();
    float f = getHeight();
    if ((paramFloat2 - f < 0.0F) && (f + (paramFloat2 + paramSelectBox.getHeight()) < localStage.getCamera().viewportHeight))
      setY(paramFloat2 + paramSelectBox.getHeight());
    while (true)
    {
      localStage.addCaptureListener(this.stageListener);
      getColor().a = 0.0F;
      addAction(Actions.fadeIn(0.3F, Interpolation.fade));
      return;
      setY(paramFloat2 - f);
    }
  }

  private void layout()
  {
    BitmapFont localBitmapFont = this.this$0.style.font;
    Drawable localDrawable = this.this$0.style.listSelection;
    float f1 = 0.0F;
    for (int i = 0; i < this.this$0.items.length; i++)
      f1 = Math.max(localBitmapFont.getBounds(this.this$0.items[i]).width, f1);
    this.itemHeight = (localBitmapFont.getCapHeight() + 2.0F * -localBitmapFont.getDescent() + this.this$0.style.itemSpacing);
    this.itemHeight += localDrawable.getTopHeight() + localDrawable.getBottomHeight();
    this.itemHeight *= this.this$0.getParent().getScaleY();
    float f2 = f1 + (localDrawable.getLeftWidth() + localDrawable.getRightWidth() + 2.0F * this.this$0.style.itemSpacing);
    float f3 = this.this$0.items.length * this.itemHeight;
    this.textOffsetX = (localDrawable.getLeftWidth() + this.this$0.style.itemSpacing);
    this.textOffsetY = (localDrawable.getTopHeight() + -localBitmapFont.getDescent() + this.this$0.style.itemSpacing / 2.0F);
    setWidth(Math.max(f2, this.this$0.getWidth()) * this.this$0.getParent().getScaleX());
    setHeight(f3);
  }

  public void act(float paramFloat)
  {
    super.act(paramFloat);
    if ((this.this$0.screenCoords.x != this.oldScreenCoords.x) || (this.this$0.screenCoords.y != this.oldScreenCoords.y))
      this.this$0.hideList();
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    Drawable localDrawable1 = this.this$0.style.listBackground;
    Drawable localDrawable2 = this.this$0.style.listSelection;
    BitmapFont localBitmapFont = this.this$0.style.font;
    Color localColor1 = this.this$0.style.fontColor;
    float f1 = getX();
    float f2 = getY();
    float f3 = getWidth();
    float f4 = getHeight();
    float f5 = this.this$0.getParent().getScaleX();
    float f6 = this.this$0.getParent().getScaleY();
    Color localColor2 = getColor();
    paramSpriteBatch.setColor(localColor2.r, localColor2.g, localColor2.b, paramFloat * localColor2.a);
    localDrawable1.draw(paramSpriteBatch, f1, f2, f3, f4);
    int i = 0;
    float f8;
    for (float f7 = f4; i < this.this$0.items.length; f7 = f8)
    {
      if (this.listSelectedIndex == i)
        localDrawable2.draw(paramSpriteBatch, f1, f2 + f7 - this.itemHeight, f3, this.itemHeight);
      localBitmapFont.setColor(localColor1.r, localColor1.g, localColor1.b, paramFloat * (localColor2.a * localColor1.a));
      localBitmapFont.setScale(f5, f6);
      localBitmapFont.draw(paramSpriteBatch, this.this$0.items[i], f1 + this.textOffsetX, f2 + f7 - this.textOffsetY);
      localBitmapFont.setScale(1.0F, 1.0F);
      f8 = f7 - this.itemHeight;
      i++;
    }
  }

  public Actor hit(float paramFloat1, float paramFloat2)
  {
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.SelectBox.SelectList
 * JD-Core Version:    0.6.2
 */