package android.support.v4.view;

final class o
  implements q
{
  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 1;
    int j;
    int k;
    if ((paramInt2 & 0x1) != 0)
    {
      j = i;
      k = paramInt3 | paramInt4;
      if ((k & 0x1) == 0)
        break label51;
    }
    while (true)
      if (j != 0)
      {
        if (i != 0)
        {
          throw new IllegalArgumentException("bad arguments");
          j = 0;
          break;
          label51: i = 0;
          continue;
        }
        paramInt1 &= (k ^ 0xFFFFFFFF);
      }
    while (i == 0)
      return paramInt1;
    return paramInt1 & (paramInt2 ^ 0xFFFFFFFF);
  }

  private static int c(int paramInt)
  {
    if ((paramInt & 0xC0) != 0);
    for (int i = paramInt | 0x1; ; i = paramInt)
    {
      if ((i & 0x30) != 0)
        i |= 2;
      return i & 0xF7;
    }
  }

  public final boolean a(int paramInt)
  {
    return a(a(0xF7 & c(paramInt), 1, 64, 128), 2, 16, 32) == 1;
  }

  public final boolean b(int paramInt)
  {
    return (0xF7 & c(paramInt)) == 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.o
 * JD-Core Version:    0.6.2
 */