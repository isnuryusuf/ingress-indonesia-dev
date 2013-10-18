package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.type.JavaType;

public class StdContainerSerializers
{
  public static ContainerSerializerBase<?> collectionSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    return new CollectionSerializer(paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
  }

  public static JsonSerializer<?> enumSetSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    return new EnumSetSerializer(paramJavaType, paramBeanProperty);
  }

  public static ContainerSerializerBase<?> indexedListSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    return new StdContainerSerializers.IndexedListSerializer(paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
  }

  public static ContainerSerializerBase<?> iterableSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    return new IterableSerializer(paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty);
  }

  public static ContainerSerializerBase<?> iteratorSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    return new StdContainerSerializers.IteratorSerializer(paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdContainerSerializers
 * JD-Core Version:    0.6.2
 */