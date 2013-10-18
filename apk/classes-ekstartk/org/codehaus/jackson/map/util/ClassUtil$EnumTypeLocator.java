package org.codehaus.jackson.map.util;

import java.lang.reflect.Field;
import java.util.EnumMap;
import java.util.EnumSet;

class ClassUtil$EnumTypeLocator
{
  static final EnumTypeLocator instance = new EnumTypeLocator();
  private final Field enumMapTypeField = locateField(EnumMap.class, "elementType", Class.class);
  private final Field enumSetTypeField = locateField(EnumSet.class, "elementType", Class.class);

  private Object get(Object paramObject, Field paramField)
  {
    try
    {
      Object localObject = paramField.get(paramObject);
      return localObject;
    }
    catch (Exception localException)
    {
      throw new IllegalArgumentException(localException);
    }
  }

  private static Field locateField(Class<?> paramClass1, String paramString, Class<?> paramClass2)
  {
    Field[] arrayOfField = paramClass1.getDeclaredFields();
    int i = arrayOfField.length;
    int j = 0;
    Object localObject1;
    if (j < i)
    {
      localObject1 = arrayOfField[j];
      if ((!paramString.equals(((Field)localObject1).getName())) || (((Field)localObject1).getType() != paramClass2));
    }
    while (true)
    {
      Object localObject2;
      if (localObject1 == null)
      {
        k = arrayOfField.length;
        m = 0;
        localObject2 = localObject1;
        if (m < k)
        {
          localObject3 = arrayOfField[m];
          if (((Field)localObject3).getType() == paramClass2)
            if (localObject2 == null)
              break label105;
        }
      }
      for (localObject1 = null; localObject1 == null; localObject1 = localObject2)
        while (true)
        {
          int k;
          int m;
          return localObject1;
          j++;
          break;
          Object localObject3 = localObject2;
          label105: m++;
          localObject2 = localObject3;
        }
      try
      {
        ((Field)localObject1).setAccessible(true);
        return localObject1;
      }
      catch (Throwable localThrowable)
      {
        return localObject1;
      }
      localObject1 = null;
    }
  }

  public Class<? extends Enum<?>> enumTypeFor(EnumMap<?, ?> paramEnumMap)
  {
    if (this.enumMapTypeField != null)
      return (Class)get(paramEnumMap, this.enumMapTypeField);
    throw new IllegalStateException("Can not figure out type for EnumMap (odd JDK platform?)");
  }

  public Class<? extends Enum<?>> enumTypeFor(EnumSet<?> paramEnumSet)
  {
    if (this.enumSetTypeField != null)
      return (Class)get(paramEnumSet, this.enumSetTypeField);
    throw new IllegalStateException("Can not figure out type for EnumSet (odd JDK platform?)");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.ClassUtil.EnumTypeLocator
 * JD-Core Version:    0.6.2
 */