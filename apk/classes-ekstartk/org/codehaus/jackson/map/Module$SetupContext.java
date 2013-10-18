package org.codehaus.jackson.map;

import org.codehaus.jackson.map.deser.ValueInstantiators;

public abstract interface Module$SetupContext
{
  public abstract void addAbstractTypeResolver(AbstractTypeResolver paramAbstractTypeResolver);

  public abstract void addDeserializers(Deserializers paramDeserializers);

  public abstract void addKeyDeserializers(KeyDeserializers paramKeyDeserializers);

  public abstract void addKeySerializers(Serializers paramSerializers);

  public abstract void addSerializers(Serializers paramSerializers);

  public abstract void addValueInstantiators(ValueInstantiators paramValueInstantiators);

  public abstract void setMixInAnnotations(Class<?> paramClass1, Class<?> paramClass2);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.Module.SetupContext
 * JD-Core Version:    0.6.2
 */