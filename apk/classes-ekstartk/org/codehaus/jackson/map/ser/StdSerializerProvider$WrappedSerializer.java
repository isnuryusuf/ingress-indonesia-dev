package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

final class StdSerializerProvider$WrappedSerializer extends JsonSerializer<Object>
{
  protected final JsonSerializer<Object> _serializer;
  protected final TypeSerializer _typeSerializer;

  public StdSerializerProvider$WrappedSerializer(TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    this._typeSerializer = paramTypeSerializer;
    this._serializer = paramJsonSerializer;
  }

  public final Class<Object> handledType()
  {
    return Object.class;
  }

  public final void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    this._serializer.serializeWithType(paramObject, paramJsonGenerator, paramSerializerProvider, this._typeSerializer);
  }

  public final void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    this._serializer.serializeWithType(paramObject, paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializerProvider.WrappedSerializer
 * JD-Core Version:    0.6.2
 */