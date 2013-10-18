package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class BitmapFont$BitmapFontData
{
  public float ascent;
  public float capHeight;
  public float descent;
  public float down;
  public boolean flipped;
  public FileHandle fontFile;
  public final BitmapFont.Glyph[][] glyphs;
  public String imagePath;
  public float lineHeight;
  public float scaleX;
  public float scaleY;
  public float spaceWidth;
  public float xHeight;

  public BitmapFont$BitmapFontData()
  {
    this.capHeight = 1.0F;
    this.scaleX = 1.0F;
    this.scaleY = 1.0F;
    this.glyphs = new BitmapFont.Glyph[''][];
    this.xHeight = 1.0F;
  }

  public BitmapFont$BitmapFontData(FileHandle paramFileHandle, boolean paramBoolean)
  {
    this.capHeight = f;
    this.scaleX = f;
    this.scaleY = f;
    this.glyphs = new BitmapFont.Glyph[''][];
    this.xHeight = f;
    this.fontFile = paramFileHandle;
    this.flipped = paramBoolean;
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramFileHandle.read()), 512);
    String str1;
    try
    {
      localBufferedReader.readLine();
      str1 = localBufferedReader.readLine();
      if (str1 == null)
        throw new GdxRuntimeException("Invalid font file: " + paramFileHandle);
    }
    catch (Exception localException)
    {
      localException = localException;
      throw new GdxRuntimeException("Error loading font file: " + paramFileHandle, localException);
    }
    finally
    {
    }
    try
    {
      localBufferedReader.close();
      throw localObject;
      String[] arrayOfString1 = str1.split(" ", 4);
      if (arrayOfString1.length < 4)
        throw new GdxRuntimeException("Invalid font file: " + paramFileHandle);
      if (!arrayOfString1[1].startsWith("lineHeight="))
        throw new GdxRuntimeException("Invalid font file: " + paramFileHandle);
      this.lineHeight = Integer.parseInt(arrayOfString1[1].substring(11));
      if (!arrayOfString1[2].startsWith("base="))
        throw new GdxRuntimeException("Invalid font file: " + paramFileHandle);
      int i = Integer.parseInt(arrayOfString1[2].substring(5));
      String str2 = localBufferedReader.readLine();
      if (str2 == null)
        throw new GdxRuntimeException("Invalid font file: " + paramFileHandle);
      String[] arrayOfString2 = str2.split(" ", 4);
      if (!arrayOfString2[2].startsWith("file="))
        throw new GdxRuntimeException("Invalid font file: " + paramFileHandle);
      String str3;
      label434: BitmapFont.Glyph localGlyph7;
      StringTokenizer localStringTokenizer2;
      if (arrayOfString2[2].endsWith("\""))
      {
        str3 = arrayOfString2[2].substring(6, -1 + arrayOfString2[2].length());
        this.imagePath = paramFileHandle.parent().child(str3).path().replaceAll("\\\\", "/");
        this.descent = 0.0F;
        int i5;
        do
        {
          String str4;
          do
          {
            str4 = localBufferedReader.readLine();
            if ((str4 == null) || (str4.startsWith("kernings ")))
              break;
          }
          while (!str4.startsWith("char "));
          localGlyph7 = new BitmapFont.Glyph();
          localStringTokenizer2 = new StringTokenizer(str4, " =");
          localStringTokenizer2.nextToken();
          localStringTokenizer2.nextToken();
          i5 = Integer.parseInt(localStringTokenizer2.nextToken());
        }
        while (i5 > 65535);
        setGlyph(i5, localGlyph7);
        localStringTokenizer2.nextToken();
        localGlyph7.srcX = Integer.parseInt(localStringTokenizer2.nextToken());
        localStringTokenizer2.nextToken();
        localGlyph7.srcY = Integer.parseInt(localStringTokenizer2.nextToken());
        localStringTokenizer2.nextToken();
        localGlyph7.width = Integer.parseInt(localStringTokenizer2.nextToken());
        localStringTokenizer2.nextToken();
        localGlyph7.height = Integer.parseInt(localStringTokenizer2.nextToken());
        localStringTokenizer2.nextToken();
        localGlyph7.xoffset = Integer.parseInt(localStringTokenizer2.nextToken());
        localStringTokenizer2.nextToken();
        if (!paramBoolean)
          break label721;
      }
      label721: for (localGlyph7.yoffset = Integer.parseInt(localStringTokenizer2.nextToken()); ; localGlyph7.yoffset = (-(localGlyph7.height + Integer.parseInt(localStringTokenizer2.nextToken()))))
      {
        localStringTokenizer2.nextToken();
        localGlyph7.xadvance = Integer.parseInt(localStringTokenizer2.nextToken());
        if ((localGlyph7.width <= 0) || (localGlyph7.height <= 0))
          break label434;
        this.descent = Math.min(i + localGlyph7.yoffset, this.descent);
        break label434;
        str3 = arrayOfString2[2].substring(5, arrayOfString2[2].length());
        break;
      }
      while (true)
      {
        String str5 = localBufferedReader.readLine();
        if ((str5 == null) || (!str5.startsWith("kerning ")))
          break;
        StringTokenizer localStringTokenizer1 = new StringTokenizer(str5, " =");
        localStringTokenizer1.nextToken();
        localStringTokenizer1.nextToken();
        int j = Integer.parseInt(localStringTokenizer1.nextToken());
        localStringTokenizer1.nextToken();
        int k = Integer.parseInt(localStringTokenizer1.nextToken());
        if ((j >= 0) && (j <= 65535) && (k >= 0) && (k <= 65535))
        {
          BitmapFont.Glyph localGlyph1 = getGlyph((char)j);
          localStringTokenizer1.nextToken();
          localGlyph1.setKerning(k, Integer.parseInt(localStringTokenizer1.nextToken()));
        }
      }
      BitmapFont.Glyph localGlyph2 = getGlyph(' ');
      if (localGlyph2 == null)
      {
        localGlyph2 = new BitmapFont.Glyph();
        BitmapFont.Glyph localGlyph3 = getGlyph('l');
        if (localGlyph3 == null)
          localGlyph3 = getFirstGlyph();
        localGlyph2.xadvance = localGlyph3.xadvance;
        setGlyph(32, localGlyph2);
      }
      if (localGlyph2 != null)
        f = localGlyph2.xadvance + localGlyph2.width;
      this.spaceWidth = f;
      BitmapFont.Glyph localGlyph4 = null;
      for (int m = 0; m < BitmapFont.xChars.length; m++)
      {
        localGlyph4 = getGlyph(BitmapFont.xChars[m]);
        if (localGlyph4 != null)
          break;
      }
      if (localGlyph4 == null)
        localGlyph4 = getFirstGlyph();
      this.xHeight = localGlyph4.height;
      BitmapFont.Glyph localGlyph5 = null;
      for (int n = 0; n < BitmapFont.capChars.length; n++)
      {
        localGlyph5 = getGlyph(BitmapFont.capChars[n]);
        if (localGlyph5 != null)
          break;
      }
      if (localGlyph5 == null)
      {
        BitmapFont.Glyph[][] arrayOfGlyph = this.glyphs;
        int i1 = arrayOfGlyph.length;
        i2 = 0;
        if (i2 < i1)
        {
          BitmapFont.Glyph[] arrayOfGlyph1 = arrayOfGlyph[i2];
          if (arrayOfGlyph1 == null)
            break label1227;
          int i3 = arrayOfGlyph1.length;
          i4 = 0;
          if (i4 >= i3)
            break label1227;
          BitmapFont.Glyph localGlyph6 = arrayOfGlyph1[i4];
          if ((localGlyph6 == null) || (localGlyph6.height == 0) || (localGlyph6.width == 0))
            break label1221;
          this.capHeight = Math.max(this.capHeight, localGlyph6.height);
          break label1221;
        }
      }
      else
      {
        this.capHeight = localGlyph5.height;
      }
      this.ascent = (i - this.capHeight);
      this.down = (-this.lineHeight);
      if (paramBoolean)
      {
        this.ascent = (-this.ascent);
        this.down = (-this.down);
      }
      try
      {
        localBufferedReader.close();
        return;
      }
      catch (IOException localIOException2)
      {
      }
    }
    catch (IOException localIOException1)
    {
      while (true)
      {
        int i2;
        int i4;
        continue;
        label1221: i4++;
        continue;
        label1227: i2++;
      }
    }
  }

  public BitmapFont.Glyph getFirstGlyph()
  {
    for (BitmapFont.Glyph[] arrayOfGlyph1 : this.glyphs)
      if (arrayOfGlyph1 != null)
      {
        int k = arrayOfGlyph1.length;
        for (int m = 0; m < k; m++)
        {
          BitmapFont.Glyph localGlyph = arrayOfGlyph1[m];
          if ((localGlyph != null) && (localGlyph.height != 0) && (localGlyph.width != 0))
            return localGlyph;
        }
      }
    throw new GdxRuntimeException("No glyphs found!");
  }

  public FileHandle getFontFile()
  {
    return this.fontFile;
  }

  public BitmapFont.Glyph getGlyph(char paramChar)
  {
    BitmapFont.Glyph[] arrayOfGlyph = this.glyphs[(paramChar / 'Ȁ')];
    if (arrayOfGlyph != null)
      return arrayOfGlyph[(paramChar & 0x1FF)];
    return null;
  }

  public String getImagePath()
  {
    return this.imagePath;
  }

  public void setGlyph(int paramInt, BitmapFont.Glyph paramGlyph)
  {
    BitmapFont.Glyph[] arrayOfGlyph = this.glyphs[(paramInt / 512)];
    if (arrayOfGlyph == null)
    {
      BitmapFont.Glyph[][] arrayOfGlyph1 = this.glyphs;
      int i = paramInt / 512;
      arrayOfGlyph = new BitmapFont.Glyph[512];
      arrayOfGlyph1[i] = arrayOfGlyph;
    }
    arrayOfGlyph[(paramInt & 0x1FF)] = paramGlyph;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.BitmapFont.BitmapFontData
 * JD-Core Version:    0.6.2
 */