package com.google.a.a;

import java.util.Arrays;

final class v extends f
{
  private final char[] p;
  private final char[] q;

  v(String paramString, char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    super(paramString);
    this.p = paramArrayOfChar1;
    this.q = paramArrayOfChar2;
    boolean bool1;
    int i;
    label33: boolean bool2;
    if (paramArrayOfChar1.length == paramArrayOfChar2.length)
    {
      bool1 = true;
      an.a(bool1);
      i = 0;
      if (i >= paramArrayOfChar1.length)
        return;
      if (paramArrayOfChar1[i] > paramArrayOfChar2[i])
        break label101;
      bool2 = true;
      label54: an.a(bool2);
      if (i + 1 < paramArrayOfChar1.length)
        if (paramArrayOfChar2[i] >= paramArrayOfChar1[(i + 1)])
          break label107;
    }
    label101: label107: for (boolean bool3 = true; ; bool3 = false)
    {
      an.a(bool3);
      i++;
      break label33;
      bool1 = false;
      break;
      bool2 = false;
      break label54;
    }
  }

  public final boolean b(char paramChar)
  {
    int i = Arrays.binarySearch(this.p, paramChar);
    if (i >= 0);
    int j;
    do
    {
      return true;
      j = -1 + (i ^ 0xFFFFFFFF);
    }
    while ((j >= 0) && (paramChar <= this.q[j]));
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.v
 * JD-Core Version:    0.6.2
 */