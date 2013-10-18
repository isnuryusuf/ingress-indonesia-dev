package org.codehaus.jackson.map.util;

import org.codehaus.jackson.io.SerializedString;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.type.JavaType;

public class RootNameLookup
{
  protected LRUMap<ClassKey, SerializedString> _rootNames;

  public SerializedString findRootName(Class<?> paramClass, MapperConfig<?> paramMapperConfig)
  {
    while (true)
    {
      String str1;
      try
      {
        ClassKey localClassKey = new ClassKey(paramClass);
        SerializedString localSerializedString;
        if (this._rootNames == null)
        {
          this._rootNames = new LRUMap(20, 200);
          BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)paramMapperConfig.introspectClassAnnotations(paramClass);
          str1 = paramMapperConfig.getAnnotationIntrospector().findRootName(localBasicBeanDescription.getClassInfo());
          if (str1 == null)
          {
            str2 = paramClass.getSimpleName();
            localSerializedString = new SerializedString(str2);
            this._rootNames.put(localClassKey, localSerializedString);
            return localSerializedString;
          }
        }
        else
        {
          localSerializedString = (SerializedString)this._rootNames.get(localClassKey);
          if (localSerializedString == null)
            continue;
          continue;
        }
      }
      finally
      {
      }
      String str2 = str1;
    }
  }

  public SerializedString findRootName(JavaType paramJavaType, MapperConfig<?> paramMapperConfig)
  {
    return findRootName(paramJavaType.getRawClass(), paramMapperConfig);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.RootNameLookup
 * JD-Core Version:    0.6.2
 */