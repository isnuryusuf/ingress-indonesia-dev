package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.NumberUtils;

public class BitmapFont
  implements Disposable
{
  private static final int LOG2_PAGE_SIZE = 9;
  private static final int PAGES = 128;
  private static final int PAGE_SIZE = 512;
  public static final char[] capChars = { 77, 78, 66, 68, 67, 69, 70, 75, 65, 71, 72, 73, 74, 76, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };
  public static final char[] xChars = { 120, 101, 97, 111, 110, 115, 114, 99, 117, 109, 118, 119, 122 };
  private float color = Color.WHITE.toFloatBits();
  final BitmapFont.BitmapFontData data;
  private boolean flipped;
  private boolean integer = true;
  private boolean ownsTexture;
  TextureRegion region;
  private Color tempColor = new Color(1.0F, 1.0F, 1.0F, 1.0F);
  private final BitmapFont.TextBounds textBounds = new BitmapFont.TextBounds();

  public BitmapFont()
  {
    this(Gdx.files.classpath("com/badlogic/gdx/utils/arial-15.fnt"), Gdx.files.classpath("com/badlogic/gdx/utils/arial-15.png"), false, true);
  }

  public BitmapFont(FileHandle paramFileHandle1, FileHandle paramFileHandle2, boolean paramBoolean)
  {
    this(paramFileHandle1, paramFileHandle2, paramBoolean, true);
  }

  public BitmapFont(FileHandle paramFileHandle1, FileHandle paramFileHandle2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(new BitmapFont.BitmapFontData(paramFileHandle1, paramBoolean1), new TextureRegion(new Texture(paramFileHandle2, false)), paramBoolean2);
    this.ownsTexture = true;
  }

  public BitmapFont(FileHandle paramFileHandle, TextureRegion paramTextureRegion, boolean paramBoolean)
  {
    this(new BitmapFont.BitmapFontData(paramFileHandle, paramBoolean), paramTextureRegion, true);
  }

  public BitmapFont(FileHandle paramFileHandle, boolean paramBoolean)
  {
    this(new BitmapFont.BitmapFontData(paramFileHandle, paramBoolean), null, true);
  }

  public BitmapFont(BitmapFont.BitmapFontData paramBitmapFontData, TextureRegion paramTextureRegion, boolean paramBoolean)
  {
    TextureRegion localTextureRegion;
    if (paramTextureRegion == null)
    {
      localTextureRegion = new TextureRegion(new Texture(Gdx.files.internal(paramBitmapFontData.imagePath), false));
      this.region = localTextureRegion;
      this.flipped = paramBitmapFontData.flipped;
      this.integer = paramBoolean;
      this.data = paramBitmapFontData;
      load(paramBitmapFontData);
      if (paramTextureRegion != null)
        break label127;
    }
    label127: for (boolean bool = true; ; bool = false)
    {
      this.ownsTexture = bool;
      return;
      localTextureRegion = paramTextureRegion;
      break;
    }
  }

  public BitmapFont(boolean paramBoolean)
  {
    this(Gdx.files.classpath("com/badlogic/gdx/utils/arial-15.fnt"), Gdx.files.classpath("com/badlogic/gdx/utils/arial-15.png"), paramBoolean, true);
  }

  static int indexOf(CharSequence paramCharSequence, char paramChar, int paramInt)
  {
    int i = paramCharSequence.length();
    for (int j = paramInt; j < i; j++)
      if (paramCharSequence.charAt(j) == paramChar)
        return j;
    return i;
  }

  static boolean isWhitespace(char paramChar)
  {
    switch (paramChar)
    {
    default:
      return false;
    case '\t':
    case '\n':
    case '\r':
    case ' ':
    }
    return true;
  }

  private void load(BitmapFont.BitmapFontData paramBitmapFontData)
  {
    float f1 = 1.0F / this.region.getTexture().getWidth();
    float f2 = 1.0F / this.region.getTexture().getHeight();
    float f3 = this.region.u;
    float f4 = this.region.v;
    label195: for (BitmapFont.Glyph[] arrayOfGlyph1 : paramBitmapFontData.glyphs)
      if (arrayOfGlyph1 != null)
      {
        int k = arrayOfGlyph1.length;
        int m = 0;
        if (m < k)
        {
          BitmapFont.Glyph localGlyph = arrayOfGlyph1[m];
          if (localGlyph != null)
          {
            localGlyph.u = (f3 + f1 * localGlyph.srcX);
            localGlyph.u2 = (f3 + f1 * (localGlyph.srcX + localGlyph.width));
            if (!paramBitmapFontData.flipped)
              break label195;
            localGlyph.v = (f4 + f2 * localGlyph.srcY);
            localGlyph.v2 = (f4 + f2 * (localGlyph.srcY + localGlyph.height));
          }
          while (true)
          {
            m++;
            break;
            localGlyph.v2 = (f4 + f2 * localGlyph.srcY);
            localGlyph.v = (f4 + f2 * (localGlyph.srcY + localGlyph.height));
          }
        }
      }
  }

  public void computeGlyphAdvancesAndPositions(CharSequence paramCharSequence, FloatArray paramFloatArray1, FloatArray paramFloatArray2)
  {
    paramFloatArray1.clear();
    paramFloatArray2.clear();
    int i = paramCharSequence.length();
    Object localObject1 = null;
    float f5;
    int k;
    Object localObject3;
    if (this.data.scaleX == 1.0F)
    {
      f5 = 0.0F;
      k = 0;
      if (k < i)
      {
        char c2 = paramCharSequence.charAt(k);
        localObject3 = this.data.getGlyph(c2);
        if (localObject3 == null)
          break label277;
        if (localObject1 != null)
          f5 += localObject1.getKerning(c2);
        paramFloatArray1.add(((BitmapFont.Glyph)localObject3).xadvance);
        paramFloatArray2.add(f5);
      }
    }
    for (float f6 = f5 + ((BitmapFont.Glyph)localObject3).xadvance; ; f6 = f5)
    {
      k++;
      f5 = f6;
      localObject1 = localObject3;
      break;
      paramFloatArray1.add(0.0F);
      paramFloatArray2.add(f5);
      return;
      float f1 = this.data.scaleX;
      float f2 = 0.0F;
      int j = 0;
      Object localObject2;
      float f4;
      if (j < i)
      {
        char c1 = paramCharSequence.charAt(j);
        localObject2 = this.data.getGlyph(c1);
        if (localObject2 == null)
          break label266;
        if (localObject1 != null)
          f2 += f1 * localObject1.getKerning(c1);
        f4 = f1 * ((BitmapFont.Glyph)localObject2).xadvance;
        paramFloatArray1.add(f4);
        paramFloatArray2.add(f2);
      }
      for (float f3 = f4 + f2; ; f3 = f2)
      {
        j++;
        f2 = f3;
        localObject1 = localObject2;
        break;
        paramFloatArray1.add(0.0F);
        paramFloatArray2.add(f2);
        return;
        label266: localObject2 = localObject1;
      }
      label277: localObject3 = localObject1;
    }
  }

  public int computeVisibleGlyphs(CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = 0.0F;
    Object localObject1 = null;
    int i;
    Object localObject3;
    if (this.data.scaleX == 1.0F)
    {
      i = paramInt1;
      if (i >= paramInt2)
        break label225;
      char c2 = paramCharSequence.charAt(i);
      localObject3 = this.data.getGlyph(c2);
      if (localObject3 == null)
        break label241;
      if (localObject1 != null)
        f1 += localObject1.getKerning(c2);
      if (f1 + ((BitmapFont.Glyph)localObject3).xadvance - paramFloat > 0.001F)
        break label225;
    }
    for (float f5 = f1 + ((BitmapFont.Glyph)localObject3).xadvance; ; f5 = f1)
    {
      i++;
      f1 = f5;
      localObject1 = localObject3;
      break;
      float f2 = this.data.scaleX;
      i = paramInt1;
      Object localObject2;
      float f4;
      if (i < paramInt2)
      {
        char c1 = paramCharSequence.charAt(i);
        localObject2 = this.data.getGlyph(c1);
        if (localObject2 == null)
          break label230;
        if (localObject1 != null)
          f1 += f2 * localObject1.getKerning(c1);
        f4 = f2 * ((BitmapFont.Glyph)localObject2).xadvance;
        if (f1 + f4 - paramFloat > 0.001F);
      }
      for (float f3 = f4 + f1; ; f3 = f1)
      {
        i++;
        f1 = f3;
        localObject1 = localObject2;
        break;
        label225: return i - paramInt1;
        label230: localObject2 = localObject1;
      }
      label241: localObject3 = localObject1;
    }
  }

  public boolean containsCharacter(char paramChar)
  {
    return this.data.getGlyph(paramChar) != null;
  }

  public void dispose()
  {
    if (this.ownsTexture)
      this.region.getTexture().dispose();
  }

  public BitmapFont.TextBounds draw(SpriteBatch paramSpriteBatch, CharSequence paramCharSequence, float paramFloat1, float paramFloat2)
  {
    return draw(paramSpriteBatch, paramCharSequence, paramFloat1, paramFloat2, 0, paramCharSequence.length());
  }

  public BitmapFont.TextBounds draw(SpriteBatch paramSpriteBatch, CharSequence paramCharSequence, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    float f1 = paramSpriteBatch.color;
    paramSpriteBatch.setColor(this.color);
    Texture localTexture = this.region.getTexture();
    float f2 = paramFloat2 + this.data.ascent;
    Object localObject1 = null;
    float f8;
    float f7;
    int n;
    if ((this.data.scaleX == 1.0F) && (this.data.scaleY == 1.0F))
    {
      if (!this.integer)
        break label921;
      float f11 = (int)f2;
      f8 = (int)paramFloat1;
      f7 = f11;
      n = paramInt1;
    }
    while (true)
    {
      int i3;
      BitmapFont.Glyph localGlyph4;
      float f5;
      Object localObject3;
      int i1;
      if (n < paramInt2)
      {
        BitmapFont.BitmapFontData localBitmapFontData2 = this.data;
        i3 = n + 1;
        localGlyph4 = localBitmapFontData2.getGlyph(paramCharSequence.charAt(n));
        if (localGlyph4 != null)
        {
          paramSpriteBatch.draw(localTexture, f8 + localGlyph4.xoffset, f7 + localGlyph4.yoffset, localGlyph4.width, localGlyph4.height, localGlyph4.u, localGlyph4.v, localGlyph4.u2, localGlyph4.v2);
          f5 = f8 + localGlyph4.xadvance;
          localObject3 = localGlyph4;
          i1 = i3;
        }
      }
      while (true)
      {
        int i2;
        BitmapFont.Glyph localGlyph3;
        float f9;
        if (i1 < paramInt2)
        {
          i2 = i1 + 1;
          char c2 = paramCharSequence.charAt(i1);
          localGlyph3 = this.data.getGlyph(c2);
          if (localGlyph3 == null)
            break label888;
          f9 = f5 + ((BitmapFont.Glyph)localObject3).getKerning(c2);
          if (!this.integer)
            break label881;
        }
        label881: for (float f10 = (int)f9; ; f10 = f9)
        {
          paramSpriteBatch.draw(localTexture, f10 + localGlyph3.xoffset, f7 + localGlyph3.yoffset, localGlyph3.width, localGlyph3.height, localGlyph3.u, localGlyph3.v, localGlyph3.u2, localGlyph3.v2);
          f5 = f10 + localGlyph3.xadvance;
          localObject3 = localGlyph3;
          i1 = i2;
          break;
          float f3 = this.data.scaleX;
          float f4 = this.data.scaleY;
          int i = paramInt1;
          int m;
          BitmapFont.Glyph localGlyph2;
          Object localObject2;
          int j;
          if (i < paramInt2)
          {
            BitmapFont.BitmapFontData localBitmapFontData1 = this.data;
            m = i + 1;
            localGlyph2 = localBitmapFontData1.getGlyph(paramCharSequence.charAt(i));
            if (localGlyph2 != null)
              if (!this.integer)
              {
                paramSpriteBatch.draw(localTexture, paramFloat1 + f3 * localGlyph2.xoffset, f2 + f4 * localGlyph2.yoffset, f3 * localGlyph2.width, f4 * localGlyph2.height, localGlyph2.u, localGlyph2.v, localGlyph2.u2, localGlyph2.v2);
                f5 = paramFloat1 + f3 * localGlyph2.xadvance;
                localObject2 = localGlyph2;
                j = m;
              }
          }
          while (true)
          {
            label501: int k;
            if (j < paramInt2)
            {
              k = j + 1;
              char c1 = paramCharSequence.charAt(j);
              BitmapFont.Glyph localGlyph1 = this.data.getGlyph(c1);
              if (localGlyph1 != null)
              {
                float f6 = f5 + f3 * ((BitmapFont.Glyph)localObject2).getKerning(c1);
                if (!this.integer)
                  paramSpriteBatch.draw(localTexture, f6 + f3 * localGlyph1.xoffset, f2 + f4 * localGlyph1.yoffset, f3 * localGlyph1.width, f4 * localGlyph1.height, localGlyph1.u, localGlyph1.v, localGlyph1.u2, localGlyph1.v2);
                while (true)
                {
                  f5 = f6 + f3 * localGlyph1.xadvance;
                  localObject2 = localGlyph1;
                  j = k;
                  break label501;
                  paramSpriteBatch.draw(localTexture, (int)(paramFloat1 + f3 * localGlyph2.xoffset), (int)(f2 + f4 * localGlyph2.yoffset), (int)(f3 * localGlyph2.width), (int)(f4 * localGlyph2.height), localGlyph2.u, localGlyph2.v, localGlyph2.u2, localGlyph2.v2);
                  break;
                  paramSpriteBatch.draw(localTexture, (int)(f6 + f3 * localGlyph1.xoffset), (int)(f2 + f4 * localGlyph1.yoffset), (int)(f3 * localGlyph1.width), (int)(f4 * localGlyph1.height), localGlyph1.u, localGlyph1.v, localGlyph1.u2, localGlyph1.v2);
                }
              }
            }
            else
            {
              paramSpriteBatch.setColor(f1);
              this.textBounds.width = (f5 - paramFloat1);
              this.textBounds.height = this.data.capHeight;
              return this.textBounds;
            }
            j = k;
            continue;
            localObject1 = localGlyph2;
            i = m;
            break;
            j = i;
            localObject2 = localObject1;
            f5 = paramFloat1;
          }
        }
        label888: i1 = i2;
        continue;
        localObject1 = localGlyph4;
        n = i3;
        break;
        i1 = n;
        localObject3 = localObject1;
        f5 = f8;
      }
      label921: n = paramInt1;
      f7 = f2;
      f8 = paramFloat1;
      localObject1 = null;
    }
  }

  public BitmapFont.TextBounds drawMultiLine(SpriteBatch paramSpriteBatch, CharSequence paramCharSequence, float paramFloat1, float paramFloat2)
  {
    return drawMultiLine(paramSpriteBatch, paramCharSequence, paramFloat1, paramFloat2, 0.0F, BitmapFont.HAlignment.LEFT);
  }

  public BitmapFont.TextBounds drawMultiLine(SpriteBatch paramSpriteBatch, CharSequence paramCharSequence, float paramFloat1, float paramFloat2, float paramFloat3, BitmapFont.HAlignment paramHAlignment)
  {
    float f1 = paramSpriteBatch.color;
    float f2 = this.data.down;
    int i = 0;
    int j = paramCharSequence.length();
    float f3 = 0.0F;
    int k = 0;
    float f4 = paramFloat2;
    while (i < j)
    {
      int m = indexOf(paramCharSequence, '\n', i);
      BitmapFont.HAlignment localHAlignment = BitmapFont.HAlignment.LEFT;
      float f5 = 0.0F;
      if (paramHAlignment != localHAlignment)
      {
        f5 = paramFloat3 - getBounds(paramCharSequence, i, m).width;
        if (paramHAlignment == BitmapFont.HAlignment.CENTER)
          f5 /= 2.0F;
      }
      float f6 = Math.max(f3, draw(paramSpriteBatch, paramCharSequence, paramFloat1 + f5, f4, i, m).width);
      i = m + 1;
      f4 += f2;
      int n = k + 1;
      f3 = f6;
      k = n;
    }
    paramSpriteBatch.setColor(f1);
    this.textBounds.width = f3;
    this.textBounds.height = (this.data.capHeight + (k - 1) * this.data.lineHeight);
    return this.textBounds;
  }

  public BitmapFont.TextBounds drawWrapped(SpriteBatch paramSpriteBatch, CharSequence paramCharSequence, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return drawWrapped(paramSpriteBatch, paramCharSequence, paramFloat1, paramFloat2, paramFloat3, BitmapFont.HAlignment.LEFT);
  }

  public BitmapFont.TextBounds drawWrapped(SpriteBatch paramSpriteBatch, CharSequence paramCharSequence, float paramFloat1, float paramFloat2, float paramFloat3, BitmapFont.HAlignment paramHAlignment)
  {
    if (paramFloat3 <= 0.0F)
      paramFloat3 = 2.147484E+09F;
    float f1 = paramSpriteBatch.color;
    float f2 = this.data.down;
    int i = 0;
    int j = paramCharSequence.length();
    float f3 = 0.0F;
    int k = 0;
    float f4 = paramFloat2;
    int n;
    int i4;
    int i2;
    if (i < j)
    {
      int m = indexOf(paramCharSequence, '\n', i);
      while ((i < m) && (isWhitespace(paramCharSequence.charAt(i))))
        i++;
      n = i + computeVisibleGlyphs(paramCharSequence, i, m, paramFloat3);
      int i1 = n + 1;
      if (n < m)
      {
        for (i4 = n; (i4 > i) && (!isWhitespace(paramCharSequence.charAt(i4))); i4--);
        if (i4 == i)
        {
          int i5 = i1 - 1;
          i2 = i5;
          n = i5;
        }
      }
    }
    while (true)
    {
      label173: float f6;
      if (n > i)
      {
        BitmapFont.HAlignment localHAlignment = BitmapFont.HAlignment.LEFT;
        f6 = 0.0F;
        if (paramHAlignment != localHAlignment)
        {
          f6 = paramFloat3 - getBounds(paramCharSequence, i, n).width;
          if (paramHAlignment == BitmapFont.HAlignment.CENTER)
            f6 /= 2.0F;
        }
      }
      for (float f5 = Math.max(f3, draw(paramSpriteBatch, paramCharSequence, paramFloat1 + f6, f4, i, n).width); ; f5 = f3)
      {
        f4 += f2;
        int i3 = k + 1;
        f3 = f5;
        k = i3;
        i = i2;
        break;
        for (n = i4; (n > i) && (isWhitespace(paramCharSequence.charAt(n - 1))); n--);
        i2 = n + 1;
        break label173;
        paramSpriteBatch.setColor(f1);
        this.textBounds.width = f3;
        this.textBounds.height = (this.data.capHeight + (k - 1) * this.data.lineHeight);
        return this.textBounds;
      }
      i2 = i4;
    }
  }

  public float getAscent()
  {
    return this.data.ascent;
  }

  public BitmapFont.TextBounds getBounds(CharSequence paramCharSequence)
  {
    return getBounds(paramCharSequence, 0, paramCharSequence.length());
  }

  public BitmapFont.TextBounds getBounds(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    return getBounds(paramCharSequence, paramInt1, paramInt2, this.textBounds);
  }

  public BitmapFont.TextBounds getBounds(CharSequence paramCharSequence, int paramInt1, int paramInt2, BitmapFont.TextBounds paramTextBounds)
  {
    Object localObject1 = null;
    int i = paramInt1;
    int j;
    int k;
    if (i < paramInt2)
    {
      BitmapFont.BitmapFontData localBitmapFontData = this.data;
      j = i + 1;
      localObject1 = localBitmapFontData.getGlyph(paramCharSequence.charAt(i));
      if (localObject1 != null)
        k = ((BitmapFont.Glyph)localObject1).xadvance;
    }
    while (true)
    {
      int m;
      char c;
      Object localObject2;
      if (j < paramInt2)
      {
        m = j + 1;
        c = paramCharSequence.charAt(j);
        localObject2 = this.data.getGlyph(c);
        if (localObject2 == null)
          break label153;
      }
      for (int n = k + ((BitmapFont.Glyph)localObject1).getKerning(c) + ((BitmapFont.Glyph)localObject2).xadvance; ; n = k)
      {
        k = n;
        localObject1 = localObject2;
        j = m;
        break;
        paramTextBounds.width = (k * this.data.scaleX);
        paramTextBounds.height = this.data.capHeight;
        return paramTextBounds;
        label153: localObject2 = localObject1;
      }
      i = j;
      break;
      j = i;
      k = 0;
    }
  }

  public BitmapFont.TextBounds getBounds(CharSequence paramCharSequence, BitmapFont.TextBounds paramTextBounds)
  {
    return getBounds(paramCharSequence, 0, paramCharSequence.length());
  }

  public float getCapHeight()
  {
    return this.data.capHeight;
  }

  public Color getColor()
  {
    int i = NumberUtils.floatToIntColor(this.color);
    Color localColor = this.tempColor;
    localColor.r = ((i & 0xFF) / 255.0F);
    localColor.g = ((0xFF & i >>> 8) / 255.0F);
    localColor.b = ((0xFF & i >>> 16) / 255.0F);
    localColor.a = ((0xFF & i >>> 24) / 255.0F);
    return localColor;
  }

  public BitmapFont.BitmapFontData getData()
  {
    return this.data;
  }

  public float getDescent()
  {
    return this.data.descent;
  }

  public float getLineHeight()
  {
    return this.data.lineHeight;
  }

  public BitmapFont.TextBounds getMultiLineBounds(CharSequence paramCharSequence)
  {
    return getMultiLineBounds(paramCharSequence, this.textBounds);
  }

  public BitmapFont.TextBounds getMultiLineBounds(CharSequence paramCharSequence, BitmapFont.TextBounds paramTextBounds)
  {
    int i = 0;
    float f = 0.0F;
    int j = paramCharSequence.length();
    int k = 0;
    while (k < j)
    {
      int m = indexOf(paramCharSequence, '\n', k);
      f = Math.max(f, getBounds(paramCharSequence, k, m).width);
      k = m + 1;
      i++;
    }
    paramTextBounds.width = f;
    paramTextBounds.height = (this.data.capHeight + (i - 1) * this.data.lineHeight);
    return paramTextBounds;
  }

  public TextureRegion getRegion()
  {
    return this.region;
  }

  public float getScaleX()
  {
    return this.data.scaleX;
  }

  public float getScaleY()
  {
    return this.data.scaleY;
  }

  public float getSpaceWidth()
  {
    return this.data.spaceWidth;
  }

  public BitmapFont.TextBounds getWrappedBounds(CharSequence paramCharSequence, float paramFloat)
  {
    return getWrappedBounds(paramCharSequence, paramFloat, this.textBounds);
  }

  public BitmapFont.TextBounds getWrappedBounds(CharSequence paramCharSequence, float paramFloat, BitmapFont.TextBounds paramTextBounds)
  {
    int i = 0;
    float f = 0.0F;
    if (paramFloat <= 0.0F)
      paramFloat = 2.147484E+09F;
    int j = paramCharSequence.length();
    int k = 0;
    int n;
    int i1;
    if (i < j)
    {
      int m = indexOf(paramCharSequence, '\n', i);
      for (n = i; (n < m) && (isWhitespace(paramCharSequence.charAt(n))); n++);
      i1 = n + computeVisibleGlyphs(paramCharSequence, n, m, paramFloat);
      i = i1 + 1;
      if (i1 < m)
      {
        while ((i1 > n) && (!isWhitespace(paramCharSequence.charAt(i1))))
          i1--;
        if (i1 != n)
          break label184;
        i--;
        i1 = i;
      }
    }
    while (true)
    {
      if (i1 > n)
        f = Math.max(f, getBounds(paramCharSequence, n, i1).width);
      k++;
      break;
      label184: int i2 = i1;
      while ((i2 > n) && (isWhitespace(paramCharSequence.charAt(i2 - 1))))
      {
        i2--;
        continue;
        paramTextBounds.width = f;
        paramTextBounds.height = (this.data.capHeight + (k - 1) * this.data.lineHeight);
        return paramTextBounds;
      }
      int i3 = i1;
      i1 = i2;
      i = i3;
    }
  }

  public float getXHeight()
  {
    return this.data.xHeight;
  }

  public boolean isFlipped()
  {
    return this.flipped;
  }

  public void scale(float paramFloat)
  {
    setScale(paramFloat + this.data.scaleX, paramFloat + this.data.scaleY);
  }

  public void setColor(float paramFloat)
  {
    this.color = paramFloat;
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.color = NumberUtils.intToFloatColor((int)(255.0F * paramFloat4) << 24 | (int)(255.0F * paramFloat3) << 16 | (int)(255.0F * paramFloat2) << 8 | (int)(255.0F * paramFloat1));
  }

  public void setColor(Color paramColor)
  {
    this.color = paramColor.toFloatBits();
  }

  public void setFixedWidthGlyphs(CharSequence paramCharSequence)
  {
    int i = 0;
    int j = paramCharSequence.length();
    int k = 0;
    int m = 0;
    while (k < j)
    {
      BitmapFont.Glyph localGlyph2 = this.data.getGlyph(paramCharSequence.charAt(k));
      if ((localGlyph2 != null) && (localGlyph2.xadvance > m))
        m = localGlyph2.xadvance;
      k++;
    }
    int n = paramCharSequence.length();
    while (i < n)
    {
      BitmapFont.Glyph localGlyph1 = this.data.getGlyph(paramCharSequence.charAt(i));
      if (localGlyph1 != null)
      {
        localGlyph1.xoffset += (m - localGlyph1.xadvance) / 2;
        localGlyph1.xadvance = m;
        localGlyph1.kerning = null;
      }
      i++;
    }
  }

  public void setScale(float paramFloat)
  {
    setScale(paramFloat, paramFloat);
  }

  public void setScale(float paramFloat1, float paramFloat2)
  {
    this.data.lineHeight = (paramFloat1 * (this.data.lineHeight / this.data.scaleX));
    this.data.spaceWidth = (paramFloat1 * (this.data.spaceWidth / this.data.scaleX));
    this.data.xHeight = (paramFloat2 * (this.data.xHeight / this.data.scaleY));
    this.data.capHeight = (paramFloat2 * (this.data.capHeight / this.data.scaleY));
    this.data.ascent = (paramFloat2 * (this.data.ascent / this.data.scaleY));
    this.data.descent = (paramFloat2 * (this.data.descent / this.data.scaleY));
    this.data.down = (paramFloat2 * (this.data.down / this.data.scaleY));
    this.data.scaleX = paramFloat1;
    this.data.scaleY = paramFloat2;
  }

  public void setUseIntegerPositions(boolean paramBoolean)
  {
    this.integer = paramBoolean;
  }

  public boolean usesIntegerPositions()
  {
    return this.integer;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.BitmapFont
 * JD-Core Version:    0.6.2
 */