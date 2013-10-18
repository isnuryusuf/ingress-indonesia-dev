package org.codehaus.jackson.map.util;

import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import org.codehaus.jackson.io.SerializedString;
import org.codehaus.jackson.map.AnnotationIntrospector;

public final class EnumValues
{
  private final EnumMap<?, SerializedString> _values;

  private EnumValues(Map<Enum<?>, SerializedString> paramMap)
  {
    this._values = new EnumMap(paramMap);
  }

  public static EnumValues construct(Class<Enum<?>> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    return constructFromName(paramClass, paramAnnotationIntrospector);
  }

  public static EnumValues constructFromName(Class<Enum<?>> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    Enum[] arrayOfEnum = (Enum[])ClassUtil.findEnumType(paramClass).getEnumConstants();
    if (arrayOfEnum != null)
    {
      HashMap localHashMap = new HashMap();
      int i = arrayOfEnum.length;
      for (int j = 0; j < i; j++)
      {
        Enum localEnum = arrayOfEnum[j];
        localHashMap.put(localEnum, new SerializedString(paramAnnotationIntrospector.findEnumValue(localEnum)));
      }
      return new EnumValues(localHashMap);
    }
    throw new IllegalArgumentException("Can not determine enum constants for Class " + paramClass.getName());
  }

  public static EnumValues constructFromToString(Class<Enum<?>> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    Enum[] arrayOfEnum = (Enum[])ClassUtil.findEnumType(paramClass).getEnumConstants();
    if (arrayOfEnum != null)
    {
      HashMap localHashMap = new HashMap();
      int i = arrayOfEnum.length;
      for (int j = 0; j < i; j++)
      {
        Enum localEnum = arrayOfEnum[j];
        localHashMap.put(localEnum, new SerializedString(localEnum.toString()));
      }
      return new EnumValues(localHashMap);
    }
    throw new IllegalArgumentException("Can not determine enum constants for Class " + paramClass.getName());
  }

  public final SerializedString serializedValueFor(Enum<?> paramEnum)
  {
    return (SerializedString)this._values.get(paramEnum);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.EnumValues
 * JD-Core Version:    0.6.2
 */