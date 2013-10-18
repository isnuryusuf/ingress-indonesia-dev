package com.google.a.a;

import java.util.Arrays;

public final class ag
{
  public static int a(Object[] paramArrayOfObject)
  {
    return Arrays.hashCode(paramArrayOfObject);
  }

  public static ah a(Class<?> paramClass)
  {
    return new ah(b(paramClass), (byte)0);
  }

  public static ah a(Object paramObject)
  {
    return new ah(b(paramObject.getClass()), (byte)0);
  }

  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public static <T> T b(T paramT1, T paramT2)
  {
    if (paramT1 != null)
      return paramT1;
    return an.a(paramT2);
  }

  private static String b(Class<?> paramClass)
  {
    String str = paramClass.getName().replaceAll("\\$[0-9]+", "\\$");
    int i = str.lastIndexOf('$');
    if (i == -1)
      i = str.lastIndexOf('.');
    return str.substring(i + 1);
  }

  public static boolean c(Object paramObject1, Object paramObject2)
  {
    return Arrays.deepEquals(new Object[] { paramObject1 }, new Object[] { paramObject2 });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.ag
 * JD-Core Version:    0.6.2
 */