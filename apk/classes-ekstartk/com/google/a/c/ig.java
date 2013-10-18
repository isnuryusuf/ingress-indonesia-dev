package com.google.a.c;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

public final class ig
{
  static final Object[] a = new Object[0];

  static Object a(Object paramObject, int paramInt)
  {
    if (paramObject == null)
      throw new NullPointerException("at index " + paramInt);
    return paramObject;
  }

  static <T> T[] a(Collection<?> paramCollection, T[] paramArrayOfT)
  {
    int i = paramCollection.size();
    if (paramArrayOfT.length < i)
      paramArrayOfT = a(paramArrayOfT, i);
    int j = 0;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      int k = j + 1;
      paramArrayOfT[j] = localObject;
      j = k;
    }
    if (paramArrayOfT.length > i)
      paramArrayOfT[i] = null;
    return paramArrayOfT;
  }

  static Object[] a(Object[] paramArrayOfObject)
  {
    return c(paramArrayOfObject, paramArrayOfObject.length);
  }

  public static <T> T[] a(T[] paramArrayOfT, int paramInt)
  {
    return (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), paramInt);
  }

  static <T> T[] b(T[] paramArrayOfT, int paramInt)
  {
    Object[] arrayOfObject = a(paramArrayOfT, paramInt);
    System.arraycopy(paramArrayOfT, 0, arrayOfObject, 0, Math.min(paramArrayOfT.length, paramInt));
    return arrayOfObject;
  }

  static Object[] c(Object[] paramArrayOfObject, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      a(paramArrayOfObject[i], i);
    return paramArrayOfObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ig
 * JD-Core Version:    0.6.2
 */