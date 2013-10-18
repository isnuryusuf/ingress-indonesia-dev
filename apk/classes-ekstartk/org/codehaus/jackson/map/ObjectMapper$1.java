package org.codehaus.jackson.map;

import org.codehaus.jackson.map.deser.ValueInstantiators;

class ObjectMapper$1
  implements Module.SetupContext
{
  ObjectMapper$1(ObjectMapper paramObjectMapper1, ObjectMapper paramObjectMapper2)
  {
  }

  public void addAbstractTypeResolver(AbstractTypeResolver paramAbstractTypeResolver)
  {
    this.val$mapper._deserializerProvider = this.val$mapper._deserializerProvider.withAbstractTypeResolver(paramAbstractTypeResolver);
  }

  public void addDeserializers(Deserializers paramDeserializers)
  {
    this.val$mapper._deserializerProvider = this.val$mapper._deserializerProvider.withAdditionalDeserializers(paramDeserializers);
  }

  public void addKeyDeserializers(KeyDeserializers paramKeyDeserializers)
  {
    this.val$mapper._deserializerProvider = this.val$mapper._deserializerProvider.withAdditionalKeyDeserializers(paramKeyDeserializers);
  }

  public void addKeySerializers(Serializers paramSerializers)
  {
    this.val$mapper._serializerFactory = this.val$mapper._serializerFactory.withAdditionalKeySerializers(paramSerializers);
  }

  public void addSerializers(Serializers paramSerializers)
  {
    this.val$mapper._serializerFactory = this.val$mapper._serializerFactory.withAdditionalSerializers(paramSerializers);
  }

  public void addValueInstantiators(ValueInstantiators paramValueInstantiators)
  {
    this.val$mapper._deserializerProvider = this.val$mapper._deserializerProvider.withValueInstantiators(paramValueInstantiators);
  }

  public void setMixInAnnotations(Class<?> paramClass1, Class<?> paramClass2)
  {
    this.val$mapper._deserializationConfig.addMixInAnnotations(paramClass1, paramClass2);
    this.val$mapper._serializationConfig.addMixInAnnotations(paramClass1, paramClass2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ObjectMapper.1
 * JD-Core Version:    0.6.2
 */