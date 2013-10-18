package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;

public final class StdDeserializerProvider$WrappedDeserializer extends JsonDeserializer<Object>
{
  final JsonDeserializer<Object> _deserializer;
  final TypeDeserializer _typeDeserializer;

  public StdDeserializerProvider$WrappedDeserializer(TypeDeserializer paramTypeDeserializer, JsonDeserializer<Object> paramJsonDeserializer)
  {
    this._typeDeserializer = paramTypeDeserializer;
    this._deserializer = paramJsonDeserializer;
  }

  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return this._deserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, this._typeDeserializer);
  }

  public final Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.StdDeserializerProvider.WrappedDeserializer
 * JD-Core Version:    0.6.2
 */