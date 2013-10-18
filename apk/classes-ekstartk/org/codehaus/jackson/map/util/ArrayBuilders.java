package org.codehaus.jackson.map.util;

import java.lang.reflect.Array;
import java.util.HashSet;

public final class ArrayBuilders
{
  ArrayBuilders.BooleanBuilder _booleanBuilder = null;
  ArrayBuilders.ByteBuilder _byteBuilder = null;
  ArrayBuilders.DoubleBuilder _doubleBuilder = null;
  ArrayBuilders.FloatBuilder _floatBuilder = null;
  ArrayBuilders.IntBuilder _intBuilder = null;
  ArrayBuilders.LongBuilder _longBuilder = null;
  ArrayBuilders.ShortBuilder _shortBuilder = null;

  public static <T> Iterable<T> arrayAsIterable(T[] paramArrayOfT)
  {
    return new ArrayBuilders.ArrayIterator(paramArrayOfT);
  }

  public static <T> HashSet<T> arrayToSet(T[] paramArrayOfT)
  {
    HashSet localHashSet = new HashSet();
    if (paramArrayOfT != null)
    {
      int i = paramArrayOfT.length;
      for (int j = 0; j < i; j++)
        localHashSet.add(paramArrayOfT[j]);
    }
    return localHashSet;
  }

  public static <T> T[] insertInListNoDup(T[] paramArrayOfT, T paramT)
  {
    int i = paramArrayOfT.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfT[j] == paramT)
      {
        if (j == 0)
          return paramArrayOfT;
        Object[] arrayOfObject2 = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), i);
        System.arraycopy(paramArrayOfT, 0, arrayOfObject2, 1, j);
        paramArrayOfT[0] = paramT;
        return arrayOfObject2;
      }
    Object[] arrayOfObject1 = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), i + 1);
    if (i > 0)
      System.arraycopy(paramArrayOfT, 0, arrayOfObject1, 1, i);
    arrayOfObject1[0] = paramT;
    return arrayOfObject1;
  }

  public final ArrayBuilders.BooleanBuilder getBooleanBuilder()
  {
    if (this._booleanBuilder == null)
      this._booleanBuilder = new ArrayBuilders.BooleanBuilder();
    return this._booleanBuilder;
  }

  public final ArrayBuilders.ByteBuilder getByteBuilder()
  {
    if (this._byteBuilder == null)
      this._byteBuilder = new ArrayBuilders.ByteBuilder();
    return this._byteBuilder;
  }

  public final ArrayBuilders.DoubleBuilder getDoubleBuilder()
  {
    if (this._doubleBuilder == null)
      this._doubleBuilder = new ArrayBuilders.DoubleBuilder();
    return this._doubleBuilder;
  }

  public final ArrayBuilders.FloatBuilder getFloatBuilder()
  {
    if (this._floatBuilder == null)
      this._floatBuilder = new ArrayBuilders.FloatBuilder();
    return this._floatBuilder;
  }

  public final ArrayBuilders.IntBuilder getIntBuilder()
  {
    if (this._intBuilder == null)
      this._intBuilder = new ArrayBuilders.IntBuilder();
    return this._intBuilder;
  }

  public final ArrayBuilders.LongBuilder getLongBuilder()
  {
    if (this._longBuilder == null)
      this._longBuilder = new ArrayBuilders.LongBuilder();
    return this._longBuilder;
  }

  public final ArrayBuilders.ShortBuilder getShortBuilder()
  {
    if (this._shortBuilder == null)
      this._shortBuilder = new ArrayBuilders.ShortBuilder();
    return this._shortBuilder;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.ArrayBuilders
 * JD-Core Version:    0.6.2
 */