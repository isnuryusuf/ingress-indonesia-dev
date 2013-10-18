package com.google.a.c;

import com.google.a.h.c;
import java.util.HashMap;
import java.util.Map;

public final class id<B> extends ex<Class<? extends B>, B>
  implements ar<B>
{
  private static final er<Class<?>, Object> b = new ie();

  private id(Map<Class<? extends B>, B> paramMap)
  {
    super(paramMap, b);
  }

  public static <B> id<B> b()
  {
    return new id(new HashMap());
  }

  private static <B, T extends B> T b(Class<T> paramClass, B paramB)
  {
    return c.a(paramClass).cast(paramB);
  }

  public final <T extends B> T a(Class<T> paramClass)
  {
    return b(paramClass, get(paramClass));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.id
 * JD-Core Version:    0.6.2
 */