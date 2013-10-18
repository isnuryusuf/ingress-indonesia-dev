package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.type.JavaType;

public class Deserializers$Base
  implements Deserializers
{
  public JsonDeserializer<?> findArrayDeserializer(ArrayType paramArrayType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    return null;
  }

  public JsonDeserializer<?> findBeanDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
  {
    return null;
  }

  public JsonDeserializer<?> findCollectionDeserializer(CollectionType paramCollectionType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    return null;
  }

  public JsonDeserializer<?> findCollectionLikeDeserializer(CollectionLikeType paramCollectionLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    return null;
  }

  public JsonDeserializer<?> findEnumDeserializer(Class<?> paramClass, DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
  {
    return null;
  }

  public JsonDeserializer<?> findMapDeserializer(MapType paramMapType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    return null;
  }

  public JsonDeserializer<?> findMapLikeDeserializer(MapLikeType paramMapLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    return null;
  }

  public JsonDeserializer<?> findTreeNodeDeserializer(Class<? extends JsonNode> paramClass, DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty)
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.Deserializers.Base
 * JD-Core Version:    0.6.2
 */