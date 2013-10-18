package com.nianticproject.ingress.common.s;

import java.util.Map;

public final class f
{
  final Map<String, ?> a;

  public f(Map<String, ?> paramMap)
  {
    this.a = paramMap;
  }

  public final String a(String paramString)
  {
    return (String)this.a.get(paramString);
  }

  public final String a(String paramString1, String paramString2)
  {
    String str = (String)this.a.get(paramString1);
    if (str == null)
      return paramString2;
    return str;
  }

  public final long b(String paramString)
  {
    Long localLong = (Long)this.a.get(paramString);
    if (localLong == null)
      return 0L;
    return localLong.longValue();
  }

  public final int c(String paramString)
  {
    Integer localInteger = (Integer)this.a.get(paramString);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.s.f
 * JD-Core Version:    0.6.2
 */