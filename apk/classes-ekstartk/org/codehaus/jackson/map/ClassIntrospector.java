package org.codehaus.jackson.map;

import org.codehaus.jackson.type.JavaType;

public abstract class ClassIntrospector<T extends BeanDescription>
{
  public abstract T forClassAnnotations(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver);

  public abstract T forCreation(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver);

  public abstract T forDeserialization(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver);

  public abstract T forSerialization(SerializationConfig paramSerializationConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ClassIntrospector
 * JD-Core Version:    0.6.2
 */