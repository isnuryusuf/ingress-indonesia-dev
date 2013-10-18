package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

public final class PropertySerializerMap$SerializerAndMapResult
{
  public final PropertySerializerMap map;
  public final JsonSerializer<Object> serializer;

  public PropertySerializerMap$SerializerAndMapResult(JsonSerializer<Object> paramJsonSerializer, PropertySerializerMap paramPropertySerializerMap)
  {
    this.serializer = paramJsonSerializer;
    this.map = paramPropertySerializerMap;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap.SerializerAndMapResult
 * JD-Core Version:    0.6.2
 */