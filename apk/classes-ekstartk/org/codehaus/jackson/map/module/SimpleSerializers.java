package org.codehaus.jackson.map.module;

import java.util.HashMap;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.Serializers.Base;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.type.JavaType;

public class SimpleSerializers extends Serializers.Base
{
  protected HashMap<ClassKey, JsonSerializer<?>> _classMappings = null;
  protected HashMap<ClassKey, JsonSerializer<?>> _interfaceMappings = null;

  private void _addSerializer(Class<?> paramClass, JsonSerializer<?> paramJsonSerializer)
  {
    ClassKey localClassKey = new ClassKey(paramClass);
    if (paramClass.isInterface())
    {
      if (this._interfaceMappings == null)
        this._interfaceMappings = new HashMap();
      this._interfaceMappings.put(localClassKey, paramJsonSerializer);
      return;
    }
    if (this._classMappings == null)
      this._classMappings = new HashMap();
    this._classMappings.put(localClassKey, paramJsonSerializer);
  }

  protected JsonSerializer<?> _findInterfaceMapping(Class<?> paramClass, ClassKey paramClassKey)
  {
    for (Class localClass : paramClass.getInterfaces())
    {
      paramClassKey.reset(localClass);
      JsonSerializer localJsonSerializer = (JsonSerializer)this._interfaceMappings.get(paramClassKey);
      if (localJsonSerializer != null);
      do
      {
        return localJsonSerializer;
        localJsonSerializer = _findInterfaceMapping(localClass, paramClassKey);
      }
      while (localJsonSerializer != null);
    }
    return null;
  }

  public <T> void addSerializer(Class<? extends T> paramClass, JsonSerializer<T> paramJsonSerializer)
  {
    _addSerializer(paramClass, paramJsonSerializer);
  }

  public JsonSerializer<?> findCollectionLikeSerializer(SerializationConfig paramSerializationConfig, CollectionLikeType paramCollectionLikeType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    return findSerializer(paramSerializationConfig, paramCollectionLikeType, paramBeanDescription, paramBeanProperty);
  }

  public JsonSerializer<?> findCollectionSerializer(SerializationConfig paramSerializationConfig, CollectionType paramCollectionType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    return findSerializer(paramSerializationConfig, paramCollectionType, paramBeanDescription, paramBeanProperty);
  }

  public JsonSerializer<?> findMapLikeSerializer(SerializationConfig paramSerializationConfig, MapLikeType paramMapLikeType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer1, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer2)
  {
    return findSerializer(paramSerializationConfig, paramMapLikeType, paramBeanDescription, paramBeanProperty);
  }

  public JsonSerializer<?> findMapSerializer(SerializationConfig paramSerializationConfig, MapType paramMapType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer1, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer2)
  {
    return findSerializer(paramSerializationConfig, paramMapType, paramBeanDescription, paramBeanProperty);
  }

  public JsonSerializer<?> findSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
  {
    Class localClass1 = paramJavaType.getRawClass();
    ClassKey localClassKey = new ClassKey(localClass1);
    JsonSerializer localJsonSerializer1;
    if (localClass1.isInterface())
    {
      if (this._interfaceMappings == null)
        break label125;
      localJsonSerializer1 = (JsonSerializer)this._interfaceMappings.get(localClassKey);
      if (localJsonSerializer1 == null)
        break label125;
    }
    label125: 
    do
    {
      do
      {
        return localJsonSerializer1;
        if (this._classMappings == null)
          break;
        localJsonSerializer1 = (JsonSerializer)this._classMappings.get(localClassKey);
      }
      while (localJsonSerializer1 != null);
      for (Class localClass3 = localClass1; ; localClass3 = localClass3.getSuperclass())
      {
        if (localClass3 == null)
          break label125;
        localClassKey.reset(localClass3);
        localJsonSerializer1 = (JsonSerializer)this._classMappings.get(localClassKey);
        if (localJsonSerializer1 != null)
          break;
      }
      if (this._interfaceMappings == null)
        break;
      localJsonSerializer1 = _findInterfaceMapping(localClass1, localClassKey);
    }
    while (localJsonSerializer1 != null);
    if (!localClass1.isInterface())
    {
      Class localClass2 = localClass1;
      JsonSerializer localJsonSerializer2;
      do
      {
        localClass2 = localClass2.getSuperclass();
        if (localClass2 == null)
          break;
        localJsonSerializer2 = _findInterfaceMapping(localClass2, localClassKey);
      }
      while (localJsonSerializer2 == null);
      return localJsonSerializer2;
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.module.SimpleSerializers
 * JD-Core Version:    0.6.2
 */