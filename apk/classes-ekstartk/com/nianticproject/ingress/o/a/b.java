package com.nianticproject.ingress.o.a;

public enum b
{
  private final String c;
  private final String d;
  private final boolean e;

  static
  {
    b[] arrayOfb = new b[2];
    arrayOfb[0] = a;
    arrayOfb[1] = b;
  }

  private b(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, (byte)0);
  }

  private b(String paramString1, String paramString2, boolean paramBoolean, byte paramByte1, byte paramByte2)
  {
    this.c = paramString1;
    this.d = paramString2;
    this.e = true;
  }

  public final String a()
  {
    if (this.e)
      return c.a(this.c, this.d);
    return this.d;
  }

  public final boolean b()
  {
    return "TRUE".equalsIgnoreCase(a());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.a.b
 * JD-Core Version:    0.6.2
 */