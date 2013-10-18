package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class SelectBox extends Widget
{
  private final BitmapFont.TextBounds bounds = new BitmapFont.TextBounds();
  String[] items;
  SelectBox.SelectList list;
  private float prefHeight;
  private float prefWidth;
  final Vector2 screenCoords = new Vector2();
  int selectedIndex = 0;
  SelectBox.SelectBoxStyle style;

  public SelectBox(Object[] paramArrayOfObject, SelectBox.SelectBoxStyle paramSelectBoxStyle)
  {
    setStyle(paramSelectBoxStyle);
    setItems(paramArrayOfObject);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
    addListener(new SelectBox.1(this));
  }

  public SelectBox(Object[] paramArrayOfObject, Skin paramSkin)
  {
    this(paramArrayOfObject, (SelectBox.SelectBoxStyle)paramSkin.get(SelectBox.SelectBoxStyle.class));
  }

  public SelectBox(Object[] paramArrayOfObject, Skin paramSkin, String paramString)
  {
    this(paramArrayOfObject, (SelectBox.SelectBoxStyle)paramSkin.get(paramString, SelectBox.SelectBoxStyle.class));
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    Drawable localDrawable = this.style.background;
    BitmapFont localBitmapFont = this.style.font;
    Color localColor1 = this.style.fontColor;
    Color localColor2 = getColor();
    float f1 = getX();
    float f2 = getY();
    float f3 = getWidth();
    float f4 = getHeight();
    paramSpriteBatch.setColor(localColor2.r, localColor2.g, localColor2.b, paramFloat * localColor2.a);
    localDrawable.draw(paramSpriteBatch, f1, f2, f3, f4);
    if (this.items.length > 0)
    {
      float f5 = f3 - localDrawable.getLeftWidth() - localDrawable.getRightWidth();
      int i = localBitmapFont.computeVisibleGlyphs(this.items[this.selectedIndex], 0, this.items[this.selectedIndex].length(), f5);
      this.bounds.set(localBitmapFont.getBounds(this.items[this.selectedIndex]));
      float f6 = (int)(f4 / 2.0F) + (int)(this.bounds.height / 2.0F);
      localBitmapFont.setColor(localColor1.r, localColor1.g, localColor1.b, paramFloat * localColor1.a);
      localBitmapFont.draw(paramSpriteBatch, this.items[this.selectedIndex], f1 + localDrawable.getLeftWidth(), f2 + f6, 0, i);
    }
    getStage().toScreenCoordinates(this.screenCoords.set(f1, f2), paramSpriteBatch.getTransformMatrix());
  }

  public float getPrefHeight()
  {
    return this.prefHeight;
  }

  public float getPrefWidth()
  {
    return this.prefWidth;
  }

  public String getSelection()
  {
    return this.items[this.selectedIndex];
  }

  public int getSelectionIndex()
  {
    return this.selectedIndex;
  }

  public SelectBox.SelectBoxStyle getStyle()
  {
    return this.style;
  }

  public void hideList()
  {
    if (this.list.getParent() == null)
      return;
    this.list.addAction(Actions.sequence(Actions.fadeOut(0.15F, Interpolation.fade), Actions.removeActor()));
  }

  public void setItems(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      throw new IllegalArgumentException("items cannot be null.");
    if (!(paramArrayOfObject instanceof String[]))
    {
      localObject = new String[paramArrayOfObject.length];
      int j = paramArrayOfObject.length;
      for (int k = 0; k < j; k++)
        localObject[k] = String.valueOf(paramArrayOfObject[k]);
    }
    Object localObject = paramArrayOfObject;
    this.items = ((String[])localObject);
    this.selectedIndex = 0;
    Drawable localDrawable = this.style.background;
    BitmapFont localBitmapFont = this.style.font;
    this.prefHeight = Math.max(localDrawable.getTopHeight() + localDrawable.getBottomHeight() + localBitmapFont.getCapHeight() - 2.0F * localBitmapFont.getDescent(), localDrawable.getMinHeight());
    float f = 0.0F;
    for (int i = 0; i < this.items.length; i++)
      f = Math.max(localBitmapFont.getBounds(this.items[i]).width, f);
    this.prefWidth = (f + (localDrawable.getLeftWidth() + localDrawable.getRightWidth()));
    invalidateHierarchy();
  }

  public void setSelection(int paramInt)
  {
    this.selectedIndex = paramInt;
  }

  public void setSelection(String paramString)
  {
    for (int i = 0; i < this.items.length; i++)
      if (this.items[i].equals(paramString))
        this.selectedIndex = i;
  }

  public void setStyle(SelectBox.SelectBoxStyle paramSelectBoxStyle)
  {
    if (paramSelectBoxStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    this.style = paramSelectBoxStyle;
    if (this.items != null)
    {
      setItems(this.items);
      return;
    }
    invalidateHierarchy();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.SelectBox
 * JD-Core Version:    0.6.2
 */