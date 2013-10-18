package com.google.a.a;

final class bf extends bh
{
  bf(be parambe, bb parambb, CharSequence paramCharSequence)
  {
    super(parambb, paramCharSequence);
  }

  public final int a(int paramInt)
  {
    int i = this.a.a.length();
    int j = this.b.length() - i;
    for (int k = paramInt; k <= j; k++)
      for (int m = 0; ; m++)
      {
        if (m >= i)
          break label85;
        if (this.b.charAt(m + k) != this.a.a.charAt(m))
          break;
      }
    k = -1;
    label85: return k;
  }

  public final int b(int paramInt)
  {
    return paramInt + this.a.a.length();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.bf
 * JD-Core Version:    0.6.2
 */