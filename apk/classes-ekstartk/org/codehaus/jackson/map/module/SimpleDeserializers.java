package org.codehaus.jackson.map.module;

import java.util.HashMap;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.Deserializers;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.type.JavaType;

public class SimpleDeserializers
  implements Deserializers
{
  protected HashMap<ClassKey, JsonDeserializer<?>> _classMappings = null;

  public <T> void addDeserializer(Class<T> paramClass, JsonDeserializer<? extends T> paramJsonDeserializer)
  {
    ClassKey localClassKey = new ClassKey(paramClass);
    if (this._classMappings == null)
      this._classMappings = new HashMap();
    this._classMappings.put(localClassKey, paramJsonDeserializer);
  }

  public JsonDeserializer<?> findArrayDeserializer(ArrayType paramArrayType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    if (this._classMappings == null)
      return null;
    return (JsonDeserializer)this._classMappings.get(new ClassKey(paramArrayType.getRawClass()));
  }

  public JsonDeserializer<?> findBeanDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
  {
    if (this._classMappings == null)
      return null;
    return (JsonDeserializer)this._classMappings.get(new ClassKey(paramJavaType.getRawClass()));
  }

  public JsonDeserializer<?> findCollectionDeserializer(CollectionType paramCollectionType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    if (this._classMappings == null)
      return null;
    return (JsonDeserializer)this._classMappings.get(new ClassKey(paramCollectionType.getRawClass()));
  }

  public JsonDeserializer<?> findCollectionLikeDeserializer(CollectionLikeType paramCollectionLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    if (this._classMappings == null)
      return null;
    return (JsonDeserializer)this._classMappings.get(new ClassKey(paramCollectionLikeType.getRawClass()));
  }

  public JsonDeserializer<?> findEnumDeserializer(Class<?> paramClass, DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
  {
    if (this._classMappings == null)
      return null;
    return (JsonDeserializer)this._classMappings.get(new ClassKey(paramClass));
  }

  public JsonDeserializer<?> findMapDeserializer(MapType paramMapType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    if (this._classMappings == null)
      return null;
    return (JsonDeserializer)this._classMappings.get(new ClassKey(paramMapType.getRawClass()));
  }

  public JsonDeserializer<?> findMapLikeDeserializer(MapLikeType paramMapLikeType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    if (this._classMappings == null)
      return null;
    return (JsonDeserializer)this._classMappings.get(new ClassKey(paramMapLikeType.getRawClass()));
  }

  public JsonDeserializer<?> findTreeNodeDeserializer(Class<? extends JsonNode> paramClass, DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty)
  {
    if (this._classMappings == null)
      return null;
    return (JsonDeserializer)this._classMappings.get(new ClassKey(paramClass));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.module.SimpleDeserializers
 * JD-Core Version:    0.6.2
 */