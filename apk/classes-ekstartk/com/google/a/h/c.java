package com.google.a.h;

import com.google.a.a.an;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class c
{
  private static final Map<Class<?>, Class<?>> a = Collections.unmodifiableMap(localHashMap1);
  private static final Map<Class<?>, Class<?>> b = Collections.unmodifiableMap(localHashMap2);

  static
  {
    HashMap localHashMap1 = new HashMap(16);
    HashMap localHashMap2 = new HashMap(16);
    a(localHashMap1, localHashMap2, Boolean.TYPE, Boolean.class);
    a(localHashMap1, localHashMap2, Byte.TYPE, Byte.class);
    a(localHashMap1, localHashMap2, Character.TYPE, Character.class);
    a(localHashMap1, localHashMap2, Double.TYPE, Double.class);
    a(localHashMap1, localHashMap2, Float.TYPE, Float.class);
    a(localHashMap1, localHashMap2, Integer.TYPE, Integer.class);
    a(localHashMap1, localHashMap2, Long.TYPE, Long.class);
    a(localHashMap1, localHashMap2, Short.TYPE, Short.class);
    a(localHashMap1, localHashMap2, Void.TYPE, Void.class);
  }

  public static <T> Class<T> a(Class<T> paramClass)
  {
    an.a(paramClass);
    Class localClass = (Class)a.get(paramClass);
    if (localClass == null)
      return paramClass;
    return localClass;
  }

  private static void a(Map<Class<?>, Class<?>> paramMap1, Map<Class<?>, Class<?>> paramMap2, Class<?> paramClass1, Class<?> paramClass2)
  {
    paramMap1.put(paramClass1, paramClass2);
    paramMap2.put(paramClass2, paramClass1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.h.c
 * JD-Core Version:    0.6.2
 */