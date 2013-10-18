package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener.ChangeEvent;
import com.badlogic.gdx.scenes.scene2d.utils.Cullable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Pools;

public class List extends Widget
  implements Cullable
{
  private Rectangle cullingArea;
  private float itemHeight;
  private String[] items;
  private float prefHeight;
  private float prefWidth;
  private int selectedIndex;
  private List.ListStyle style;
  private float textOffsetX;
  private float textOffsetY;

  public List(Object[] paramArrayOfObject, List.ListStyle paramListStyle)
  {
    setStyle(paramListStyle);
    setItems(paramArrayOfObject);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
    addListener(new List.1(this));
  }

  public List(Object[] paramArrayOfObject, Skin paramSkin)
  {
    this(paramArrayOfObject, (List.ListStyle)paramSkin.get(List.ListStyle.class));
  }

  public List(Object[] paramArrayOfObject, Skin paramSkin, String paramString)
  {
    this(paramArrayOfObject, (List.ListStyle)paramSkin.get(paramString, List.ListStyle.class));
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    BitmapFont localBitmapFont = this.style.font;
    Drawable localDrawable = this.style.selection;
    Color localColor1 = this.style.fontColorSelected;
    Color localColor2 = this.style.fontColorUnselected;
    Color localColor3 = getColor();
    paramSpriteBatch.setColor(localColor3.r, localColor3.g, localColor3.b, paramFloat * localColor3.a);
    float f1 = getX();
    float f2 = getY();
    localBitmapFont.setColor(localColor2.r, localColor2.g, localColor2.b, paramFloat * localColor2.a);
    float f3 = getHeight();
    int i = 0;
    float f4 = f3;
    if (i < this.items.length)
    {
      if ((this.cullingArea == null) || ((f4 - this.itemHeight <= this.cullingArea.y + this.cullingArea.height) && (f4 >= this.cullingArea.y)))
      {
        if (this.selectedIndex == i)
        {
          localDrawable.draw(paramSpriteBatch, f1, f2 + f4 - this.itemHeight, Math.max(this.prefWidth, getWidth()), this.itemHeight);
          localBitmapFont.setColor(localColor1.r, localColor1.g, localColor1.b, paramFloat * localColor1.a);
        }
        localBitmapFont.draw(paramSpriteBatch, this.items[i], f1 + this.textOffsetX, f2 + f4 - this.textOffsetY);
        if (this.selectedIndex == i)
          localBitmapFont.setColor(localColor2.r, localColor2.g, localColor2.b, paramFloat * localColor2.a);
      }
      while (f4 >= this.cullingArea.y)
      {
        float f5 = f4 - this.itemHeight;
        i++;
        f4 = f5;
        break;
      }
    }
  }

  public String[] getItems()
  {
    return this.items;
  }

  public float getPrefHeight()
  {
    return this.prefHeight;
  }

  public float getPrefWidth()
  {
    return this.prefWidth;
  }

  public int getSelectedIndex()
  {
    return this.selectedIndex;
  }

  public String getSelection()
  {
    if (this.items.length == 0)
      return null;
    return this.items[this.selectedIndex];
  }

  public List.ListStyle getStyle()
  {
    return this.style;
  }

  public void setCullingArea(Rectangle paramRectangle)
  {
    this.cullingArea = paramRectangle;
  }

  public void setItems(Object[] paramArrayOfObject)
  {
    int i = 0;
    if (paramArrayOfObject == null)
      throw new IllegalArgumentException("items cannot be null.");
    String[] arrayOfString;
    if (!(paramArrayOfObject instanceof String[]))
    {
      arrayOfString = new String[paramArrayOfObject.length];
      int j = paramArrayOfObject.length;
      for (int k = 0; k < j; k++)
        arrayOfString[k] = String.valueOf(paramArrayOfObject[k]);
    }
    for (this.items = arrayOfString; ; this.items = ((String[])paramArrayOfObject))
    {
      this.selectedIndex = 0;
      BitmapFont localBitmapFont = this.style.font;
      Drawable localDrawable = this.style.selection;
      this.itemHeight = (localBitmapFont.getCapHeight() - 2.0F * localBitmapFont.getDescent());
      this.itemHeight += localDrawable.getTopHeight() + localDrawable.getBottomHeight();
      this.prefWidth += localDrawable.getLeftWidth() + localDrawable.getRightWidth();
      this.textOffsetX = localDrawable.getLeftWidth();
      this.textOffsetY = (localDrawable.getTopHeight() - localBitmapFont.getDescent());
      this.prefWidth = 0.0F;
      while (i < this.items.length)
      {
        this.prefWidth = Math.max(localBitmapFont.getBounds(this.items[i]).width, this.prefWidth);
        i++;
      }
    }
    this.prefHeight = (this.items.length * this.itemHeight);
    invalidateHierarchy();
  }

  public void setSelectedIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.items.length))
      throw new GdxRuntimeException("index must be >= 0 and < " + this.items.length + ": " + paramInt);
    this.selectedIndex = paramInt;
  }

  public int setSelection(String paramString)
  {
    this.selectedIndex = -1;
    int i = 0;
    int j = this.items.length;
    while (true)
    {
      if (i < j)
      {
        if (this.items[i].equals(paramString))
          this.selectedIndex = i;
      }
      else
        return this.selectedIndex;
      i++;
    }
  }

  public void setStyle(List.ListStyle paramListStyle)
  {
    if (paramListStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    this.style = paramListStyle;
    if (this.items != null)
    {
      setItems(this.items);
      return;
    }
    invalidateHierarchy();
  }

  void touchDown(float paramFloat)
  {
    int i = this.selectedIndex;
    this.selectedIndex = ((int)((getHeight() - paramFloat) / this.itemHeight));
    this.selectedIndex = Math.max(0, this.selectedIndex);
    this.selectedIndex = Math.min(-1 + this.items.length, this.selectedIndex);
    ChangeListener.ChangeEvent localChangeEvent = (ChangeListener.ChangeEvent)Pools.obtain(ChangeListener.ChangeEvent.class);
    if (fire(localChangeEvent))
      this.selectedIndex = i;
    Pools.free(localChangeEvent);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.List
 * JD-Core Version:    0.6.2
 */