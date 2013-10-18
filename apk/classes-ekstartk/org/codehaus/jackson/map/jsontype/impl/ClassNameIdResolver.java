package org.codehaus.jackson.map.jsontype.impl;

import java.util.EnumMap;
import java.util.EnumSet;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

public class ClassNameIdResolver extends TypeIdResolverBase
{
  public ClassNameIdResolver(JavaType paramJavaType, TypeFactory paramTypeFactory)
  {
    super(paramJavaType, paramTypeFactory);
  }

  protected final String _idFrom(Object paramObject, Class<?> paramClass)
  {
    if ((Enum.class.isAssignableFrom(paramClass)) && (!paramClass.isEnum()))
      paramClass = paramClass.getSuperclass();
    String str1 = paramClass.getName();
    if (str1.startsWith("java.util"))
      if ((paramObject instanceof EnumSet))
      {
        localClass2 = ClassUtil.findEnumType((EnumSet)paramObject);
        str1 = TypeFactory.defaultInstance().constructCollectionType(EnumSet.class, localClass2).toCanonical();
      }
    while ((str1.indexOf('$') < 0) || (ClassUtil.getOuterClass(paramClass) == null) || (ClassUtil.getOuterClass(this._baseType.getRawClass()) != null))
    {
      String str2;
      do
      {
        Class localClass2;
        return str1;
        if ((paramObject instanceof EnumMap))
        {
          Class localClass1 = ClassUtil.findEnumType((EnumMap)paramObject);
          return TypeFactory.defaultInstance().constructMapType(EnumMap.class, localClass1, Object.class).toCanonical();
        }
        str2 = str1.substring(9);
      }
      while (((!str2.startsWith(".Arrays$")) && (!str2.startsWith(".Collections$"))) || (str1.indexOf("List") < 0));
      return "java.util.ArrayList";
    }
    return this._baseType.getRawClass().getName();
  }

  public String idFromValue(Object paramObject)
  {
    return _idFrom(paramObject, paramObject.getClass());
  }

  public String idFromValueAndType(Object paramObject, Class<?> paramClass)
  {
    return _idFrom(paramObject, paramClass);
  }

  public JavaType typeFromId(String paramString)
  {
    if (paramString.indexOf('<') > 0)
      return TypeFactory.fromCanonical(paramString);
    try
    {
      Class localClass = Class.forName(paramString, true, Thread.currentThread().getContextClassLoader());
      JavaType localJavaType = this._typeFactory.constructSpecializedType(this._baseType, localClass);
      return localJavaType;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new IllegalArgumentException("Invalid type id '" + paramString + "' (for id type 'Id.class'): no such class found");
    }
    catch (Exception localException)
    {
      throw new IllegalArgumentException("Invalid type id '" + paramString + "' (for id type 'Id.class'): " + localException.getMessage(), localException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.ClassNameIdResolver
 * JD-Core Version:    0.6.2
 */