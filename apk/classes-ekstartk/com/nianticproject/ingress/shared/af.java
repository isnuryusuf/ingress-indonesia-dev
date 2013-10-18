package com.nianticproject.ingress.shared;

public enum af
{
  private final String o;
  private final String p;
  private final int q;
  private final String r;

  static
  {
    af[] arrayOfaf = new af[14];
    arrayOfaf[0] = a;
    arrayOfaf[1] = b;
    arrayOfaf[2] = c;
    arrayOfaf[3] = d;
    arrayOfaf[4] = e;
    arrayOfaf[5] = f;
    arrayOfaf[6] = g;
    arrayOfaf[7] = h;
    arrayOfaf[8] = i;
    arrayOfaf[9] = j;
    arrayOfaf[10] = k;
    arrayOfaf[11] = l;
    arrayOfaf[12] = m;
    arrayOfaf[13] = n;
  }

  private af(String paramString1, int paramInt, String paramString2)
  {
    this(paramString1, paramString1, paramInt, paramString2);
  }

  private af(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    this.o = paramString1;
    this.p = paramString2;
    this.q = paramInt;
    this.r = paramString3;
  }

  public static af a(String paramString)
  {
    try
    {
      af localaf = valueOf(paramString);
      return localaf;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return n;
    }
    catch (NullPointerException localNullPointerException)
    {
      label8: break label8;
    }
  }

  public final String a()
  {
    return this.o;
  }

  public final String b()
  {
    return this.p;
  }

  public final int c()
  {
    return this.q;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.af
 * JD-Core Version:    0.6.2
 */