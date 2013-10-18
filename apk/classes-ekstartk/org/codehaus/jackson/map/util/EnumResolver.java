package org.codehaus.jackson.map.util;

import java.util.HashMap;
import org.codehaus.jackson.map.AnnotationIntrospector;

public class EnumResolver<T extends Enum<T>>
{
  protected final Class<T> _enumClass;
  protected final T[] _enums;
  protected final HashMap<String, T> _enumsById;

  protected EnumResolver(Class<T> paramClass, T[] paramArrayOfT, HashMap<String, T> paramHashMap)
  {
    this._enumClass = paramClass;
    this._enums = paramArrayOfT;
    this._enumsById = paramHashMap;
  }

  public static <ET extends Enum<ET>> EnumResolver<ET> constructFor(Class<ET> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    if (arrayOfEnum == null)
      throw new IllegalArgumentException("No enum constants for class " + paramClass.getName());
    HashMap localHashMap = new HashMap();
    int i = arrayOfEnum.length;
    for (int j = 0; j < i; j++)
    {
      Enum localEnum = arrayOfEnum[j];
      localHashMap.put(paramAnnotationIntrospector.findEnumValue(localEnum), localEnum);
    }
    return new EnumResolver(paramClass, arrayOfEnum, localHashMap);
  }

  public static EnumResolver<?> constructUnsafe(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    return constructFor(paramClass, paramAnnotationIntrospector);
  }

  public static EnumResolver<?> constructUnsafeUsingToString(Class<?> paramClass)
  {
    return constructUsingToString(paramClass);
  }

  public static <ET extends Enum<ET>> EnumResolver<ET> constructUsingToString(Class<ET> paramClass)
  {
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    HashMap localHashMap = new HashMap();
    int i = arrayOfEnum.length;
    while (true)
    {
      i--;
      if (i < 0)
        break;
      Enum localEnum = arrayOfEnum[i];
      localHashMap.put(localEnum.toString(), localEnum);
    }
    return new EnumResolver(paramClass, arrayOfEnum, localHashMap);
  }

  public T findEnum(String paramString)
  {
    return (Enum)this._enumsById.get(paramString);
  }

  public T getEnum(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this._enums.length))
      return null;
    return this._enums[paramInt];
  }

  public Class<T> getEnumClass()
  {
    return this._enumClass;
  }

  public int lastValidIndex()
  {
    return -1 + this._enums.length;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.EnumResolver
 * JD-Core Version:    0.6.2
 */