package com.badlogic.gdx.utils;

import java.io.DataInputStream;
import java.io.InputStream;

public class DataInput extends DataInputStream
{
  private char[] chars = new char[32];

  public DataInput(InputStream paramInputStream)
  {
    super(paramInputStream);
  }

  private void readUtf8_slow(int paramInt1, int paramInt2, int paramInt3)
  {
    char[] arrayOfChar = this.chars;
    switch (paramInt3 >> 4)
    {
    case 8:
    case 9:
    case 10:
    case 11:
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 12:
    case 13:
    case 14:
    }
    while (true)
    {
      paramInt2++;
      if (paramInt2 >= paramInt1)
        return;
      paramInt3 = 0xFF & read();
      break;
      arrayOfChar[paramInt2] = ((char)paramInt3);
      continue;
      arrayOfChar[paramInt2] = ((char)((paramInt3 & 0x1F) << 6 | 0x3F & read()));
      continue;
      arrayOfChar[paramInt2] = ((char)((paramInt3 & 0xF) << 12 | (0x3F & read()) << 6 | 0x3F & read()));
    }
  }

  public int readInt(boolean paramBoolean)
  {
    int i = read();
    int j = i & 0x7F;
    if ((i & 0x80) != 0)
    {
      int k = read();
      j |= (k & 0x7F) << 7;
      if ((k & 0x80) != 0)
      {
        int m = read();
        j |= (m & 0x7F) << 14;
        if ((m & 0x80) != 0)
        {
          int n = read();
          j |= (n & 0x7F) << 21;
          if ((n & 0x80) != 0)
            j |= (0x7F & read()) << 28;
        }
      }
    }
    if (paramBoolean)
      return j;
    return j >>> 1 ^ -(j & 0x1);
  }

  public String readString()
  {
    int i = readInt(true);
    int j;
    char[] arrayOfChar;
    int k;
    int m;
    switch (i)
    {
    default:
      j = i - 1;
      if (this.chars.length < j)
        this.chars = new char[j];
      arrayOfChar = this.chars;
      k = 0;
      m = 0;
    case 0:
    case 1:
    }
    while (m < j)
    {
      k = read();
      if (k <= 127)
      {
        int n = m + 1;
        arrayOfChar[m] = ((char)k);
        m = n;
        continue;
        return null;
        return "";
      }
    }
    if (m < j)
      readUtf8_slow(j, m, k);
    return new String(arrayOfChar, 0, j);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.DataInput
 * JD-Core Version:    0.6.2
 */