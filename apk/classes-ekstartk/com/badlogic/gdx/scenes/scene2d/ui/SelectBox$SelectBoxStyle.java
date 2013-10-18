package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class SelectBox$SelectBoxStyle
{
  public Drawable background;
  public BitmapFont font;
  public Color fontColor = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  public float itemSpacing = 10.0F;
  public Drawable listBackground;
  public Drawable listSelection;

  public SelectBox$SelectBoxStyle()
  {
  }

  public SelectBox$SelectBoxStyle(BitmapFont paramBitmapFont, Color paramColor, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3)
  {
    this.background = paramDrawable1;
    this.listBackground = paramDrawable2;
    this.listSelection = paramDrawable3;
    this.font = paramBitmapFont;
    this.fontColor.set(paramColor);
  }

  public SelectBox$SelectBoxStyle(SelectBoxStyle paramSelectBoxStyle)
  {
    this.background = paramSelectBoxStyle.background;
    this.listBackground = paramSelectBoxStyle.listBackground;
    this.listSelection = paramSelectBoxStyle.listSelection;
    this.font = paramSelectBoxStyle.font;
    this.fontColor.set(paramSelectBoxStyle.fontColor);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.SelectBox.SelectBoxStyle
 * JD-Core Version:    0.6.2
 */