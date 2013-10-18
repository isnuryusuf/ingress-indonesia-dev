package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.google.a.a.br;
import com.nianticproject.ingress.common.ui.g;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.x.i;

public final class ScrollLabel extends Label
{
  private static g a;
  private final ScrollLabel.ScrollLabelStyle b;
  private float c;
  private int d;
  private boolean e;
  private boolean f;
  private String g;
  private String h;
  private int i;
  private float j;
  private float k;
  private float l;

  public ScrollLabel(String paramString, Label.LabelStyle paramLabelStyle)
  {
    this(paramString, new ScrollLabel.ScrollLabelStyle(paramLabelStyle.font, paramLabelStyle.fontColor, paramLabelStyle.background, 20.0F, 2147483647));
  }

  public ScrollLabel(String paramString, Label.LabelStyle paramLabelStyle, byte paramByte)
  {
    this(paramString, new ScrollLabel.ScrollLabelStyle(paramLabelStyle.font, paramLabelStyle.fontColor, paramLabelStyle.background, 20.0F, 2147483647, true));
  }

  public ScrollLabel(String paramString, Label.LabelStyle paramLabelStyle, float paramFloat)
  {
    this(paramString, new ScrollLabel.ScrollLabelStyle(paramLabelStyle.font, paramLabelStyle.fontColor, paramLabelStyle.background, paramFloat, 2147483647));
  }

  public ScrollLabel(String paramString, ScrollLabel.ScrollLabelStyle paramScrollLabelStyle)
  {
    super(null, paramScrollLabelStyle);
    this.b = paramScrollLabelStyle;
    setText(br.a(paramString));
    addListener(new ax(this, paramScrollLabelStyle));
  }

  private static String a(String paramString, int paramInt)
  {
    if (paramString.length() <= paramInt)
      return null;
    for (int m = paramInt; ; m--)
      if (m >= 0)
      {
        if (Character.isLetterOrDigit(paramString.charAt(m)))
          paramInt = m;
      }
      else
        return paramString.substring(0, paramInt - 3);
  }

  public static void c()
  {
    i.a().a(new ay());
  }

  public static void d()
  {
    ac.a(a);
    a = null;
  }

  public final void a()
  {
    this.c = 0.0F;
    this.d = 0;
    this.e = true;
  }

  public final void act(float paramFloat)
  {
    int m;
    if (this.e)
    {
      this.f = true;
      this.c = (paramFloat + this.c);
      float f1 = this.b.maxCharacters / this.b.scrollCps;
      m = (int)((Math.min(this.c, f1) + 0.5F * Math.max(0.0F, this.c - f1)) * this.b.scrollCps);
      if ((!this.b.startFull) || (m >= this.i))
        break label113;
    }
    label113: for (this.d = this.h.length(); ; this.d = m)
    {
      super.act(paramFloat);
      return;
    }
  }

  public final boolean b()
  {
    return (this.f) && (this.e) && (getFontCache().getGlyphCount() < this.d);
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    float f1 = paramFloat * getColor().a;
    Color localColor1;
    BitmapFontCache localBitmapFontCache;
    int m;
    if (f1 > 0.0F)
    {
      localColor1 = getColor();
      if (this.b.background != null)
      {
        paramSpriteBatch.setColor(localColor1.r, localColor1.g, localColor1.b, paramFloat * localColor1.a);
        this.b.background.draw(paramSpriteBatch, getX(), getY(), getWidth(), getHeight());
      }
      localBitmapFontCache = getFontCache();
      localBitmapFontCache.setPosition(getX() + this.k, getY() + this.l);
      m = Math.min(this.d, localBitmapFontCache.getGlyphCount());
      int n = 20 * Math.max(0, m - this.b.maxCharacters);
      a.a(paramSpriteBatch);
      a.b(20 * localBitmapFontCache.getGlyphCount());
      a.a(n);
      if (this.b.fontColor != null)
        break label218;
    }
    label218: for (Color localColor2 = localColor1; ; localColor2 = Color.tmp.set(localColor1).mul(this.b.fontColor))
    {
      localBitmapFontCache.setColor(localColor2);
      localBitmapFontCache.draw(a, f1, m);
      a.a(null);
      return;
    }
  }

  public final float getPrefWidth()
  {
    return this.j;
  }

  public final void setText(CharSequence paramCharSequence)
  {
    String str2;
    int m;
    int n;
    String str3;
    if (!paramCharSequence.toString().equals(this.g))
    {
      this.e = false;
      this.c = 0.0F;
      this.g = br.a(String.valueOf(paramCharSequence));
      String str1 = this.g;
      str2 = a(str1, this.b.maxCharacters);
      if (str2 != null)
        break label147;
      m = str1.length();
      this.i = m;
      n = this.b.maxCharacters;
      if (paramCharSequence != null)
        break label156;
      str3 = "";
    }
    while (true)
    {
      this.h = str3;
      this.j = getFontCache().getFont().getMultiLineBounds(this.h.substring(0, Math.min(this.h.length(), this.b.maxCharacters))).width;
      super.setText(this.h);
      a();
      return;
      label147: m = str2.length();
      break;
      label156: str3 = paramCharSequence.toString();
      String str4 = a(str3, n);
      if (str4 != null)
      {
        String str5 = br.a(" ", n - (3 + str4.length()));
        str3 = str3 + "          " + str4 + "..." + str5;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ScrollLabel
 * JD-Core Version:    0.6.2
 */