package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

final class PropertySerializerMap$Double extends PropertySerializerMap
{
  private final JsonSerializer<Object> _serializer1;
  private final JsonSerializer<Object> _serializer2;
  private final Class<?> _type1;
  private final Class<?> _type2;

  public PropertySerializerMap$Double(Class<?> paramClass1, JsonSerializer<Object> paramJsonSerializer1, Class<?> paramClass2, JsonSerializer<Object> paramJsonSerializer2)
  {
    this._type1 = paramClass1;
    this._serializer1 = paramJsonSerializer1;
    this._type2 = paramClass2;
    this._serializer2 = paramJsonSerializer2;
  }

  public final PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    PropertySerializerMap.TypeAndSerializer[] arrayOfTypeAndSerializer = new PropertySerializerMap.TypeAndSerializer[2];
    arrayOfTypeAndSerializer[0] = new PropertySerializerMap.TypeAndSerializer(this._type1, this._serializer1);
    arrayOfTypeAndSerializer[1] = new PropertySerializerMap.TypeAndSerializer(this._type2, this._serializer2);
    return new PropertySerializerMap.Multi(arrayOfTypeAndSerializer);
  }

  public final JsonSerializer<Object> serializerFor(Class<?> paramClass)
  {
    if (paramClass == this._type1)
      return this._serializer1;
    if (paramClass == this._type2)
      return this._serializer2;
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap.Double
 * JD-Core Version:    0.6.2
 */