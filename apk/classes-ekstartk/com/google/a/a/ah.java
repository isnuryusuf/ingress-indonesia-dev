package com.google.a.a;

public final class ah
{
  private final String a;
  private ai b = new ai((byte)0);
  private ai c = this.b;
  private boolean d = false;

  private ah(String paramString)
  {
    this.a = ((String)an.a(paramString));
  }

  private ai a()
  {
    ai localai = new ai((byte)0);
    this.c.c = localai;
    this.c = localai;
    return localai;
  }

  private ah b(String paramString, Object paramObject)
  {
    ai localai = a();
    localai.b = paramObject;
    localai.a = ((String)an.a(paramString));
    return this;
  }

  public final ah a(Object paramObject)
  {
    a().b = paramObject;
    return this;
  }

  public final ah a(String paramString, int paramInt)
  {
    return b(paramString, String.valueOf(paramInt));
  }

  public final ah a(String paramString, long paramLong)
  {
    return b(paramString, String.valueOf(paramLong));
  }

  public final ah a(String paramString, Object paramObject)
  {
    return b(paramString, paramObject);
  }

  public final ah a(String paramString, boolean paramBoolean)
  {
    return b(paramString, String.valueOf(paramBoolean));
  }

  public final String toString()
  {
    boolean bool = this.d;
    StringBuilder localStringBuilder = new StringBuilder(32).append(this.a).append('{');
    ai localai1 = this.b.c;
    String str = "";
    for (ai localai2 = localai1; localai2 != null; localai2 = localai2.c)
      if ((!bool) || (localai2.b != null))
      {
        localStringBuilder.append(str);
        str = ", ";
        if (localai2.a != null)
          localStringBuilder.append(localai2.a).append('=');
        localStringBuilder.append(localai2.b);
      }
    return '}';
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.ah
 * JD-Core Version:    0.6.2
 */