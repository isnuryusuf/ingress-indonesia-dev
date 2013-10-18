package com.badlogic.gdx.utils;

import java.io.DataOutputStream;
import java.io.OutputStream;

public class DataOutput extends DataOutputStream
{
  public DataOutput(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }

  private void writeString_slow(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 < paramInt1)
    {
      int i = paramString.charAt(paramInt2);
      if (i <= 127)
        write((byte)i);
      while (true)
      {
        paramInt2++;
        break;
        if (i > 2047)
        {
          write((byte)(0xE0 | 0xF & i >> 12));
          write((byte)(0x80 | 0x3F & i >> 6));
          write((byte)(0x80 | i & 0x3F));
        }
        else
        {
          write((byte)(0xC0 | 0x1F & i >> 6));
          write((byte)(0x80 | i & 0x3F));
        }
      }
    }
  }

  public int writeInt(int paramInt, boolean paramBoolean)
  {
    if (!paramBoolean)
      paramInt = paramInt << 1 ^ paramInt >> 31;
    if (paramInt >>> 7 == 0)
    {
      write((byte)paramInt);
      return 1;
    }
    write((byte)(0x80 | paramInt & 0x7F));
    if (paramInt >>> 14 == 0)
    {
      write((byte)(paramInt >>> 7));
      return 2;
    }
    write((byte)(0x80 | paramInt >>> 7));
    if (paramInt >>> 21 == 0)
    {
      write((byte)(paramInt >>> 14));
      return 3;
    }
    write((byte)(0x80 | paramInt >>> 14));
    if (paramInt >>> 28 == 0)
    {
      write((byte)(paramInt >>> 21));
      return 4;
    }
    write((byte)(0x80 | paramInt >>> 21));
    write((byte)(paramInt >>> 28));
    return 5;
  }

  public void writeString(String paramString)
  {
    int i = 0;
    if (paramString == null)
      write(0);
    int j;
    do
    {
      return;
      j = paramString.length();
      if (j == 0)
      {
        writeByte(1);
        return;
      }
      writeInt(j + 1, true);
      while (i < j)
      {
        int k = paramString.charAt(i);
        if (k > 127)
          break;
        write((byte)k);
        i++;
      }
    }
    while (i >= j);
    writeString_slow(paramString, j, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.DataOutput
 * JD-Core Version:    0.6.2
 */