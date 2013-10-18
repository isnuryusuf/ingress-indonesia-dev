package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.type.JavaType;

public abstract class PropertySerializerMap
{
  public static PropertySerializerMap emptyMap()
  {
    return PropertySerializerMap.Empty.instance;
  }

  public final PropertySerializerMap.SerializerAndMapResult findAndAddSerializer(Class<?> paramClass, SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer(paramClass, paramBeanProperty);
    return new PropertySerializerMap.SerializerAndMapResult(localJsonSerializer, newWith(paramClass, localJsonSerializer));
  }

  public final PropertySerializerMap.SerializerAndMapResult findAndAddSerializer(JavaType paramJavaType, SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer(paramJavaType, paramBeanProperty);
    return new PropertySerializerMap.SerializerAndMapResult(localJsonSerializer, newWith(paramJavaType.getRawClass(), localJsonSerializer));
  }

  public abstract PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer);

  public abstract JsonSerializer<Object> serializerFor(Class<?> paramClass);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap
 * JD-Core Version:    0.6.2
 */