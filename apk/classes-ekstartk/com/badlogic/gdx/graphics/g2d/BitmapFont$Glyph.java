package com.badlogic.gdx.graphics.g2d;

public class BitmapFont$Glyph
{
  public int height;
  public byte[][] kerning;
  public int srcX;
  public int srcY;
  public float u;
  public float u2;
  public float v;
  public float v2;
  public int width;
  public int xadvance;
  public int xoffset;
  public int yoffset;

  public int getKerning(char paramChar)
  {
    if (this.kerning != null)
    {
      byte[] arrayOfByte = this.kerning[(paramChar >>> '\t')];
      if (arrayOfByte != null)
        return arrayOfByte[(paramChar & 0x1FF)];
    }
    return 0;
  }

  public void setKerning(int paramInt1, int paramInt2)
  {
    if (this.kerning == null)
      this.kerning = new byte[''][];
    byte[] arrayOfByte = this.kerning[(paramInt1 >>> 9)];
    if (arrayOfByte == null)
    {
      byte[][] arrayOfByte1 = this.kerning;
      int i = paramInt1 >>> 9;
      arrayOfByte = new byte[512];
      arrayOfByte1[i] = arrayOfByte;
    }
    arrayOfByte[(paramInt1 & 0x1FF)] = ((byte)paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.BitmapFont.Glyph
 * JD-Core Version:    0.6.2
 */