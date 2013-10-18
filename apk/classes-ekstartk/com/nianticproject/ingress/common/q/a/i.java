package com.nianticproject.ingress.common.q.a;

final class i
{
  int a = 0;
  short[] b = new short[''];

  i(g paramg)
  {
  }

  final void a(short[] paramArrayOfShort)
  {
    int i = 0;
    int j = this.a + paramArrayOfShort.length;
    int k = this.b.length;
    while (j > k)
      k += (k >> 1);
    if (k != this.b.length)
    {
      short[] arrayOfShort2 = new short[k];
      System.arraycopy(this.b, 0, arrayOfShort2, 0, this.b.length);
      this.b = arrayOfShort2;
    }
    int m = paramArrayOfShort.length;
    while (i < m)
    {
      int n = paramArrayOfShort[i];
      short[] arrayOfShort1 = this.b;
      int i1 = this.a;
      this.a = (i1 + 1);
      arrayOfShort1[i1] = n;
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.a.i
 * JD-Core Version:    0.6.2
 */