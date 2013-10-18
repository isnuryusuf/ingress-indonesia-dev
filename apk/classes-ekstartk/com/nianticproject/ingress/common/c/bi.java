package com.nianticproject.ingress.common.c;

public final class bi
{
  private final ba a;
  private final String b;
  private final boolean c;

  public bi(ba paramba)
  {
    this(paramba, paramba.a().toString(), false);
  }

  public bi(ba paramba, byte paramByte)
  {
    this(paramba, paramba.a().toString(), true);
  }

  private bi(ba paramba, String paramString, boolean paramBoolean)
  {
    this.a = paramba;
    this.b = paramString;
    this.c = paramBoolean;
  }

  public final ba a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final boolean c()
  {
    return this.c;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    bi localbi;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!(paramObject instanceof bi))
        return false;
      localbi = (bi)paramObject;
      if (!this.b.equals(localbi.b))
        return false;
      if (this.c != localbi.c)
        return false;
    }
    while (this.a == localbi.a);
    return false;
  }

  public final int hashCode()
  {
    int i;
    int k;
    label26: int m;
    int n;
    if (this.b == null)
    {
      i = 0;
      int j = 31 * (i + 31);
      if (!this.c)
        break label65;
      k = 1;
      m = 31 * (k + j);
      ba localba = this.a;
      n = 0;
      if (localba != null)
        break label70;
    }
    while (true)
    {
      return m + n;
      i = this.b.hashCode();
      break;
      label65: k = 0;
      break label26;
      label70: n = this.a.hashCode();
    }
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    return String.format("{asset=%s id=%s}", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.bi
 * JD-Core Version:    0.6.2
 */