package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public abstract class StdArraySerializers$ArraySerializerBase<T> extends ContainerSerializerBase<T>
{
  protected final BeanProperty _property;
  protected final TypeSerializer _valueTypeSerializer;

  protected StdArraySerializers$ArraySerializerBase(Class<T> paramClass, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    super(paramClass);
    this._valueTypeSerializer = paramTypeSerializer;
    this._property = paramBeanProperty;
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
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.ArraySerializerBase
 * JD-Core Version:    0.6.2
 */