package org.codehaus.jackson.map;

import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.type.JavaType;

public abstract interface Serializers
{
  public abstract JsonSerializer<?> findCollectionLikeSerializer(SerializationConfig paramSerializationConfig, CollectionLikeType paramCollectionLikeType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer);

  public abstract JsonSerializer<?> findCollectionSerializer(SerializationConfig paramSerializationConfig, CollectionType paramCollectionType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer);

  public abstract JsonSerializer<?> findMapLikeSerializer(SerializationConfig paramSerializationConfig, MapLikeType paramMapLikeType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer1, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer2);

  public abstract JsonSerializer<?> findMapSerializer(SerializationConfig paramSerializationConfig, MapType paramMapType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer1, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer2);

  public abstract JsonSerializer<?> findSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.Serializers
 * JD-Core Version:    0.6.2
 */