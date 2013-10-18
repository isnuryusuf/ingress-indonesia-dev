package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonParser;

public abstract class JsonDeserializer<T>
{
  public abstract T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext);

  public T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, T paramT)
  {
    throw new UnsupportedOperationException();
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
  }

  public T getEmptyValue()
  {
    return getNullValue();
  }

  public T getNullValue()
  {
    return null;
  }

  public JsonDeserializer<T> unwrappingDeserializer()
  {
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.JsonDeserializer
 * JD-Core Version:    0.6.2
 */