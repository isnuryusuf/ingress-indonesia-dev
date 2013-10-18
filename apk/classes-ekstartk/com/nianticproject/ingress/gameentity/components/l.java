package com.nianticproject.ingress.gameentity.components;

public enum l
{
  private final String g;
  private final int h;

  static
  {
    l[] arrayOfl = new l[6];
    arrayOfl[0] = a;
    arrayOfl[1] = b;
    arrayOfl[2] = c;
    arrayOfl[3] = d;
    arrayOfl[4] = e;
    arrayOfl[5] = f;
  }

  private l(String paramString, int paramInt)
  {
    this.g = paramString;
    this.h = paramInt;
  }

  public static l a(String paramString)
  {
    try
    {
      l locall = valueOf(paramString);
      return locall;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return a;
    }
    catch (NullPointerException localNullPointerException)
    {
      label8: break label8;
    }
  }

  public final String a()
  {
    return this.g;
  }

  public final int b()
  {
    return this.h;
  }

  public final int c()
  {
    return 1 + this.h;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.l
 * JD-Core Version:    0.6.2
 */