package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class ScrollLabel$ScrollLabelStyle extends Label.LabelStyle
{
  public int maxCharacters = 2147483647;
  public float scrollCps = 20.0F;
  public boolean startFull;

  public ScrollLabel$ScrollLabelStyle()
  {
  }

  public ScrollLabel$ScrollLabelStyle(BitmapFont paramBitmapFont, Color paramColor, float paramFloat, int paramInt, boolean paramBoolean)
  {
    this(paramBitmapFont, paramColor, null, paramFloat, paramInt, paramBoolean);
  }

  public ScrollLabel$ScrollLabelStyle(BitmapFont paramBitmapFont, Color paramColor, Drawable paramDrawable, float paramFloat, int paramInt)
  {
    super(paramBitmapFont, paramColor);
    this.background = paramDrawable;
    this.scrollCps = paramFloat;
    this.maxCharacters = paramInt;
  }

  public ScrollLabel$ScrollLabelStyle(BitmapFont paramBitmapFont, Color paramColor, Drawable paramDrawable, float paramFloat, int paramInt, boolean paramBoolean)
  {
    this(paramBitmapFont, paramColor, paramDrawable, paramFloat, paramInt);
    this.startFull = paramBoolean;
  }

  public ScrollLabel$ScrollLabelStyle(BitmapFont paramBitmapFont, Color paramColor, boolean paramBoolean)
  {
    this(paramBitmapFont, paramColor, null, 20.0F, 2147483647, paramBoolean);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ScrollLabel.ScrollLabelStyle
 * JD-Core Version:    0.6.2
 */