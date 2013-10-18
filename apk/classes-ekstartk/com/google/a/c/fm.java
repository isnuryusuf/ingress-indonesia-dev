package com.google.a.c;

 enum fm
{
  static final fm[][] i = arrayOffm;;

  static
  {
    fm[] arrayOffm1 = new fm[8];
    arrayOffm1[0] = a;
    arrayOffm1[1] = b;
    arrayOffm1[2] = c;
    arrayOffm1[3] = d;
    arrayOffm1[4] = e;
    arrayOffm1[5] = f;
    arrayOffm1[6] = g;
    arrayOffm1[7] = h;
    j = arrayOffm1;
    fm[][] arrayOffm; = new fm[3][];
    fm[] arrayOffm2 = new fm[4];
    arrayOffm2[0] = a;
    arrayOffm2[1] = b;
    arrayOffm2[2] = c;
    arrayOffm2[3] = d;
    arrayOffm;[0] = arrayOffm2;
    arrayOffm;[1] = new fm[0];
    fm[] arrayOffm3 = new fm[4];
    arrayOffm3[0] = e;
    arrayOffm3[1] = f;
    arrayOffm3[2] = g;
    arrayOffm3[3] = h;
    arrayOffm;[2] = arrayOffm3;
  }

  static fm a(gk paramgk, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1);
    for (int k = 1; ; k = 0)
    {
      int m = 0;
      if (paramBoolean2)
        m = 2;
      int n = m | k;
      return i[paramgk.ordinal()][n];
    }
  }

  static <K, V> void a(gh<K, V> paramgh1, gh<K, V> paramgh2)
  {
    paramgh2.a(paramgh1.e());
    fi.a(paramgh1.g(), paramgh2);
    fi.a(paramgh2, paramgh1.f());
    fi.d(paramgh1);
  }

  static <K, V> void b(gh<K, V> paramgh1, gh<K, V> paramgh2)
  {
    fi.b(paramgh1.i(), paramgh2);
    fi.b(paramgh2, paramgh1.h());
    fi.e(paramgh1);
  }

  <K, V> gh<K, V> a(gi<K, V> paramgi, gh<K, V> paramgh1, gh<K, V> paramgh2)
  {
    return a(paramgi, paramgh1.d(), paramgh1.c(), paramgh2);
  }

  abstract <K, V> gh<K, V> a(gi<K, V> paramgi, K paramK, int paramInt, gh<K, V> paramgh);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.fm
 * JD-Core Version:    0.6.2
 */