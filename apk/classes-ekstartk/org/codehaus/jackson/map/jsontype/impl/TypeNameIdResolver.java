package org.codehaus.jackson.map.jsontype.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.jsontype.NamedType;
import org.codehaus.jackson.type.JavaType;

public class TypeNameIdResolver extends TypeIdResolverBase
{
  protected final MapperConfig<?> _config;
  protected final HashMap<String, JavaType> _idToType;
  protected final HashMap<String, String> _typeToId;

  protected TypeNameIdResolver(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, HashMap<String, String> paramHashMap, HashMap<String, JavaType> paramHashMap1)
  {
    super(paramJavaType, paramMapperConfig.getTypeFactory());
    this._config = paramMapperConfig;
    this._typeToId = paramHashMap;
    this._idToType = paramHashMap1;
  }

  protected static String _defaultTypeId(Class<?> paramClass)
  {
    String str = paramClass.getName();
    int i = str.lastIndexOf('.');
    if (i < 0)
      return str;
    return str.substring(i + 1);
  }

  public static TypeNameIdResolver construct(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, Collection<NamedType> paramCollection, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == paramBoolean2)
      throw new IllegalArgumentException();
    if (paramBoolean1);
    for (HashMap localHashMap1 = new HashMap(); ; localHashMap1 = null)
    {
      if (paramBoolean2);
      for (HashMap localHashMap2 = new HashMap(); ; localHashMap2 = null)
      {
        if (paramCollection != null)
        {
          Iterator localIterator = paramCollection.iterator();
          if (localIterator.hasNext())
          {
            NamedType localNamedType = (NamedType)localIterator.next();
            Class localClass = localNamedType.getType();
            if (localNamedType.hasName());
            for (String str = localNamedType.getName(); ; str = _defaultTypeId(localClass))
            {
              if (paramBoolean1)
                localHashMap1.put(localClass.getName(), str);
              if (!paramBoolean2)
                break;
              JavaType localJavaType = (JavaType)localHashMap2.get(str);
              if ((localJavaType != null) && (localClass.isAssignableFrom(localJavaType.getRawClass())))
                break;
              localHashMap2.put(str, paramMapperConfig.constructType(localClass));
              break;
            }
          }
        }
        return new TypeNameIdResolver(paramMapperConfig, paramJavaType, localHashMap1, localHashMap2);
      }
    }
  }

  public String idFromValue(Object paramObject)
  {
    Class localClass = paramObject.getClass();
    String str1 = localClass.getName();
    synchronized (this._typeToId)
    {
      String str2 = (String)this._typeToId.get(str1);
      if (str2 == null)
      {
        if (this._config.isAnnotationProcessingEnabled())
        {
          BasicBeanDescription localBasicBeanDescription = (BasicBeanDescription)this._config.introspectClassAnnotations(localClass);
          str2 = this._config.getAnnotationIntrospector().findTypeName(localBasicBeanDescription.getClassInfo());
        }
        if (str2 == null)
          str2 = _defaultTypeId(localClass);
        this._typeToId.put(str1, str2);
      }
      return str2;
    }
  }

  public String idFromValueAndType(Object paramObject, Class<?> paramClass)
  {
    return idFromValue(paramObject);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[').append(getClass().getName());
    localStringBuilder.append("; id-to-type=").append(this._idToType);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }

  public JavaType typeFromId(String paramString)
  {
    return (JavaType)this._idToType.get(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.TypeNameIdResolver
 * JD-Core Version:    0.6.2
 */