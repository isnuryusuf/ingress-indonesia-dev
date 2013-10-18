package com.google.a.b;

 enum w
{
  static final w[] i = arrayOfw2;

  static
  {
    w[] arrayOfw1 = new w[8];
    arrayOfw1[0] = a;
    arrayOfw1[1] = b;
    arrayOfw1[2] = c;
    arrayOfw1[3] = d;
    arrayOfw1[4] = e;
    arrayOfw1[5] = f;
    arrayOfw1[6] = g;
    arrayOfw1[7] = h;
    j = arrayOfw1;
    w[] arrayOfw2 = new w[8];
    arrayOfw2[0] = a;
    arrayOfw2[1] = b;
    arrayOfw2[2] = c;
    arrayOfw2[3] = d;
    arrayOfw2[4] = e;
    arrayOfw2[5] = f;
    arrayOfw2[6] = g;
    arrayOfw2[7] = h;
  }

  static w a(at paramat, boolean paramBoolean1, boolean paramBoolean2)
  {
    int k;
    if (paramat == at.c)
    {
      k = 4;
      if (!paramBoolean1)
        break label51;
    }
    label51: for (int m = 1; ; m = 0)
    {
      int n = m | k;
      int i1 = 0;
      if (paramBoolean2)
        i1 = 2;
      int i2 = i1 | n;
      return i[i2];
      k = 0;
      break;
    }
  }

  static <K, V> void a(ap<K, V> paramap1, ap<K, V> paramap2)
  {
    paramap2.a(paramap1.e());
    o.a(paramap1.g(), paramap2);
    o.a(paramap2, paramap1.f());
    o.b(paramap1);
  }

  static <K, V> void b(ap<K, V> paramap1, ap<K, V> paramap2)
  {
    paramap2.b(paramap1.h());
    o.b(paramap1.j(), paramap2);
    o.b(paramap2, paramap1.i());
    o.c(paramap1);
  }

  <K, V> ap<K, V> a(aq<K, V> paramaq, ap<K, V> paramap1, ap<K, V> paramap2)
  {
    return a(paramaq, paramap1.d(), paramap1.c(), paramap2);
  }

  abstract <K, V> ap<K, V> a(aq<K, V> paramaq, K paramK, int paramInt, ap<K, V> paramap);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.w
 * JD-Core Version:    0.6.2
 */