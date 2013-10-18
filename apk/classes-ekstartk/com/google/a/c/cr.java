package com.google.a.c;

import com.google.a.a.an;
import java.util.Map;

public final class cr<B> extends bp<Class<? extends B>, B>
  implements ar<B>
{
  private final dh<Class<? extends B>, B> a;

  private cr(dh<Class<? extends B>, B> paramdh)
  {
    this.a = paramdh;
  }

  public static <B, S extends B> cr<B> a(Map<? extends Class<? extends S>, ? extends S> paramMap)
  {
    if ((paramMap instanceof cr))
      return (cr)paramMap;
    return new cs().a(paramMap).a();
  }

  public final <T extends B> T a(Class<T> paramClass)
  {
    return this.a.get(an.a(paramClass));
  }

  protected final Map<Class<? extends B>, B> a()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cr
 * JD-Core Version:    0.6.2
 */