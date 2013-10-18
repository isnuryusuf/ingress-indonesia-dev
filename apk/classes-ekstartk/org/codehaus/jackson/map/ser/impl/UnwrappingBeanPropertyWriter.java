package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.BeanPropertyWriter;

public class UnwrappingBeanPropertyWriter extends BeanPropertyWriter
{
  public UnwrappingBeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter)
  {
    super(paramBeanPropertyWriter);
  }

  public UnwrappingBeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter, JsonSerializer<Object> paramJsonSerializer)
  {
    super(paramBeanPropertyWriter, paramJsonSerializer);
  }

  protected JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
  {
    if (this._nonTrivialBaseType != null);
    for (JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer(paramSerializerProvider.constructSpecializedType(this._nonTrivialBaseType, paramClass), this); ; localJsonSerializer = paramSerializerProvider.findValueSerializer(paramClass, this))
    {
      if (!localJsonSerializer.isUnwrappingSerializer())
        localJsonSerializer = localJsonSerializer.unwrappingSerializer();
      this._dynamicSerializers = this._dynamicSerializers.newWith(paramClass, localJsonSerializer);
      return localJsonSerializer;
    }
  }

  public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Object localObject = get(paramObject);
    if (localObject == null);
    do
    {
      return;
      if (localObject == paramObject)
        _reportSelfReference(paramObject);
    }
    while ((this._suppressableValue != null) && (this._suppressableValue.equals(localObject)));
    JsonSerializer localJsonSerializer = this._serializer;
    if (localJsonSerializer == null)
    {
      Class localClass = localObject.getClass();
      PropertySerializerMap localPropertySerializerMap = this._dynamicSerializers;
      localJsonSerializer = localPropertySerializerMap.serializerFor(localClass);
      if (localJsonSerializer == null)
        localJsonSerializer = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
    }
    if (!localJsonSerializer.isUnwrappingSerializer())
      paramJsonGenerator.writeFieldName(this._name);
    if (this._typeSerializer == null)
    {
      localJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    localJsonSerializer.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, this._typeSerializer);
  }

  public BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if (getClass() != UnwrappingBeanPropertyWriter.class)
      throw new IllegalStateException("UnwrappingBeanPropertyWriter sub-class does not override 'withSerializer()'; needs to!");
    if (!paramJsonSerializer.isUnwrappingSerializer())
      paramJsonSerializer = paramJsonSerializer.unwrappingSerializer();
    return new UnwrappingBeanPropertyWriter(this, paramJsonSerializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.UnwrappingBeanPropertyWriter
 * JD-Core Version:    0.6.2
 */