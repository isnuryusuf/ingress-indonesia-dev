package org.codehaus.jackson.map;

import org.codehaus.jackson.type.JavaType;

public abstract interface KeyDeserializers
{
  public abstract KeyDeserializer findKeyDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.KeyDeserializers
 * JD-Core Version:    0.6.2
 */