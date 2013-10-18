package org.codehaus.jackson.map;

import org.codehaus.jackson.map.ser.BeanSerializerModifier;

public abstract class SerializerFactory$Config
{
  public abstract boolean hasKeySerializers();

  public abstract boolean hasSerializerModifiers();

  public abstract Iterable<Serializers> keySerializers();

  public abstract Iterable<BeanSerializerModifier> serializerModifiers();

  public abstract Iterable<Serializers> serializers();

  public abstract Config withAdditionalKeySerializers(Serializers paramSerializers);

  public abstract Config withAdditionalSerializers(Serializers paramSerializers);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.SerializerFactory.Config
 * JD-Core Version:    0.6.2
 */