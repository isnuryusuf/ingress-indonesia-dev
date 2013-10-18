package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.NumberUtils;

public class BitmapFontCache
{
  public static final char COLOR_CODES_END = '';
  public static final char COLOR_CODES_START = '';
  private static Color[] codeToColor = new Color[0];
  private static char colorCodesMaxChar = '\000';
  private float color = Color.WHITE.toFloatBits();
  private final BitmapFont font;
  private final Array<BitmapFontCache.ColorChange> glyphColorChanges = new Array(0);
  private int idx;
  private boolean integer = true;
  private final BitmapFont.TextBounds textBounds = new BitmapFont.TextBounds();
  private final Color tmpColor = new Color(Color.WHITE);
  private float[] vertices = new float[0];
  private float x;
  private float y;

  public BitmapFontCache(BitmapFont paramBitmapFont)
  {
    this(paramBitmapFont, paramBitmapFont.usesIntegerPositions());
  }

  public BitmapFontCache(BitmapFont paramBitmapFont, boolean paramBoolean)
  {
    this.font = paramBitmapFont;
    this.integer = paramBoolean;
  }

  private void addGlyph(BitmapFont.Glyph paramGlyph, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    float f1 = paramFloat1 + paramFloat3;
    float f2 = paramFloat2 + paramFloat4;
    float f3 = paramGlyph.u;
    float f4 = paramGlyph.u2;
    float f5 = paramGlyph.v;
    float f6 = paramGlyph.v2;
    float[] arrayOfFloat = this.vertices;
    if (this.integer)
    {
      paramFloat1 = (int)paramFloat1;
      paramFloat2 = (int)paramFloat2;
      f1 = (int)f1;
      f2 = (int)f2;
    }
    int i = this.idx;
    this.idx = (i + 1);
    arrayOfFloat[i] = paramFloat1;
    int j = this.idx;
    this.idx = (j + 1);
    arrayOfFloat[j] = paramFloat2;
    int k = this.idx;
    this.idx = (k + 1);
    arrayOfFloat[k] = paramFloat5;
    int m = this.idx;
    this.idx = (m + 1);
    arrayOfFloat[m] = f3;
    int n = this.idx;
    this.idx = (n + 1);
    arrayOfFloat[n] = f5;
    int i1 = this.idx;
    this.idx = (i1 + 1);
    arrayOfFloat[i1] = paramFloat1;
    int i2 = this.idx;
    this.idx = (i2 + 1);
    arrayOfFloat[i2] = f2;
    int i3 = this.idx;
    this.idx = (i3 + 1);
    arrayOfFloat[i3] = paramFloat5;
    int i4 = this.idx;
    this.idx = (i4 + 1);
    arrayOfFloat[i4] = f3;
    int i5 = this.idx;
    this.idx = (i5 + 1);
    arrayOfFloat[i5] = f6;
    int i6 = this.idx;
    this.idx = (i6 + 1);
    arrayOfFloat[i6] = f1;
    int i7 = this.idx;
    this.idx = (i7 + 1);
    arrayOfFloat[i7] = f2;
    int i8 = this.idx;
    this.idx = (i8 + 1);
    arrayOfFloat[i8] = paramFloat5;
    int i9 = this.idx;
    this.idx = (i9 + 1);
    arrayOfFloat[i9] = f4;
    int i10 = this.idx;
    this.idx = (i10 + 1);
    arrayOfFloat[i10] = f6;
    int i11 = this.idx;
    this.idx = (i11 + 1);
    arrayOfFloat[i11] = f1;
    int i12 = this.idx;
    this.idx = (i12 + 1);
    arrayOfFloat[i12] = paramFloat2;
    int i13 = this.idx;
    this.idx = (i13 + 1);
    arrayOfFloat[i13] = paramFloat5;
    int i14 = this.idx;
    this.idx = (i14 + 1);
    arrayOfFloat[i14] = f4;
    int i15 = this.idx;
    this.idx = (i15 + 1);
    arrayOfFloat[i15] = f5;
  }

  private float addToCache(CharSequence paramCharSequence, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    BitmapFont localBitmapFont = this.font;
    BitmapFont.Glyph localGlyph = null;
    float f1 = this.color;
    int i3;
    int i8;
    float f4;
    Object localObject3;
    int i5;
    if ((localBitmapFont.data.scaleX == 1.0F) && (localBitmapFont.data.scaleY == 1.0F))
    {
      i3 = paramInt1;
      if (i3 >= paramInt2)
        break label673;
      i8 = i3 + 1;
      int i9 = paramCharSequence.charAt(i3);
      if ((i9 >= 57344) && (i9 < colorCodesMaxChar))
        f1 = doColorChange(i9);
      localGlyph = localBitmapFont.data.getGlyph(i9);
      if (localGlyph != null)
      {
        addGlyph(localGlyph, paramFloat1 + localGlyph.xoffset, paramFloat2 + localGlyph.yoffset, localGlyph.width, localGlyph.height, f1);
        f4 = paramFloat1 + localGlyph.xadvance;
        localObject3 = localGlyph;
        i5 = i8;
      }
    }
    while (true)
    {
      label162: int i6;
      Object localObject4;
      float f8;
      if (i5 < paramInt2)
      {
        i6 = i5 + 1;
        int i7 = paramCharSequence.charAt(i5);
        if ((i7 >= 57344) && (i7 < colorCodesMaxChar))
          f1 = doColorChange(i7);
        localObject4 = localBitmapFont.data.getGlyph(i7);
        if (localObject4 == null)
          break label662;
        f8 = f4 + ((BitmapFont.Glyph)localObject3).getKerning(i7);
        addGlyph((BitmapFont.Glyph)localObject4, f8 + ((BitmapFont.Glyph)localObject4).xoffset, paramFloat2 + ((BitmapFont.Glyph)localObject4).yoffset, ((BitmapFont.Glyph)localObject4).width, ((BitmapFont.Glyph)localObject4).height, f1);
      }
      for (float f7 = f8 + ((BitmapFont.Glyph)localObject4).xadvance; ; f7 = f4)
      {
        f4 = f7;
        localObject3 = localObject4;
        i5 = i6;
        break label162;
        i3 = i8;
        break;
        float f2 = localBitmapFont.data.scaleX;
        float f3 = localBitmapFont.data.scaleY;
        int i = paramInt1;
        int i1;
        Object localObject1;
        int k;
        if (i < paramInt2)
        {
          i1 = i + 1;
          int i2 = paramCharSequence.charAt(i);
          if ((i2 >= 57344) && (i2 < colorCodesMaxChar))
            f1 = doColorChange(i2);
          localGlyph = localBitmapFont.data.getGlyph(i2);
          if (localGlyph != null)
          {
            addGlyph(localGlyph, paramFloat1 + f2 * localGlyph.xoffset, paramFloat2 + f3 * localGlyph.yoffset, f2 * localGlyph.width, f3 * localGlyph.height, f1);
            f4 = paramFloat1 + f2 * localGlyph.xadvance;
            localObject1 = localGlyph;
            k = i1;
          }
        }
        while (true)
        {
          label464: int m;
          Object localObject2;
          float f6;
          if (k < paramInt2)
          {
            m = k + 1;
            int n = paramCharSequence.charAt(k);
            if ((n >= 57344) && (n < colorCodesMaxChar))
              f1 = doColorChange(n);
            localObject2 = localBitmapFont.data.getGlyph(n);
            if (localObject2 == null)
              break label633;
            f6 = f4 + f2 * ((BitmapFont.Glyph)localObject1).getKerning(n);
            addGlyph((BitmapFont.Glyph)localObject2, f6 + f2 * ((BitmapFont.Glyph)localObject2).xoffset, paramFloat2 + f3 * ((BitmapFont.Glyph)localObject2).yoffset, f2 * ((BitmapFont.Glyph)localObject2).width, f3 * ((BitmapFont.Glyph)localObject2).height, f1);
          }
          for (float f5 = f6 + f2 * ((BitmapFont.Glyph)localObject2).xadvance; ; f5 = f4)
          {
            f4 = f5;
            localObject1 = localObject2;
            k = m;
            break label464;
            i = i1;
            break;
            return f4 - paramFloat1;
            label633: localObject2 = localObject1;
          }
          f4 = paramFloat1;
          int j = i;
          localObject1 = localGlyph;
          k = j;
        }
        label662: localObject4 = localObject3;
      }
      label673: f4 = paramFloat1;
      int i4 = i3;
      localObject3 = localGlyph;
      i5 = i4;
    }
  }

  private float doColorChange(char paramChar)
  {
    Color localColor = codeToColor[(paramChar - 57344)];
    if (this.glyphColorChanges.size == 0)
      this.glyphColorChanges.add(new BitmapFontCache.ColorChange(null));
    ((BitmapFontCache.ColorChange)this.glyphColorChanges.peek()).lastVertexIndex = this.idx;
    this.glyphColorChanges.add(new BitmapFontCache.ColorChange(localColor));
    if (localColor == null)
      return this.color;
    return getColor().mul(localColor).toFloatBits();
  }

  private void doSetColor()
  {
    float[] arrayOfFloat = this.vertices;
    int i = 2;
    if (this.glyphColorChanges.size > 0)
    {
      int j = i;
      for (int k = 0; k < this.glyphColorChanges.size; k++)
      {
        BitmapFontCache.ColorChange localColorChange = (BitmapFontCache.ColorChange)this.glyphColorChanges.get(k);
        if (localColorChange.color == null);
        for (float f = this.color; ; f = getColor().mul(localColorChange.color).toFloatBits())
        {
          int m = Math.min(this.idx, localColorChange.lastVertexIndex);
          while (j < m)
          {
            arrayOfFloat[j] = f;
            j += 5;
          }
        }
      }
    }
    while (i < this.idx)
    {
      arrayOfFloat[i] = this.color;
      i += 5;
    }
  }

  public static void enableMulticolor(Color[] paramArrayOfColor)
  {
    if (paramArrayOfColor.length > 6399)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramArrayOfColor.length);
      arrayOfObject[1] = Integer.valueOf(6399);
      throw new IllegalArgumentException(String.format("Too many color codes (%d, max %d)", arrayOfObject));
    }
    codeToColor = paramArrayOfColor;
    colorCodesMaxChar = (char)(57344 + paramArrayOfColor.length);
  }

  private void reset(int paramInt)
  {
    this.x = 0.0F;
    this.y = 0.0F;
    this.idx = 0;
    int i = paramInt * 20;
    if ((this.vertices == null) || (this.vertices.length < i))
      this.vertices = new float[i];
    this.glyphColorChanges.clear();
  }

  public void draw(SpriteBatch paramSpriteBatch)
  {
    paramSpriteBatch.draw(this.font.getRegion().getTexture(), this.vertices, 0, this.idx);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    draw(paramSpriteBatch, paramFloat, this.idx);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat, int paramInt)
  {
    if (paramFloat == 1.0F)
    {
      draw(paramSpriteBatch, paramInt);
      return;
    }
    Color localColor = getColor();
    float f = localColor.a;
    localColor.a = (paramFloat * localColor.a);
    setColor(localColor);
    draw(paramSpriteBatch, paramInt);
    localColor.a = f;
    setColor(localColor);
  }

  public void draw(SpriteBatch paramSpriteBatch, int paramInt)
  {
    paramSpriteBatch.draw(this.font.getRegion().getTexture(), this.vertices, 0, Math.max(0, Math.min(this.idx, paramInt * 20)));
  }

  public BitmapFont.TextBounds getBounds()
  {
    return this.textBounds;
  }

  public Color getColor()
  {
    int i = NumberUtils.floatToIntColor(this.color);
    Color localColor = this.tmpColor;
    localColor.r = ((i & 0xFF) / 255.0F);
    localColor.g = ((0xFF & i >>> 8) / 255.0F);
    localColor.b = ((0xFF & i >>> 16) / 255.0F);
    localColor.a = ((0xFF & i >>> 24) / 255.0F);
    return localColor;
  }

  public BitmapFont getFont()
  {
    return this.font;
  }

  public int getGlyphCount()
  {
    return this.idx / 20;
  }

  public float getX()
  {
    return this.x;
  }

  public float getY()
  {
    return this.y;
  }

  public void setColor(float paramFloat)
  {
    if (paramFloat == this.color)
      return;
    this.color = paramFloat;
    doSetColor();
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f = NumberUtils.intToFloatColor((int)(255.0F * paramFloat4) << 24 | (int)(255.0F * paramFloat3) << 16 | (int)(255.0F * paramFloat2) << 8 | (int)(255.0F * paramFloat1));
    if (f == this.color)
      return;
    this.color = f;
    doSetColor();
  }

  public void setColor(Color paramColor)
  {
    float f = paramColor.toFloatBits();
    if (f == this.color)
      return;
    this.color = f;
    doSetColor();
  }

  public BitmapFont.TextBounds setMultiLineText(CharSequence paramCharSequence, float paramFloat1, float paramFloat2)
  {
    return setMultiLineText(paramCharSequence, paramFloat1, paramFloat2, 0.0F, BitmapFont.HAlignment.LEFT);
  }

  public BitmapFont.TextBounds setMultiLineText(CharSequence paramCharSequence, float paramFloat1, float paramFloat2, float paramFloat3, BitmapFont.HAlignment paramHAlignment)
  {
    BitmapFont localBitmapFont = this.font;
    int i = paramCharSequence.length();
    reset(i);
    float f1 = paramFloat2 + localBitmapFont.data.ascent;
    float f2 = localBitmapFont.data.down;
    int j = 0;
    int k = 0;
    float f5;
    for (float f3 = 0.0F; j < i; f3 = f5)
    {
      int m = BitmapFont.indexOf(paramCharSequence, '\n', j);
      BitmapFont.HAlignment localHAlignment = BitmapFont.HAlignment.LEFT;
      float f4 = 0.0F;
      if (paramHAlignment != localHAlignment)
      {
        f4 = paramFloat3 - localBitmapFont.getBounds(paramCharSequence, j, m).width;
        if (paramHAlignment == BitmapFont.HAlignment.CENTER)
          f4 /= 2.0F;
      }
      f5 = Math.max(f3, addToCache(paramCharSequence, paramFloat1 + f4, f1, j, m));
      j = m + 1;
      f1 += f2;
      k++;
    }
    this.textBounds.width = f3;
    this.textBounds.height = (localBitmapFont.data.capHeight + (k - 1) * localBitmapFont.data.lineHeight);
    return this.textBounds;
  }

  public void setPosition(float paramFloat1, float paramFloat2)
  {
    translate(paramFloat1 - this.x, paramFloat2 - this.y);
  }

  public BitmapFont.TextBounds setText(CharSequence paramCharSequence, float paramFloat1, float paramFloat2)
  {
    return setText(paramCharSequence, paramFloat1, paramFloat2, 0, paramCharSequence.length());
  }

  public BitmapFont.TextBounds setText(CharSequence paramCharSequence, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    reset(paramInt2 - paramInt1);
    float f = paramFloat2 + this.font.data.ascent;
    this.textBounds.width = addToCache(paramCharSequence, paramFloat1, f, paramInt1, paramInt2);
    this.textBounds.height = this.font.data.capHeight;
    return this.textBounds;
  }

  public void setUseIntegerPositions(boolean paramBoolean)
  {
    this.integer = paramBoolean;
  }

  public BitmapFont.TextBounds setWrappedText(CharSequence paramCharSequence, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return setWrappedText(paramCharSequence, paramFloat1, paramFloat2, paramFloat3, BitmapFont.HAlignment.LEFT);
  }

  public BitmapFont.TextBounds setWrappedText(CharSequence paramCharSequence, float paramFloat1, float paramFloat2, float paramFloat3, BitmapFont.HAlignment paramHAlignment)
  {
    BitmapFont localBitmapFont = this.font;
    int i = paramCharSequence.length();
    reset(i);
    float f1 = paramFloat2 + localBitmapFont.data.ascent;
    float f2 = localBitmapFont.data.down;
    if (paramFloat3 <= 0.0F)
      paramFloat3 = 2.147484E+09F;
    float f3 = 0.0F;
    int j = 0;
    int k = 0;
    int n;
    int i1;
    int i3;
    int i2;
    if (j < i)
    {
      int m = BitmapFont.indexOf(paramCharSequence, '\n', j);
      while ((j < m) && (BitmapFont.isWhitespace(paramCharSequence.charAt(j))))
        j++;
      n = j + localBitmapFont.computeVisibleGlyphs(paramCharSequence, j, m, paramFloat3);
      i1 = n + 1;
      if (n >= m)
        break label377;
      for (i3 = n; (i3 > j) && (!BitmapFont.isWhitespace(paramCharSequence.charAt(i3))); i3--);
      if (i3 == j)
      {
        int i4 = i1 - 1;
        i2 = i4;
        n = i4;
      }
    }
    while (true)
    {
      float f5;
      if (n > j)
      {
        BitmapFont.HAlignment localHAlignment = BitmapFont.HAlignment.LEFT;
        f5 = 0.0F;
        if (paramHAlignment != localHAlignment)
        {
          f5 = paramFloat3 - localBitmapFont.getBounds(paramCharSequence, j, n).width;
          if (paramHAlignment == BitmapFont.HAlignment.CENTER)
            f5 /= 2.0F;
        }
      }
      for (float f4 = Math.max(f3, addToCache(paramCharSequence, paramFloat1 + f5, f1, j, n)); ; f4 = f3)
      {
        f1 += f2;
        k++;
        j = i2;
        f3 = f4;
        break;
        for (n = i3; (n > j) && (BitmapFont.isWhitespace(paramCharSequence.charAt(n - 1))); n--);
        this.textBounds.width = f3;
        this.textBounds.height = (localBitmapFont.data.capHeight + (k - 1) * localBitmapFont.data.lineHeight);
        return this.textBounds;
      }
      i2 = i3;
      continue;
      label377: i2 = i1;
    }
  }

  public void translate(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 == 0.0F) && (paramFloat2 == 0.0F));
    while (true)
    {
      return;
      if (this.integer)
      {
        paramFloat1 = (int)paramFloat1;
        paramFloat2 = (int)paramFloat2;
      }
      this.x = (paramFloat1 + this.x);
      this.y = (paramFloat2 + this.y);
      float[] arrayOfFloat = this.vertices;
      int i = 0;
      int j = this.idx;
      while (i < j)
      {
        arrayOfFloat[i] = (paramFloat1 + arrayOfFloat[i]);
        int k = i + 1;
        arrayOfFloat[k] = (paramFloat2 + arrayOfFloat[k]);
        i += 5;
      }
    }
  }

  public boolean usesIntegerPositions()
  {
    return this.integer;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.BitmapFontCache
 * JD-Core Version:    0.6.2
 */