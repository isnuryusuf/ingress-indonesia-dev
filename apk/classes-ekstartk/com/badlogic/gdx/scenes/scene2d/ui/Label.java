package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.HAlignment;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.StringBuilder;

public class Label extends Widget
{
  private final BitmapFont.TextBounds bounds = new BitmapFont.TextBounds();
  private BitmapFontCache cache;
  private int labelAlign = 8;
  private float lastPrefHeight;
  private BitmapFont.HAlignment lineAlign = BitmapFont.HAlignment.LEFT;
  private float prefHeight;
  private float prefWidth;
  private Label.LabelStyle style;
  private final StringBuilder text = new StringBuilder();
  private boolean wrap;

  public Label(CharSequence paramCharSequence, Label.LabelStyle paramLabelStyle)
  {
    if (paramCharSequence != null)
      this.text.append(paramCharSequence);
    setStyle(paramLabelStyle);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public Label(CharSequence paramCharSequence, Skin paramSkin)
  {
    this(paramCharSequence, (Label.LabelStyle)paramSkin.get(Label.LabelStyle.class));
  }

  public Label(CharSequence paramCharSequence, Skin paramSkin, String paramString)
  {
    this(paramCharSequence, (Label.LabelStyle)paramSkin.get(paramString, Label.LabelStyle.class));
  }

  public Label(CharSequence paramCharSequence, Skin paramSkin, String paramString, Color paramColor)
  {
    this(paramCharSequence, new Label.LabelStyle(paramSkin.getFont(paramString), paramColor));
  }

  public Label(CharSequence paramCharSequence, Skin paramSkin, String paramString1, String paramString2)
  {
    this(paramCharSequence, new Label.LabelStyle(paramSkin.getFont(paramString1), paramSkin.getColor(paramString2)));
  }

  private void computeBounds()
  {
    if (this.wrap)
    {
      this.bounds.set(this.cache.getFont().getWrappedBounds(this.text, getWidth()));
      return;
    }
    this.bounds.set(this.cache.getFont().getMultiLineBounds(this.text));
  }

  private boolean textEquals(CharSequence paramCharSequence)
  {
    int i = this.text.length;
    char[] arrayOfChar = this.text.chars;
    if (i != paramCharSequence.length())
      return false;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label58;
      if (arrayOfChar[j] != paramCharSequence.charAt(j))
        break;
    }
    label58: return true;
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    validate();
    Color localColor1 = getColor();
    if (this.style.background != null)
    {
      paramSpriteBatch.setColor(localColor1.r, localColor1.g, localColor1.b, paramFloat * localColor1.a);
      this.style.background.draw(paramSpriteBatch, getX(), getY(), getWidth(), getHeight());
    }
    BitmapFontCache localBitmapFontCache = this.cache;
    if (this.style.fontColor == null);
    for (Color localColor2 = localColor1; ; localColor2 = Color.tmp.set(localColor1).mul(this.style.fontColor))
    {
      localBitmapFontCache.setColor(localColor2);
      this.cache.setPosition(getX(), getY());
      this.cache.draw(paramSpriteBatch, paramFloat * localColor1.a);
      return;
    }
  }

  protected BitmapFontCache getFontCache()
  {
    validate();
    return this.cache;
  }

  public float getPrefHeight()
  {
    return this.bounds.height - 2.0F * this.style.font.getDescent();
  }

  public float getPrefWidth()
  {
    if (this.wrap)
      return 0.0F;
    return this.bounds.width;
  }

  public Label.LabelStyle getStyle()
  {
    return this.style;
  }

  public CharSequence getText()
  {
    return this.text;
  }

  public BitmapFont.TextBounds getTextBounds()
  {
    return this.bounds;
  }

  public void layout()
  {
    computeBounds();
    if (this.wrap)
    {
      float f7 = getPrefHeight();
      if (f7 != this.lastPrefHeight)
      {
        this.lastPrefHeight = f7;
        invalidateHierarchy();
      }
    }
    float f1 = getHeight();
    float f6;
    float f2;
    if ((0x2 & this.labelAlign) != 0)
      if (this.cache.getFont().isFlipped())
      {
        f6 = 0.0F;
        f2 = f6 + this.style.font.getDescent();
        label81: if (this.cache.getFont().isFlipped())
          break label309;
      }
    label282: label309: for (float f3 = f2 + this.bounds.height; ; f3 = f2)
    {
      float f4;
      if ((0x8 & this.labelAlign) != 0)
        f4 = 0.0F;
      while (true)
      {
        if (!this.wrap)
          break label282;
        this.cache.setWrappedText(this.text, f4, f3, this.bounds.width, this.lineAlign);
        return;
        f6 = f1 - this.bounds.height;
        break;
        if ((0x4 & this.labelAlign) != 0)
        {
          if (this.cache.getFont().isFlipped());
          for (float f5 = f1 - this.bounds.height; ; f5 = 0.0F)
          {
            f2 = f5 - this.style.font.getDescent();
            break;
          }
        }
        f2 = (f1 - this.bounds.height) / 2.0F;
        break label81;
        if ((0x10 & this.labelAlign) != 0)
          f4 = getWidth() - this.bounds.width;
        else
          f4 = (getWidth() - this.bounds.width) / 2.0F;
      }
      this.cache.setMultiLineText(this.text, f4, f3, this.bounds.width, this.lineAlign);
      return;
    }
  }

  public void setAlignment(int paramInt)
  {
    setAlignment(paramInt, paramInt);
  }

  public void setAlignment(int paramInt1, int paramInt2)
  {
    this.labelAlign = paramInt1;
    if ((paramInt2 & 0x8) != 0)
      this.lineAlign = BitmapFont.HAlignment.LEFT;
    while (true)
    {
      invalidate();
      return;
      if ((paramInt2 & 0x10) != 0)
        this.lineAlign = BitmapFont.HAlignment.RIGHT;
      else
        this.lineAlign = BitmapFont.HAlignment.CENTER;
    }
  }

  public void setStyle(Label.LabelStyle paramLabelStyle)
  {
    if (paramLabelStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    if (paramLabelStyle.font == null)
      throw new IllegalArgumentException("Missing LabelStyle font.");
    this.style = paramLabelStyle;
    if ((this.cache == null) || (paramLabelStyle.font != this.cache.getFont()))
    {
      this.cache = new BitmapFontCache(paramLabelStyle.font, paramLabelStyle.font.usesIntegerPositions());
      computeBounds();
      invalidateHierarchy();
    }
  }

  public void setText(CharSequence paramCharSequence)
  {
    if ((paramCharSequence instanceof StringBuilder))
    {
      if (this.text.equals(paramCharSequence))
        return;
      this.text.setLength(0);
      this.text.append((StringBuilder)paramCharSequence);
    }
    while (true)
    {
      computeBounds();
      invalidateHierarchy();
      return;
      if (paramCharSequence == null)
        paramCharSequence = "";
      if (textEquals(paramCharSequence))
        break;
      this.text.setLength(0);
      this.text.append(paramCharSequence);
    }
  }

  public void setWrap(boolean paramBoolean)
  {
    this.wrap = paramBoolean;
    computeBounds();
    invalidateHierarchy();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Label
 * JD-Core Version:    0.6.2
 */