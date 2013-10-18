package com.nianticproject.ingress.common.q.b;

import java.io.DataInput;
import java.io.EOFException;
import java.io.UTFDataFormatException;

public class b
  implements DataInput
{
  private final byte[] b;
  private final int c;
  private int d;
  private char[] e;

  static
  {
    if (!b.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public b(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, paramArrayOfByte.length);
  }

  private b(byte[] paramArrayOfByte, int paramInt)
  {
    this.b = paramArrayOfByte;
    if (paramInt + 0 > paramArrayOfByte.length)
      paramInt = 0 + paramArrayOfByte.length;
    this.c = paramInt;
    this.d = 0;
    this.e = new char[''];
  }

  private static String a(byte[] paramArrayOfByte, char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = 0;
    while (j < paramInt2)
    {
      int k = j + 1;
      int m = (char)paramArrayOfByte[(j + paramInt1)];
      paramArrayOfChar[i] = m;
      if (m < 128)
      {
        i++;
        j = k;
      }
      else
      {
        int n = paramArrayOfChar[i];
        if ((n & 0xE0) == 192)
        {
          if (k >= paramInt2)
            throw new UTFDataFormatException("Second byte at " + k + " does not match UTF8 specification.");
          int i6 = k + 1;
          int i7 = paramArrayOfByte[(paramInt1 + k)];
          if ((i7 & 0xC0) != 128)
            throw new UTFDataFormatException("Second byte at " + (i6 - 1) + " does not match UTF8 specification.");
          int i8 = i + 1;
          paramArrayOfChar[i] = ((char)((n & 0x1F) << 6 | i7 & 0x3F));
          i = i8;
          j = i6;
        }
        else if ((n & 0xF0) == 224)
        {
          if (k + 1 >= paramInt2)
            throw new UTFDataFormatException("Third byte at " + (k + 1) + " does not match UTF8 specification.");
          int i1 = k + 1;
          int i2 = paramArrayOfByte[(k + paramInt1)];
          int i3 = i1 + 1;
          int i4 = paramArrayOfByte[(i1 + paramInt1)];
          if (((i2 & 0xC0) != 128) || ((i4 & 0xC0) != 128))
            throw new UTFDataFormatException("Second or third byte at " + (i3 - 2) + " does not match UTF8 specification.");
          int i5 = i + 1;
          paramArrayOfChar[i] = ((char)((n & 0xF) << 12 | (i2 & 0x3F) << 6 | i4 & 0x3F));
          i = i5;
          j = i3;
        }
        else
        {
          throw new UTFDataFormatException("Input at " + (k - 1) + " does not match UTF8 specification.");
        }
      }
    }
    return new String(paramArrayOfChar, 0, i);
  }

  public boolean readBoolean()
  {
    try
    {
      byte[] arrayOfByte = this.b;
      int i = this.d;
      this.d = (i + 1);
      int j = arrayOfByte[i];
      return j != 0;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public byte readByte()
  {
    try
    {
      byte[] arrayOfByte = this.b;
      int i = this.d;
      this.d = (i + 1);
      byte b1 = arrayOfByte[i];
      return b1;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public char readChar()
  {
    try
    {
      byte[] arrayOfByte1 = this.b;
      int i = this.d;
      this.d = (i + 1);
      int j = arrayOfByte1[i];
      byte[] arrayOfByte2 = this.b;
      int k = this.d;
      this.d = (k + 1);
      int m = arrayOfByte2[k];
      return (char)(m & 0xFF | j << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public double readDouble()
  {
    return Double.longBitsToDouble(readLong());
  }

  public float readFloat()
  {
    return Float.intBitsToFloat(readInt());
  }

  public void readFully(byte[] paramArrayOfByte)
  {
    readFully(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
      return;
    if (paramInt1 + paramInt2 > paramArrayOfByte.length)
      throw new IndexOutOfBoundsException();
    if (paramInt2 > this.c - this.d)
    {
      this.d = this.c;
      throw new EOFException();
    }
    System.arraycopy(this.b, this.d, paramArrayOfByte, paramInt1, paramInt2);
    this.d = (paramInt2 + this.d);
  }

  public int readInt()
  {
    try
    {
      byte[] arrayOfByte1 = this.b;
      int i = this.d;
      this.d = (i + 1);
      int j = arrayOfByte1[i];
      byte[] arrayOfByte2 = this.b;
      int k = this.d;
      this.d = (k + 1);
      int m = 0xFF & arrayOfByte2[k];
      byte[] arrayOfByte3 = this.b;
      int n = this.d;
      this.d = (n + 1);
      int i1 = 0xFF & arrayOfByte3[n];
      byte[] arrayOfByte4 = this.b;
      int i2 = this.d;
      this.d = (i2 + 1);
      int i3 = arrayOfByte4[i2];
      return i3 & 0xFF | (j << 24 | m << 16 | i1 << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public String readLine()
  {
    if (this.d >= this.c)
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    do
    {
      byte[] arrayOfByte = this.b;
      int i = this.d;
      this.d = (i + 1);
      char c1 = (char)arrayOfByte[i];
      if (c1 == '\n')
        return localStringBuilder.toString();
      if (c1 == '\r')
      {
        if ((this.d < this.c) && (this.b[this.d] == 10))
          this.d = (1 + this.d);
        return localStringBuilder.toString();
      }
      localStringBuilder.append(c1);
    }
    while (this.d != this.c);
    return localStringBuilder.toString();
  }

  public long readLong()
  {
    try
    {
      byte[] arrayOfByte1 = this.b;
      int i = this.d;
      this.d = (i + 1);
      long l1 = arrayOfByte1[i];
      byte[] arrayOfByte2 = this.b;
      int j = this.d;
      this.d = (j + 1);
      long l2 = 0xFF & arrayOfByte2[j];
      byte[] arrayOfByte3 = this.b;
      int k = this.d;
      this.d = (k + 1);
      long l3 = 0xFF & arrayOfByte3[k];
      byte[] arrayOfByte4 = this.b;
      int m = this.d;
      this.d = (m + 1);
      long l4 = 0xFF & arrayOfByte4[m];
      byte[] arrayOfByte5 = this.b;
      int n = this.d;
      this.d = (n + 1);
      long l5 = 0xFF & arrayOfByte5[n];
      byte[] arrayOfByte6 = this.b;
      int i1 = this.d;
      this.d = (i1 + 1);
      long l6 = 0xFF & arrayOfByte6[i1];
      byte[] arrayOfByte7 = this.b;
      int i2 = this.d;
      this.d = (i2 + 1);
      long l7 = 0xFF & arrayOfByte7[i2];
      byte[] arrayOfByte8 = this.b;
      int i3 = this.d;
      this.d = (i3 + 1);
      int i4 = arrayOfByte8[i3];
      return i4 & 0xFF | (l1 << 56 | l2 << 48 | l3 << 40 | l4 << 32 | l5 << 24 | l6 << 16 | l7 << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public short readShort()
  {
    try
    {
      byte[] arrayOfByte1 = this.b;
      int i = this.d;
      this.d = (i + 1);
      int j = arrayOfByte1[i];
      byte[] arrayOfByte2 = this.b;
      int k = this.d;
      this.d = (k + 1);
      int m = arrayOfByte2[k];
      return (short)(m & 0xFF | j << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public String readUTF()
  {
    int i = readUnsignedShort();
    if (i == 0)
      return "";
    if (i > this.c - this.d)
    {
      this.d = this.c;
      throw new EOFException();
    }
    if (i > this.e.length)
      this.e = new char[i];
    String str = a(this.b, this.e, this.d, i);
    this.d = (i + this.d);
    return str;
  }

  public int readUnsignedByte()
  {
    try
    {
      byte[] arrayOfByte = this.b;
      int i = this.d;
      this.d = (i + 1);
      int j = arrayOfByte[i];
      return j & 0xFF;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public int readUnsignedShort()
  {
    try
    {
      byte[] arrayOfByte1 = this.b;
      int i = this.d;
      this.d = (i + 1);
      int j = 0xFF & arrayOfByte1[i];
      byte[] arrayOfByte2 = this.b;
      int k = this.d;
      this.d = (k + 1);
      int m = arrayOfByte2[k];
      return (short)(m & 0xFF | j << 8);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new EOFException();
  }

  public int skipBytes(int paramInt)
  {
    if (paramInt > this.c - this.d)
      paramInt = this.c - this.d;
    this.d = (paramInt + this.d);
    return paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.b
 * JD-Core Version:    0.6.2
 */