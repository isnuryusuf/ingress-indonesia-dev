package com.b.a.a.a.a;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.type.MapType;

public abstract class b<T> extends JsonDeserializer<T>
{
  protected final MapType a;
  protected final KeyDeserializer b;
  protected final JsonDeserializer<?> c;
  protected final TypeDeserializer d;

  protected b(MapType paramMapType, KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    this.a = paramMapType;
    this.b = paramKeyDeserializer;
    this.d = paramTypeDeserializer;
    this.c = paramJsonDeserializer;
  }

  protected abstract T a(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext);

  public T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    if (localJsonToken1 == JsonToken.START_OBJECT)
    {
      JsonToken localJsonToken2 = paramJsonParser.nextToken();
      if ((localJsonToken2 != JsonToken.FIELD_NAME) && (localJsonToken2 != JsonToken.END_OBJECT))
        throw paramDeserializationContext.mappingException(this.a.getRawClass());
    }
    else if (localJsonToken1 != JsonToken.FIELD_NAME)
    {
      throw paramDeserializationContext.mappingException(this.a.getRawClass());
    }
    return a(paramJsonParser, paramDeserializationContext);
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.b.a.a.a.a.b
 * JD-Core Version:    0.6.2
 */