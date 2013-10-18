package org.codehaus.jackson.util;

import java.util.Arrays;

public final class CharTypes
{
  private static final byte[] HEX_BYTES;
  private static final char[] HEX_CHARS;
  static final int[] sHexValues;
  static final int[] sInputCodes;
  static final int[] sInputCodesComment;
  static final int[] sInputCodesJsNames;
  static final int[] sInputCodesUtf8;
  static final int[] sInputCodesUtf8JsNames;
  static final int[] sOutputEscapes128;

  static
  {
    char[] arrayOfChar = "0123456789ABCDEF".toCharArray();
    HEX_CHARS = arrayOfChar;
    int i = arrayOfChar.length;
    HEX_BYTES = new byte[i];
    for (int j = 0; j < i; j++)
      HEX_BYTES[j] = ((byte)HEX_CHARS[j]);
    int[] arrayOfInt1 = new int[256];
    for (int k = 0; k < 32; k++)
      arrayOfInt1[k] = -1;
    arrayOfInt1[34] = 1;
    arrayOfInt1[92] = 1;
    sInputCodes = arrayOfInt1;
    int[] arrayOfInt2 = new int[arrayOfInt1.length];
    System.arraycopy(sInputCodes, 0, arrayOfInt2, 0, sInputCodes.length);
    int m = 128;
    if (m < 256)
    {
      int i4;
      if ((m & 0xE0) == 192)
        i4 = 2;
      while (true)
      {
        arrayOfInt2[m] = i4;
        m++;
        break;
        if ((m & 0xF0) == 224)
          i4 = 3;
        else if ((m & 0xF8) == 240)
          i4 = 4;
        else
          i4 = -1;
      }
    }
    sInputCodesUtf8 = arrayOfInt2;
    int[] arrayOfInt3 = new int[256];
    Arrays.fill(arrayOfInt3, -1);
    for (int n = 33; n < 256; n++)
      if (Character.isJavaIdentifierPart((char)n))
        arrayOfInt3[n] = 0;
    arrayOfInt3[64] = 0;
    arrayOfInt3[35] = 0;
    arrayOfInt3[42] = 0;
    arrayOfInt3[45] = 0;
    arrayOfInt3[43] = 0;
    sInputCodesJsNames = arrayOfInt3;
    int[] arrayOfInt4 = new int[256];
    System.arraycopy(sInputCodesJsNames, 0, arrayOfInt4, 0, sInputCodesJsNames.length);
    Arrays.fill(arrayOfInt4, 128, 128, 0);
    sInputCodesUtf8JsNames = arrayOfInt4;
    sInputCodesComment = new int[256];
    System.arraycopy(sInputCodesUtf8, 128, sInputCodesComment, 128, 128);
    Arrays.fill(sInputCodesComment, 0, 32, -1);
    sInputCodesComment[9] = 0;
    sInputCodesComment[10] = 10;
    sInputCodesComment[13] = 13;
    sInputCodesComment[42] = 42;
    int[] arrayOfInt5 = new int[''];
    for (int i1 = 0; i1 < 32; i1++)
      arrayOfInt5[i1] = -1;
    arrayOfInt5[34] = 34;
    arrayOfInt5[92] = 92;
    arrayOfInt5[8] = 98;
    arrayOfInt5[9] = 116;
    arrayOfInt5[12] = 102;
    arrayOfInt5[10] = 110;
    arrayOfInt5[13] = 114;
    sOutputEscapes128 = arrayOfInt5;
    int[] arrayOfInt6 = new int[''];
    sHexValues = arrayOfInt6;
    Arrays.fill(arrayOfInt6, -1);
    for (int i2 = 0; i2 < 10; i2++)
      sHexValues[(i2 + 48)] = i2;
    for (int i3 = 0; i3 < 6; i3++)
    {
      sHexValues[(i3 + 97)] = (i3 + 10);
      sHexValues[(i3 + 65)] = (i3 + 10);
    }
  }

  public static void appendQuoted(StringBuilder paramStringBuilder, String paramString)
  {
    int[] arrayOfInt = sOutputEscapes128;
    int i = arrayOfInt.length;
    int j = 0;
    int k = paramString.length();
    if (j < k)
    {
      int m = paramString.charAt(j);
      if ((m >= i) || (arrayOfInt[m] == 0))
        paramStringBuilder.append(m);
      while (true)
      {
        j++;
        break;
        paramStringBuilder.append('\\');
        int n = arrayOfInt[m];
        if (n < 0)
        {
          paramStringBuilder.append('u');
          paramStringBuilder.append('0');
          paramStringBuilder.append('0');
          int i1 = -(n + 1);
          paramStringBuilder.append(HEX_CHARS[(i1 >> 4)]);
          paramStringBuilder.append(HEX_CHARS[(i1 & 0xF)]);
        }
        else
        {
          paramStringBuilder.append((char)n);
        }
      }
    }
  }

  public static int charToHex(int paramInt)
  {
    if (paramInt > 127)
      return -1;
    return sHexValues[paramInt];
  }

  public static byte[] copyHexBytes()
  {
    return (byte[])HEX_BYTES.clone();
  }

  public static char[] copyHexChars()
  {
    return (char[])HEX_CHARS.clone();
  }

  public static final int[] get7BitOutputEscapes()
  {
    return sOutputEscapes128;
  }

  public static final int[] getInputCodeComment()
  {
    return sInputCodesComment;
  }

  public static final int[] getInputCodeLatin1()
  {
    return sInputCodes;
  }

  public static final int[] getInputCodeLatin1JsNames()
  {
    return sInputCodesJsNames;
  }

  public static final int[] getInputCodeUtf8()
  {
    return sInputCodesUtf8;
  }

  public static final int[] getInputCodeUtf8JsNames()
  {
    return sInputCodesUtf8JsNames;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.CharTypes
 * JD-Core Version:    0.6.2
 */