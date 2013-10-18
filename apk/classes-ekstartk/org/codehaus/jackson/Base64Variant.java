package org.codehaus.jackson;

import java.util.Arrays;

public final class Base64Variant
{
  private final int[] _asciiToBase64 = new int[''];
  private final byte[] _base64ToAsciiB = new byte[64];
  private final char[] _base64ToAsciiC = new char[64];
  final int _maxLineLength;
  final String _name;
  final char _paddingChar;
  final boolean _usesPadding;

  public Base64Variant(String paramString1, String paramString2, boolean paramBoolean, char paramChar, int paramInt)
  {
    this._name = paramString1;
    this._usesPadding = paramBoolean;
    this._paddingChar = paramChar;
    this._maxLineLength = paramInt;
    int j = paramString2.length();
    if (j != 64)
      throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + j + ")");
    paramString2.getChars(0, j, this._base64ToAsciiC, 0);
    Arrays.fill(this._asciiToBase64, -1);
    while (i < j)
    {
      int k = this._base64ToAsciiC[i];
      this._base64ToAsciiB[i] = ((byte)k);
      this._asciiToBase64[k] = i;
      i++;
    }
    if (paramBoolean)
      this._asciiToBase64[paramChar] = -2;
  }

  public Base64Variant(Base64Variant paramBase64Variant, String paramString, int paramInt)
  {
    this(paramBase64Variant, paramString, paramBase64Variant._usesPadding, paramBase64Variant._paddingChar, paramInt);
  }

  public Base64Variant(Base64Variant paramBase64Variant, String paramString, boolean paramBoolean, char paramChar, int paramInt)
  {
    this._name = paramString;
    byte[] arrayOfByte = paramBase64Variant._base64ToAsciiB;
    System.arraycopy(arrayOfByte, 0, this._base64ToAsciiB, 0, arrayOfByte.length);
    char[] arrayOfChar = paramBase64Variant._base64ToAsciiC;
    System.arraycopy(arrayOfChar, 0, this._base64ToAsciiC, 0, arrayOfChar.length);
    int[] arrayOfInt = paramBase64Variant._asciiToBase64;
    System.arraycopy(arrayOfInt, 0, this._asciiToBase64, 0, arrayOfInt.length);
    this._usesPadding = paramBoolean;
    this._paddingChar = paramChar;
    this._maxLineLength = paramInt;
  }

  public final int decodeBase64Char(char paramChar)
  {
    if (paramChar <= '')
      return this._asciiToBase64[paramChar];
    return -1;
  }

  public final int decodeBase64Char(int paramInt)
  {
    if (paramInt <= 127)
      return this._asciiToBase64[paramInt];
    return -1;
  }

  public final String encode(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int i = paramArrayOfByte.length;
    StringBuilder localStringBuilder = new StringBuilder(i + (i >> 2) + (i >> 3));
    if (paramBoolean)
      localStringBuilder.append('"');
    int j = getMaxLineLength() >> 2;
    int k = 0;
    int m = i - 3;
    int n = j;
    while (k <= m)
    {
      int i4 = k + 1;
      int i5 = paramArrayOfByte[k] << 8;
      int i6 = i4 + 1;
      int i7 = (i5 | 0xFF & paramArrayOfByte[i4]) << 8;
      int i8 = i6 + 1;
      encodeBase64Chunk(localStringBuilder, i7 | 0xFF & paramArrayOfByte[i6]);
      int i9 = n - 1;
      if (i9 <= 0)
      {
        localStringBuilder.append('\\');
        localStringBuilder.append('n');
        i9 = getMaxLineLength() >> 2;
      }
      n = i9;
      k = i8;
    }
    int i1 = i - k;
    if (i1 > 0)
    {
      int i2 = k + 1;
      int i3 = paramArrayOfByte[k] << 16;
      if (i1 == 2)
        i3 |= (0xFF & paramArrayOfByte[i2]) << 8;
      encodeBase64Partial(localStringBuilder, i3, i1);
    }
    if (paramBoolean)
      localStringBuilder.append('"');
    return localStringBuilder.toString();
  }

  public final int encodeBase64Chunk(int paramInt1, char[] paramArrayOfChar, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfChar[paramInt2] = this._base64ToAsciiC[(0x3F & paramInt1 >> 18)];
    int j = i + 1;
    paramArrayOfChar[i] = this._base64ToAsciiC[(0x3F & paramInt1 >> 12)];
    int k = j + 1;
    paramArrayOfChar[j] = this._base64ToAsciiC[(0x3F & paramInt1 >> 6)];
    int m = k + 1;
    paramArrayOfChar[k] = this._base64ToAsciiC[(paramInt1 & 0x3F)];
    return m;
  }

  public final void encodeBase64Chunk(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append(this._base64ToAsciiC[(0x3F & paramInt >> 18)]);
    paramStringBuilder.append(this._base64ToAsciiC[(0x3F & paramInt >> 12)]);
    paramStringBuilder.append(this._base64ToAsciiC[(0x3F & paramInt >> 6)]);
    paramStringBuilder.append(this._base64ToAsciiC[(paramInt & 0x3F)]);
  }

  public final int encodeBase64Partial(int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3)
  {
    int i = paramInt3 + 1;
    paramArrayOfChar[paramInt3] = this._base64ToAsciiC[(0x3F & paramInt1 >> 18)];
    int j = i + 1;
    paramArrayOfChar[i] = this._base64ToAsciiC[(0x3F & paramInt1 >> 12)];
    if (this._usesPadding)
    {
      int m = j + 1;
      if (paramInt2 == 2);
      for (int n = this._base64ToAsciiC[(0x3F & paramInt1 >> 6)]; ; n = this._paddingChar)
      {
        paramArrayOfChar[j] = n;
        int i1 = m + 1;
        paramArrayOfChar[m] = this._paddingChar;
        return i1;
      }
    }
    if (paramInt2 == 2)
    {
      int k = j + 1;
      paramArrayOfChar[j] = this._base64ToAsciiC[(0x3F & paramInt1 >> 6)];
      return k;
    }
    return j;
  }

  public final void encodeBase64Partial(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    paramStringBuilder.append(this._base64ToAsciiC[(0x3F & paramInt1 >> 18)]);
    paramStringBuilder.append(this._base64ToAsciiC[(0x3F & paramInt1 >> 12)]);
    if (this._usesPadding)
      if (paramInt2 == 2)
      {
        c = this._base64ToAsciiC[(0x3F & paramInt1 >> 6)];
        paramStringBuilder.append(c);
        paramStringBuilder.append(this._paddingChar);
      }
    while (paramInt2 != 2)
      while (true)
      {
        return;
        char c = this._paddingChar;
      }
    paramStringBuilder.append(this._base64ToAsciiC[(0x3F & paramInt1 >> 6)]);
  }

  public final int getMaxLineLength()
  {
    return this._maxLineLength;
  }

  public final char getPaddingChar()
  {
    return this._paddingChar;
  }

  public final String toString()
  {
    return this._name;
  }

  public final boolean usesPadding()
  {
    return this._usesPadding;
  }

  public final boolean usesPaddingChar(char paramChar)
  {
    return paramChar == this._paddingChar;
  }

  public final boolean usesPaddingChar(int paramInt)
  {
    return paramInt == this._paddingChar;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.Base64Variant
 * JD-Core Version:    0.6.2
 */