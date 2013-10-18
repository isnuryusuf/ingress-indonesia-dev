package org.codehaus.jackson.map;

import org.codehaus.jackson.type.JavaType;

public abstract class SerializerFactory
{
  public abstract JsonSerializer<Object> createKeySerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public abstract JsonSerializer<Object> createSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public abstract TypeSerializer createTypeSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public abstract SerializerFactory.Config getConfig();

  public final SerializerFactory withAdditionalKeySerializers(Serializers paramSerializers)
  {
    return withConfig(getConfig().withAdditionalKeySerializers(paramSerializers));
  }

  public final SerializerFactory withAdditionalSerializers(Serializers paramSerializers)
  {
    return withConfig(getConfig().withAdditionalSerializers(paramSerializers));
  }

  public abstract SerializerFactory withConfig(SerializerFactory.Config paramConfig);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.SerializerFactory
 * JD-Core Version:    0.6.2
 */