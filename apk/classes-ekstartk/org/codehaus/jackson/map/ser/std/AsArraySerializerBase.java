package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import org.codehaus.jackson.type.JavaType;

public abstract class AsArraySerializerBase<T> extends ContainerSerializerBase<T>
  implements ResolvableSerializer
{
  protected PropertySerializerMap _dynamicSerializers;
  protected JsonSerializer<Object> _elementSerializer;
  protected final JavaType _elementType;
  protected final BeanProperty _property;
  protected final boolean _staticTyping;
  protected final TypeSerializer _valueTypeSerializer;

  protected AsArraySerializerBase(Class<?> paramClass, JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    super(paramClass, false);
    this._elementType = paramJavaType;
    boolean bool1;
    if (!paramBoolean)
    {
      bool1 = false;
      if (paramJavaType != null)
      {
        boolean bool2 = paramJavaType.isFinal();
        bool1 = false;
        if (!bool2);
      }
    }
    else
    {
      bool1 = true;
    }
    this._staticTyping = bool1;
    this._valueTypeSerializer = paramTypeSerializer;
    this._property = paramBeanProperty;
    this._elementSerializer = paramJsonSerializer;
    this._dynamicSerializers = PropertySerializerMap.emptyMap();
  }

  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
  {
    PropertySerializerMap.SerializerAndMapResult localSerializerAndMapResult = paramPropertySerializerMap.findAndAddSerializer(paramClass, paramSerializerProvider, this._property);
    if (paramPropertySerializerMap != localSerializerAndMapResult.map)
      this._dynamicSerializers = localSerializerAndMapResult.map;
    return localSerializerAndMapResult.serializer;
  }

  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, JavaType paramJavaType, SerializerProvider paramSerializerProvider)
  {
    PropertySerializerMap.SerializerAndMapResult localSerializerAndMapResult = paramPropertySerializerMap.findAndAddSerializer(paramJavaType, paramSerializerProvider, this._property);
    if (paramPropertySerializerMap != localSerializerAndMapResult.map)
      this._dynamicSerializers = localSerializerAndMapResult.map;
    return localSerializerAndMapResult.serializer;
  }

  public void resolve(SerializerProvider paramSerializerProvider)
  {
    if ((this._staticTyping) && (this._elementType != null) && (this._elementSerializer == null))
      this._elementSerializer = paramSerializerProvider.findValueSerializer(this._elementType, this._property);
  }

  public final void serialize(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartArray();
    serializeContents(paramT, paramJsonGenerator, paramSerializerProvider);
    paramJsonGenerator.writeEndArray();
  }

  protected abstract void serializeContents(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider);

  public final void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForArray(paramT, paramJsonGenerator);
    serializeContents(paramT, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForArray(paramT, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.AsArraySerializerBase
 * JD-Core Version:    0.6.2
 */