package org.codehaus.jackson.map;

import org.codehaus.jackson.map.deser.ValueInstantiators;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.type.JavaType;

public abstract class DeserializerFactory
{
  protected static final Deserializers[] NO_DESERIALIZERS = new Deserializers[0];

  public abstract JsonDeserializer<?> createArrayDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, ArrayType paramArrayType, BeanProperty paramBeanProperty);

  public abstract JsonDeserializer<Object> createBeanDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public abstract JsonDeserializer<?> createCollectionDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, CollectionType paramCollectionType, BeanProperty paramBeanProperty);

  public abstract JsonDeserializer<?> createCollectionLikeDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, CollectionLikeType paramCollectionLikeType, BeanProperty paramBeanProperty);

  public abstract JsonDeserializer<?> createEnumDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public KeyDeserializer createKeyDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    return null;
  }

  public abstract JsonDeserializer<?> createMapDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, MapType paramMapType, BeanProperty paramBeanProperty);

  public abstract JsonDeserializer<?> createMapLikeDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, MapLikeType paramMapLikeType, BeanProperty paramBeanProperty);

  public abstract JsonDeserializer<?> createTreeDeserializer(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public TypeDeserializer findTypeDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    return null;
  }

  public abstract DeserializerFactory.Config getConfig();

  public final DeserializerFactory withAbstractTypeResolver(AbstractTypeResolver paramAbstractTypeResolver)
  {
    return withConfig(getConfig().withAbstractTypeResolver(paramAbstractTypeResolver));
  }

  public final DeserializerFactory withAdditionalDeserializers(Deserializers paramDeserializers)
  {
    return withConfig(getConfig().withAdditionalDeserializers(paramDeserializers));
  }

  public final DeserializerFactory withAdditionalKeyDeserializers(KeyDeserializers paramKeyDeserializers)
  {
    return withConfig(getConfig().withAdditionalKeyDeserializers(paramKeyDeserializers));
  }

  public abstract DeserializerFactory withConfig(DeserializerFactory.Config paramConfig);

  public final DeserializerFactory withValueInstantiators(ValueInstantiators paramValueInstantiators)
  {
    return withConfig(getConfig().withValueInstantiators(paramValueInstantiators));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.DeserializerFactory
 * JD-Core Version:    0.6.2
 */