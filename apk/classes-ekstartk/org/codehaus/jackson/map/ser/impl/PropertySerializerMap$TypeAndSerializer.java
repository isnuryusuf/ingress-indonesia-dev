package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

final class PropertySerializerMap$TypeAndSerializer
{
  public final JsonSerializer<Object> serializer;
  public final Class<?> type;

  public PropertySerializerMap$TypeAndSerializer(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    this.type = paramClass;
    this.serializer = paramJsonSerializer;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap.TypeAndSerializer
 * JD-Core Version:    0.6.2
 */