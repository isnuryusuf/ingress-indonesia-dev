package org.codehaus.jackson.map;

import org.codehaus.jackson.io.SerializedString;
import org.codehaus.jackson.map.deser.ValueInstantiators;
import org.codehaus.jackson.type.JavaType;

public abstract class DeserializerProvider
{
  public abstract SerializedString findExpectedRootName(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType);

  public abstract KeyDeserializer findKeyDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public abstract JsonDeserializer<Object> findTypedValueDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public abstract JsonDeserializer<Object> findValueDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty);

  public abstract DeserializerProvider withAbstractTypeResolver(AbstractTypeResolver paramAbstractTypeResolver);

  public abstract DeserializerProvider withAdditionalDeserializers(Deserializers paramDeserializers);

  public abstract DeserializerProvider withAdditionalKeyDeserializers(KeyDeserializers paramKeyDeserializers);

  public abstract DeserializerProvider withValueInstantiators(ValueInstantiators paramValueInstantiators);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.DeserializerProvider
 * JD-Core Version:    0.6.2
 */