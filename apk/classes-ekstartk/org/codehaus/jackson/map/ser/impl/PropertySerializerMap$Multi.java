package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

final class PropertySerializerMap$Multi extends PropertySerializerMap
{
  private final PropertySerializerMap.TypeAndSerializer[] _entries;

  public PropertySerializerMap$Multi(PropertySerializerMap.TypeAndSerializer[] paramArrayOfTypeAndSerializer)
  {
    this._entries = paramArrayOfTypeAndSerializer;
  }

  public final PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    int i = this._entries.length;
    if (i == 8)
      return this;
    PropertySerializerMap.TypeAndSerializer[] arrayOfTypeAndSerializer = new PropertySerializerMap.TypeAndSerializer[i + 1];
    System.arraycopy(this._entries, 0, arrayOfTypeAndSerializer, 0, i);
    arrayOfTypeAndSerializer[i] = new PropertySerializerMap.TypeAndSerializer(paramClass, paramJsonSerializer);
    return new Multi(arrayOfTypeAndSerializer);
  }

  public final JsonSerializer<Object> serializerFor(Class<?> paramClass)
  {
    int i = 0;
    int j = this._entries.length;
    while (i < j)
    {
      PropertySerializerMap.TypeAndSerializer localTypeAndSerializer = this._entries[i];
      if (localTypeAndSerializer.type == paramClass)
        return localTypeAndSerializer.serializer;
      i++;
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap.Multi
 * JD-Core Version:    0.6.2
 */