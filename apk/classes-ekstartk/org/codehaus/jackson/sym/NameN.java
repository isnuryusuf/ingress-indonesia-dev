package org.codehaus.jackson.sym;

public final class NameN extends Name
{
  final int mQuadLen;
  final int[] mQuads;

  NameN(String paramString, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    super(paramString, paramInt1);
    if (paramInt2 < 3)
      throw new IllegalArgumentException("Qlen must >= 3");
    this.mQuads = paramArrayOfInt;
    this.mQuadLen = paramInt2;
  }

  public final boolean equals(int paramInt)
  {
    return false;
  }

  public final boolean equals(int paramInt1, int paramInt2)
  {
    return false;
  }

  public final boolean equals(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt != this.mQuadLen)
      return false;
    for (int i = 0; ; i++)
    {
      if (i >= paramInt)
        break label35;
      if (paramArrayOfInt[i] != this.mQuads[i])
        break;
    }
    label35: return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.sym.NameN
 * JD-Core Version:    0.6.2
 */