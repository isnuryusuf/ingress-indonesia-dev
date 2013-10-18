package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

final class PropertySerializerMap$Empty extends PropertySerializerMap
{
  protected static final Empty instance = new Empty();

  public final PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    return new PropertySerializerMap.Single(paramClass, paramJsonSerializer);
  }

  public final JsonSerializer<Object> serializerFor(Class<?> paramClass)
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap.Empty
 * JD-Core Version:    0.6.2
 */