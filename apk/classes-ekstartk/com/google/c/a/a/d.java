package com.google.c.a.a;

public final class d
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };

  private static int a(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramString.length();
    int j = 0;
    if (j < i)
    {
      int k = paramString.charAt(j);
      int n;
      if ((k >= 55296) && (k <= 57343) && (j + 1 < i))
      {
        n = paramString.charAt(j + 1);
        if ((n & 0xFC00 ^ k & 0xFC00) == 1024)
        {
          j++;
          if ((n & 0xFC00) != 55296)
            break label136;
          label84: k = 65536 + ((n & 0x3FF) << 10 | k & 0x3FF);
        }
      }
      int m;
      if (k <= 127)
      {
        if (paramArrayOfByte != null)
          paramArrayOfByte[paramInt] = ((byte)k);
        m = paramInt + 1;
      }
      while (true)
      {
        j++;
        paramInt = m;
        break;
        label136: int i1 = k;
        k = n;
        n = i1;
        break label84;
        if (k <= 2047)
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xC0 | k >> 6));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | k & 0x3F));
          }
          m = paramInt + 2;
        }
        else if (k <= 65535)
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xE0 | k >> 12));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | 0x3F & k >> 6));
            paramArrayOfByte[(paramInt + 2)] = ((byte)(0x80 | k & 0x3F));
          }
          m = paramInt + 3;
        }
        else
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xF0 | k >> 18));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | 0x3F & k >> 12));
            paramArrayOfByte[(paramInt + 2)] = ((byte)(0x80 | 0x3F & k >> 6));
            paramArrayOfByte[(paramInt + 3)] = ((byte)(0x80 | k & 0x3F));
          }
          m = paramInt + 4;
        }
      }
    }
    return paramInt;
  }

  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramInt + 0);
    int i = 0;
    int j;
    int i2;
    int i3;
    label137: int i5;
    while (true)
      if (i < paramInt)
      {
        j = i + 1;
        int k = 0xFF & paramArrayOfByte[i];
        if (k <= 127)
        {
          localStringBuffer.append((char)k);
          i = j;
        }
        else if (k >= 245)
        {
          localStringBuffer.append((char)k);
          i = j;
        }
        else
        {
          int m = 31;
          int n = 1;
          int i6;
          for (int i1 = 224; k >= i1; i1 = i6)
          {
            i6 = 0x80 | i1 >> 1;
            int i7 = n + 1;
            m >>= 1;
            n = i7;
          }
          i2 = m & k;
          i3 = 0;
          if (i3 < n)
          {
            i2 <<= 6;
            if (j >= paramInt)
              break label277;
            i5 = j + 1;
            i2 |= 0x3F & paramArrayOfByte[j];
          }
        }
      }
    while (true)
    {
      i3++;
      j = i5;
      break label137;
      if ((i2 >= 55296) && (i2 <= 57343))
        throw new IllegalArgumentException("Invalid UTF8");
      if (i2 <= 65535)
      {
        localStringBuffer.append((char)i2);
        i = j;
        break;
      }
      int i4 = i2 - 65536;
      localStringBuffer.append((char)(0xD800 | i4 >> 10));
      localStringBuffer.append((char)(0xDC00 | i4 & 0x3FF));
      i = j;
      break;
      return localStringBuffer.toString();
      label277: i5 = j;
    }
  }

  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte = new byte[a(paramString, null, 0)];
    a(paramString, arrayOfByte, 0);
    return arrayOfByte;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.d
 * JD-Core Version:    0.6.2
 */