package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

final class PropertySerializerMap$Single extends PropertySerializerMap
{
  private final JsonSerializer<Object> _serializer;
  private final Class<?> _type;

  public PropertySerializerMap$Single(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    this._type = paramClass;
    this._serializer = paramJsonSerializer;
  }

  public final PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    return new PropertySerializerMap.Double(this._type, this._serializer, paramClass, paramJsonSerializer);
  }

  public final JsonSerializer<Object> serializerFor(Class<?> paramClass)
  {
    if (paramClass == this._type)
      return this._serializer;
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap.Single
 * JD-Core Version:    0.6.2
 */