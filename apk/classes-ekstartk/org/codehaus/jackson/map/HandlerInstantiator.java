package org.codehaus.jackson.map;

import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;

public abstract class HandlerInstantiator
{
  public abstract JsonDeserializer<?> deserializerInstance(DeserializationConfig paramDeserializationConfig, Annotated paramAnnotated, Class<? extends JsonDeserializer<?>> paramClass);

  public abstract KeyDeserializer keyDeserializerInstance(DeserializationConfig paramDeserializationConfig, Annotated paramAnnotated, Class<? extends KeyDeserializer> paramClass);

  public abstract JsonSerializer<?> serializerInstance(SerializationConfig paramSerializationConfig, Annotated paramAnnotated, Class<? extends JsonSerializer<?>> paramClass);

  public abstract TypeIdResolver typeIdResolverInstance(MapperConfig<?> paramMapperConfig, Annotated paramAnnotated, Class<? extends TypeIdResolver> paramClass);

  public abstract TypeResolverBuilder<?> typeResolverBuilderInstance(MapperConfig<?> paramMapperConfig, Annotated paramAnnotated, Class<? extends TypeResolverBuilder<?>> paramClass);

  public ValueInstantiator valueInstantiatorInstance(MapperConfig<?> paramMapperConfig, Annotated paramAnnotated, Class<? extends ValueInstantiator> paramClass)
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.HandlerInstantiator
 * JD-Core Version:    0.6.2
 */