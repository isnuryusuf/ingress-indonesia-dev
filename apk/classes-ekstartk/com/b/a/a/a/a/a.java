package com.b.a.a.a.a;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.type.CollectionType;

public abstract class a<T> extends JsonDeserializer<T>
{
  protected final CollectionType a;
  protected final JsonDeserializer<?> b;
  protected final TypeDeserializer c;

  protected a(CollectionType paramCollectionType, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    this.a = paramCollectionType;
    this.c = paramTypeDeserializer;
    this.b = paramJsonDeserializer;
  }

  protected abstract T a(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext);

  public T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getCurrentToken() != JsonToken.START_ARRAY)
      throw paramDeserializationContext.mappingException(this.a.getRawClass());
    return a(paramJsonParser, paramDeserializationContext);
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.b.a.a.a.a.a
 * JD-Core Version:    0.6.2
 */