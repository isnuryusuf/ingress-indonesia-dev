package com.google.f;

public final class h
{
  public static boolean a(c paramc)
  {
    int i = paramc.a();
    int j = 0;
    while (true)
    {
      int k;
      int n;
      if (j < i)
      {
        k = j + 1;
        int m = 0xFF & paramc.a(j);
        if (m >= 128)
        {
          if ((m < 194) || (m > 244))
            return false;
          if (k >= i)
            return false;
          n = k + 1;
          int i1 = 0xFF & paramc.a(k);
          if ((i1 < 128) || (i1 > 191))
            return false;
          if (m > 223)
          {
            if (n >= i)
              return false;
            j = n + 1;
            int i2 = 0xFF & paramc.a(n);
            if ((i2 < 128) || (i2 > 191))
              return false;
            if (m <= 239)
            {
              if (((m != 224) || (i1 >= 160)) && ((m != 237) || (i1 <= 159)))
                continue;
              return false;
            }
            if (j >= i)
              return false;
            n = j + 1;
            int i3 = 0xFF & paramc.a(j);
            if ((i3 < 128) || (i3 > 191))
              return false;
            if (((m == 240) && (i1 < 144)) || ((m == 244) && (i1 > 143)))
              return false;
          }
        }
      }
      else
      {
        return true;
        j = n;
        continue;
        j = k;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.f.h
 * JD-Core Version:    0.6.2
 */