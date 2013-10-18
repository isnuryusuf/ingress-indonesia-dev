package com.nianticproject.ingress.gameentity.components;

public enum m
{
  private final String l;
  private final o m;
  private final int n;

  static
  {
    m[] arrayOfm = new m[11];
    arrayOfm[0] = a;
    arrayOfm[1] = b;
    arrayOfm[2] = c;
    arrayOfm[3] = d;
    arrayOfm[4] = e;
    arrayOfm[5] = f;
    arrayOfm[6] = g;
    arrayOfm[7] = h;
    arrayOfm[8] = i;
    arrayOfm[9] = j;
    arrayOfm[10] = k;
  }

  private m(String paramString, int paramInt, o paramo)
  {
    this.l = paramString;
    this.m = paramo;
    this.n = paramInt;
  }

  public static m a(String paramString)
  {
    try
    {
      m localm = valueOf(paramString);
      return localm;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return f;
    }
    catch (NullPointerException localNullPointerException)
    {
      label8: break label8;
    }
  }

  public final o a()
  {
    return this.m;
  }

  public final String a(long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    float f1 = (float)paramLong / this.n;
    switch (n.a[this.m.ordinal()])
    {
    default:
      if (f1 == (int)f1)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf((int)f1);
        localStringBuilder.append(String.format("%d", arrayOfObject2));
      }
      break;
    case 1:
    }
    while (true)
    {
      localStringBuilder.append(this.m.a());
      return localStringBuilder.toString();
      f1 *= 100.0F;
      break;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Float.valueOf(f1);
      localStringBuilder.append(String.format("%.1f", arrayOfObject1));
    }
  }

  public final int b()
  {
    return this.n;
  }

  public final String b(long paramLong)
  {
    if (paramLong < 0L);
    for (String str = ""; ; str = "+")
      return str + a(paramLong);
  }

  public final String c()
  {
    return this.l;
  }

  public final boolean d()
  {
    switch (n.b[ordinal()])
    {
    default:
      return false;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    }
    return true;
  }

  public final boolean e()
  {
    switch (n.b[ordinal()])
    {
    default:
      return false;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.m
 * JD-Core Version:    0.6.2
 */